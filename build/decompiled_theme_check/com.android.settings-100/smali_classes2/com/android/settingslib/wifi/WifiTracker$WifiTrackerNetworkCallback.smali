.class final Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiTrackerNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$1;)V
    .locals 0

    .line 854
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 856
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 863
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    :cond_0
    return-void
.end method
