.class Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;
.super Landroid/os/AsyncTask;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateAccessPointsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/settings/wifi/AccessPointInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 839
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/AccessPointInfo;",
            ">;"
        }
    .end annotation

    .line 842
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 844
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSettings;->access$800(Lcom/android/settings/wifi/WifiSettings;)Landroid/util/BoostFramework;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 845
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSettings;->access$800(Lcom/android/settings/wifi/WifiSettings;)Landroid/util/BoostFramework;

    move-result-object p1

    const/16 v0, 0x7d0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$900(Lcom/android/settings/wifi/WifiSettings;)[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 848
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, p1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$1000(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->access$1100(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 839
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/AccessPointInfo;",
            ">;)V"
        }
    .end annotation

    .line 854
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->access$1300(Lcom/android/settings/wifi/WifiSettings;Ljava/util/ArrayList;)V

    return-void
.end method
