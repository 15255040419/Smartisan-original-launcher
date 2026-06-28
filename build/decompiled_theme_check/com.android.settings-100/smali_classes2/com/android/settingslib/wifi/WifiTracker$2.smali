.class Lcom/android/settingslib/wifi/WifiTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 801
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 802
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 804
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 806
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 805
    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$400(Lcom/android/settingslib/wifi/WifiTracker;I)V

    goto :goto_2

    :cond_1
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 808
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 809
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1, v1}, Lcom/android/settingslib/wifi/WifiTracker;->access$502(Lcom/android/settingslib/wifi/WifiTracker;Z)Z

    .line 811
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$600(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto :goto_2

    :cond_2
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 812
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 813
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 815
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "networkInfo"

    .line 818
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 819
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    .line 820
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$600(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto :goto_2

    :cond_4
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    .line 821
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 822
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 823
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$800(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 824
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_2

    .line 814
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$600(Lcom/android/settingslib/wifi/WifiTracker;)V

    :cond_6
    :goto_2
    return-void
.end method
