.class Lcom/android/settings/wifi/WifiSettings$1;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
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

    .line 269
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 272
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 273
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSettings;->access$000(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 276
    new-instance p1, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p1, v2}, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->access$102(Lcom/android/settings/wifi/WifiSettings;Z)Z

    goto :goto_0

    .line 279
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$102(Lcom/android/settings/wifi/WifiSettings;Z)Z

    :goto_0
    return-void
.end method
