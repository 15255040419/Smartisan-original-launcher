.class Lcom/android/settingslib/wifi/WifiStatusTracker$1;
.super Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
.source "WifiStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/os/Handler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public networkCacheUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$000(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    .line 50
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->access$100(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
