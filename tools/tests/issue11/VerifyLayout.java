/** Read-only ART verification before installing an acceptance APK. */
public final class VerifyLayout {
    public static void main(String[] args) throws Exception {
        for (String name : new String[] {
                "com.smartisanos.launcher.data.P",
                "com.smartisanos.launcher.data.LayoutPropertyAdapter",
                "com.smartisanos.launcher.theme.IconVisualMetrics",
                "com.smartisanos.launcher.theme.IconRasterDiagnostics"}) {
            Class.forName(name, true, VerifyLayout.class.getClassLoader()).getDeclaredMethods();
            System.out.println("ART_VERIFIED " + name);
        }
    }
}
