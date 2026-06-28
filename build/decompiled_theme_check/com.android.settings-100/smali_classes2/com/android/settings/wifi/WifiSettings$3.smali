.class Lcom/android/settings/wifi/WifiSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;-><init>()V
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

    .line 311
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action.intent.smartisanos.wifi_authorization_start"

    .line 316
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/android/settings/activate/ActivateService;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    const-string v0, "action.intent.smartisanos.wifi_authorization_success"

    .line 319
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 320
    sget-boolean p2, Lcom/android/settings/Utils;->ACTIVATE_MODE:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceSetupComplete(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 321
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$3;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;I)V

    :cond_1
    :goto_0
    return-void
.end method
