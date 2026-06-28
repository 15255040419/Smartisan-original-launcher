.class Lcom/android/settings/wifi/WifiApService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApService;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApService$1;->this$0:Lcom/android/settings/wifi/WifiApService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xe

    const-string v0, "wifi_state"

    .line 56
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApService$1;->this$0:Lcom/android/settings/wifi/WifiApService;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiApService;->access$000(Lcom/android/settings/wifi/WifiApService;I)V

    goto :goto_0

    :cond_0
    const-string v0, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApService$1;->this$0:Lcom/android/settings/wifi/WifiApService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/wifi/WifiApService;->access$102(Lcom/android/settings/wifi/WifiApService;Z)Z

    .line 63
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApService$1;->this$0:Lcom/android/settings/wifi/WifiApService;

    const/4 v0, 0x0

    const-string v1, "connected_devices_count"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiApService;->access$202(Lcom/android/settings/wifi/WifiApService;I)I

    .line 64
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApService$1;->this$0:Lcom/android/settings/wifi/WifiApService;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiApService;->access$200(Lcom/android/settings/wifi/WifiApService;)I

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApService$1;->this$0:Lcom/android/settings/wifi/WifiApService;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiApService;->access$300(Lcom/android/settings/wifi/WifiApService;)Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->removeMessages(I)V

    .line 66
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApService$1;->this$0:Lcom/android/settings/wifi/WifiApService;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApService;->access$300(Lcom/android/settings/wifi/WifiApService;)Lcom/android/settings/wifi/WifiApService$ServiceHandler;

    move-result-object p0

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method
