.class public Lcom/smartisanos/launcher/a/K;
.super Ljava/lang/Object;
.source "NumFlagWhiteList.java"


# static fields
.field private static final Kj:[Ljava/lang/String;

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 109

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/K;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/K;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "com.android.email"

    const-string v2, "com.android.vending"

    const-string v3, "com.youku.phone"

    const-string v4, "com.tencent.mm"

    const-string v5, "com.immomo.momo"

    const-string v6, "com.youdao.dict"

    const-string v7, "com.xueqiu.android"

    const-string v8, "com.sina.weibo"

    const-string v9, "com.sand.airdroid"

    const-string v10, "com.autonavi.minimap"

    const-string v11, "cn.dxy.android.aspirin"

    const-string v12, "com.alensw.PicFolder"

    const-string v13, "cn.wps.moffice_eng"

    const-string v14, "com.estrongs.android.pop"

    const-string v15, "com.airbnb.android"

    const-string v16, "com.buildcoo.beike"

    const-string v17, "com.taobao.taobao"

    const-string v18, "com.eg.android.AlipayGphone"

    const-string v19, "com.jingdong.app.mall"

    const-string v20, "com.sdu.didi.psnger"

    const-string v21, "com.tencent.mobileqq"

    const-string v22, "com.qiyi.video"

    const-string v23, "com.ubercab"

    const-string v24, "com.tencent.qqmusic"

    const-string v25, "com.dianping.v1"

    const-string v26, "com.sankuai.meituan"

    const-string v27, "com.evernote"

    const-string v28, "com.tencent.androidqqmail"

    const-string v29, "com.qzone"

    const-string v30, "com.netease.vopen"

    const-string v31, "com.pplive.androidphone"

    const-string v32, "com.smzdm.client.android"

    const-string v33, "com.suning.mobile.ebuy"

    const-string v34, "com.renren.mobile.android"

    const-string v35, "com.netease.mail"

    const-string v36, "com.linkedin.android"

    const-string v37, "com.linkedin.chitu"

    const-string v38, "com.taou.maimai"

    const-string v39, "com.wiiun.maixin"

    const-string v40, "mail139.launcher"

    const-string v41, "cn.cj.pe"

    const-string v42, "com.netease.mobimail"

    const-string v43, "com.netease.qiyemail"

    const-string v44, "com.sina.mail"

    const-string v45, "net.daum.android.solmail"

    const-string v46, "com.tencent.qqlite"

    const-string v47, "com.tencent.mobileqqi"

    const-string v48, "com.android.emailyh"

    const-string v49, "com.corp21cn.mail189"

    const-string v50, "com.sina.free.sm.pro"

    const-string v51, "com.qiduo.mail"

    const-string v52, "com.kingsoft.email"

    const-string v53, "com.huawei.dsm.mail"

    const-string v54, "com.yahoolitemail"

    const-string v55, "com.google.android.gm"

    const-string v56, "com.tencent.qqcalendar"

    const-string v57, "com.tencent.pb"

    const-string v58, "im.yixin"

    const-string v59, "com.alibaba.mobileim"

    const-string v60, "com.box.basic"

    const-string v61, "com.douban.frodo"

    const-string v62, "com.itcalf.renhe"

    const-string v63, "com.alibaba.android.babylon"

    const-string v64, "com.yy.a.liveworld"

    const-string v65, "com.corp21cn.cloudcontacts"

    const-string v66, "com.pinterest"

    const-string v67, "com.nice.main"

    const-string v68, "com.google.android.talk"

    const-string v69, "com.xinge.xinge"

    const-string v70, "com.duowan.mobile"

    const-string v71, "jp.naver.line.android"

    const-string v72, "com.p1.mobile.putong"

    const-string v73, "com.douban.shuo"

    const-string v74, "com.tencent.WBlog"

    const-string v75, "com.xiaomi.channel"

    const-string v76, "com.blueorbit.Muzzik"

    const-string v77, "com.asiainfo.android"

    const-string v78, "com.etalk"

    const-string v79, "com.teambition.teambition"

    const-string v80, "com.teambition.enterprise.android"

    const-string v81, "cn.com.fetion"

    const-string v82, "com.aol.mobile.aim"

    const-string v83, "com.baidu.tieba"

    const-string v84, "com.facebook.orca"

    const-string v85, "com.google.android.apps.blogger"

    const-string v86, "com.google.android.apps.plus"

    const-string v87, "com.hootsuite.droid.full"

    const-string v88, "com.instagram.android"

    const-string v89, "com.joelapenna.foursquared"

    const-string v90, "com.myspace.android"

    const-string v91, "com.path"

    const-string v92, "com.pica.msn"

    const-string v93, "com.skype.rover"

    const-string v94, "com.tumblr"

    const-string v95, "com.twitter.android"

    const-string v96, "com.viber.voip"

    const-string v97, "com.weico.sinaweibo"

    const-string v98, "com.whatsapp"

    const-string v99, "com.yahoo.mobile.client.android.im"

    const-string v100, "com.zhihu.android"

    const-string v101, "co.vine.android"

    const-string v102, "me.imid.fuubo"

    const-string v103, "me.papa"

    const-string v104, "com.lbt.gms"

    const-string v105, "com.alibaba.android.rimet"

    const-string v106, "com.alibaba.android.rimet.fx"

    const-string v107, "com.wemomo.bibi"

    const-string v108, "com.tencent.weread"

    .line 2
    filled-new-array/range {v1 .. v108}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/K;->Kj:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static J(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
