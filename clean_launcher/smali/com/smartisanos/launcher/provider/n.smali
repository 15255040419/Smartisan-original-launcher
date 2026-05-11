.class Lcom/smartisanos/launcher/provider/n;
.super Lcom/smartisanos/smengine/n;
.source "LauncherCallProvider.java"


# instance fields
.field final synthetic ZD:I

.field final synthetic this$0:Lcom/smartisanos/launcher/provider/LauncherCallProvider;

.field final synthetic val$controller:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/LauncherCallProvider;IILandroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/n;->this$0:Lcom/smartisanos/launcher/provider/LauncherCallProvider;

    iput p3, p0, Lcom/smartisanos/launcher/provider/n;->ZD:I

    iput-object p4, p0, Lcom/smartisanos/launcher/provider/n;->val$result:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/smartisanos/launcher/provider/n;->val$controller:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "### db thread count down."

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/n;->run()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/launcher/provider/n;->ZD:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Eb;->xa(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/provider/n;->val$result:Landroid/os/Bundle;

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/n;->val$controller:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/n;->val$controller:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 9
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 10
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :goto_2
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/n;->val$controller:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    throw v1
.end method
