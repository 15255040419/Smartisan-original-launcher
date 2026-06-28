.class Lcom/android/settings/wifi/WifiSettings$9;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->initAddNetworkButton(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$9;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 519
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 520
    new-instance v0, Landroid/content/ComponentName;

    .line 521
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportNewCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.camera.WifiScanCamera"

    goto :goto_0

    :cond_0
    const-string v1, "com.android.camera.CameraActivity"

    :goto_0
    const-string v2, "com.android.camera2"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "call_camera_with_barcode_scanning"

    .line 523
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "launch_by_wifiSettings"

    .line 524
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$9;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x2

    const/16 v1, 0xc

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    const/16 p0, 0xcb

    .line 526
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    return-void
.end method
