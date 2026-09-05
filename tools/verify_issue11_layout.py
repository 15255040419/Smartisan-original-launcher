#!/usr/bin/env python3
"""Run the real Java layout adapter against asset fixtures, not a Python reimplementation.

This verifies geometry only. It does not claim Android resource-selection or screenshot QA.
Generated JVM stubs/classes and CSV evidence are confined to build/issue11/host-tests.
"""
import argparse
import csv
import re
import subprocess
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
JAVA_ROOT = ROOT / 'launcher/tools/java'
ADAPTER = 'com/smartisanos/launcher/data/LayoutPropertyAdapter.java'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--jdk', type=Path, required=True)
    parser.add_argument('--before-apk', type=Path)
    parser.add_argument('--after-apk', type=Path)
    args = parser.parse_args()
    out = ROOT / 'build/issue11/host-tests'
    out.mkdir(parents=True, exist_ok=True)
    fields = re.findall(r'^\.field public (\w+):([IF])$',
                       (ROOT / 'launcher/smali/com/smartisanos/launcher/data/LayoutProperty.smali')
                       .read_text(encoding='utf-8'), re.M)
    old = subprocess.check_output(['git', 'show', 'HEAD:launcher/tools/java/' + ADAPTER],
                                  cwd=ROOT).decode('utf-8')
    old = old.replace('LayoutPropertyAdapter', 'LegacyLayoutPropertyAdapter')
    sources = {
        'android/view/View.java': 'package android.view; public class View {'
            'public int getWidth(){return 0;} public int getHeight(){return 0;} }',
        'com/smartisanos/launcher/data/LegacyLayoutPropertyAdapter.java': old,
        'com/smartisanos/launcher/data/LayoutProperty.java':
            'package com.smartisanos.launcher.data; public class LayoutProperty {\n' +
            '\n'.join('public %s %s;' % ('int' if kind == 'I' else 'float', name)
                      for name, kind in fields) + '\n}',
        'com/smartisanos/launcher/data/Constants.java':
            'package com.smartisanos.launcher.data; public class Constants {'
            ' public static int window_width=1080, window_height=1920; }',
        'android/util/Log.java': '''package android.util;
public class Log {
 public static int i(String t,String m){return 0;}
 public static int w(String t,String m){throw new AssertionError(t+":"+m);}
 public static int w(String t,String m,Throwable e){throw new AssertionError(t+":"+m,e);}
}''',
        'android/content/res/Resources.java': '''package android.content.res;
public class Resources {
 public static String root;
 public AssetManager getAssets(){return new AssetManager();}
}''',
        'android/content/res/AssetManager.java': '''package android.content.res;
public class AssetManager {
 public java.io.InputStream open(String p)throws java.io.IOException{
  return new java.io.FileInputStream(Resources.root+"/launcher/assets/"+p);
 }
}''',
        'com/smartisanos/launcher/data/P.java': '''package com.smartisanos.launcher.data;
import java.util.*; import android.content.res.Resources;
public class P {
 public static Map<String,Integer> b(Resources r,String path)throws Exception{
  Map<String,Integer> m=new HashMap<>();
  try(java.io.InputStream in=r.getAssets().open(path)){
   org.w3c.dom.NodeList nodes=javax.xml.parsers.DocumentBuilderFactory.newInstance()
    .newDocumentBuilder().parse(in).getDocumentElement().getChildNodes();
   for(int i=0;i<nodes.getLength();i++){
    org.w3c.dom.Node n=nodes.item(i);
    if(n instanceof org.w3c.dom.Element && n.getNodeName().equals("integer"))
     m.put(((org.w3c.dom.Element)n).getAttribute("name"),Integer.parseInt(n.getTextContent().trim()));
   }
  } return m;
 }
}''',
        'LayoutMatrix.java': '''import com.smartisanos.launcher.data.*;
import android.content.res.Resources; import java.lang.reflect.*; import java.util.*;
public class LayoutMatrix {
 static LayoutProperty read(Resources r,String dir,int mode,String suffix)throws Exception{
  Map<String,Integer> m=P.b(r,dir+"/MODE_"+mode+"/layout.xml");
  LayoutProperty p=new LayoutProperty();
  for(Field f:LayoutProperty.class.getFields()){
   String key=f.getName(); if(suffix!=null && m.containsKey(key+suffix))key+=suffix;
   if(m.containsKey(key)){
    if(f.getType()==int.class)f.setInt(p,m.get(key));else f.setFloat(p,m.get(key));
   }
  }return p;
 }
 static boolean local(String n){return n.equals("name_off_set_y") || n.equals("icon_offset_y")
  || n.equals("icon_offset_y_without_app_name");}
 static boolean placement(String n,String s){return n.equals("dock_height") || n.equals("cell_height_dock")
  || ("_trans".equals(s) && Arrays.asList("cell_height","page_height","page_view_margin_top",
  "page_view_margin_bottom").contains(n));}
 static void require(boolean b,String m){if(!b)throw new AssertionError(m);}
 public static void main(String[] args)throws Exception{
  Resources.root=args[0]; Resources r=new Resources(); int cases=0, frozen=0, folders=0;
  System.out.println("profile,width,height,mode,theme,userPercent,nameOriginal,nameOld,nameNew,iconOriginal,iconOld,iconNew");
  for(String profile:new String[]{"values-xxhdpi","2160x1080_480dpi","2242x1080","2340x1080"}){
   String dir="layout/portrait/"+profile; Map<String,Integer> global=P.b(r,dir+"/global.xml");
   for(int h:new int[]{1920,2160,2242,2340,2400,2424}){
    Constants.window_height=h;
    for(int width:new int[]{1080,1260,1440}){
    Constants.window_width=width;
    for(int mode:new int[]{12,20,64}) for(String theme:new String[]{"white","black","transparent"})
     for(int percent:new int[]{50,100,150}){
      String suffix=theme.equals("transparent")?"_trans":null;
      LayoutProperty original=read(r,dir,mode,suffix), old=read(r,dir,mode,suffix), now=read(r,dir,mode,suffix);
      LegacyLayoutPropertyAdapter.adapt(old,suffix); LayoutPropertyAdapter.adapt(now,suffix,r,dir);
      for(Field f:LayoutProperty.class.getFields()){
       String n=f.getName(); float actual=((Number)f.get(now)).floatValue();
       if(local(n))require(actual==Math.round(((Number)f.get(original)).floatValue()*width/global.get("window_width")),n+" local "+width);
       else if(placement(n,suffix)){
        float expected=((Number)f.get(original)).floatValue()*h/global.get("window_height");
        require(Math.abs(actual-expected)<0.001,n+" placement "+actual+" != "+expected);
       }else {require(f.get(now).equals(f.get(old)),profile+" "+h+" "+n+" frozen changed");frozen++;}
      }
      // User scaling is downstream. Both adapters must supply identical artwork/texture inputs.
      require(now.icon_size_origin*percent==old.icon_size_origin*percent,"user artwork");
      require(now.icon_size_with_shadow*percent==old.icon_size_with_shadow*percent,"user texture");
      System.out.println(profile+","+width+","+h+","+mode+","+theme+","+percent+","+original.name_off_set_y+","+
       old.name_off_set_y+","+now.name_off_set_y+","+original.icon_offset_y+","+old.icon_offset_y+","+now.icon_offset_y);
      cases++;
     }
    LayoutProperty oldFolder=read(r,dir,9,"_folder"),newFolder=read(r,dir,9,"_folder");
    LegacyLayoutPropertyAdapter.adapt(oldFolder,"_folder");
    LayoutPropertyAdapter.adapt(newFolder,"_folder",r,dir);
    for(Field f:LayoutProperty.class.getFields())require(f.get(oldFolder).equals(f.get(newFolder)),"folder "+f.getName());
    folders++;
    }
   }
  }
  System.err.println("PASS geometryCases="+cases+" frozenFieldChecks="+frozen+" folderCases="+folders+
    " visualMatrix=NOT_RUN remoteAcceptance=PENDING");
 }
}'''
    }
    paths = []
    for relative, content in sources.items():
        path = out / relative
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(content, encoding='utf-8')
        paths.append(str(path))
    subprocess.run([str(args.jdk / 'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(out),
                    str(JAVA_ROOT / ADAPTER), *paths], check=True)
    result = subprocess.run([str(args.jdk / 'bin/java.exe'), '-cp', str(out),
                             'LayoutMatrix', str(ROOT)], capture_output=True, text=True)
    (out / 'geometry_matrix.csv').write_text(result.stdout, encoding='utf-8')
    print(result.stderr.strip())
    if result.returncode:
        raise SystemExit(result.returncode)
    rows = list(csv.DictReader(result.stdout.splitlines()))
    assert len(rows) == 1944
    print('Evidence:', out / 'geometry_matrix.csv')
    if args.before_apk and args.after_apk:
        with zipfile.ZipFile(args.before_apk) as before, zipfile.ZipFile(args.after_apk) as after:
            # Embedded resource APKs are rebuilt independently and contain ZIP timestamps.
            excluded = {'assets/issue11-layout-acceptance.txt',
                        'assets/settings_maintained/maintained-settings-res.apk',
                        'assets/quicksearch_original/original-quicksearch-res.apk'}
            def frozen(name):
                return (name.startswith(('assets/', 'lib/')) or name == 'resources.arsc') and name not in excluded
            names = {n for n in before.namelist() if frozen(n)}
            assert names == {n for n in after.namelist() if frozen(n)}, 'frozen APK inventory changed'
            for name in names:
                assert before.read(name) == after.read(name), 'frozen APK content changed: ' + name
            print('PASS frozenApkEntries=' + str(len(names)))


if __name__ == '__main__':
    main()
