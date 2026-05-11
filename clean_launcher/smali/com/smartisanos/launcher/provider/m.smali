.class Lcom/smartisanos/launcher/provider/m;
.super Ljava/lang/Object;
.source "LauncherCallProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/provider/LauncherCallProvider;

.field final synthetic val$controller:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/LauncherCallProvider;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/m;->this$0:Lcom/smartisanos/launcher/provider/LauncherCallProvider;

    iput-object p2, p0, Lcom/smartisanos/launcher/provider/m;->val$result:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/smartisanos/launcher/provider/m;->val$controller:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, ";"

    const-string v1, "### db thread count down."

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/m;->val$controller:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "pageIndex=-2"

    .line 5
    invoke-static {v3}, Lcom/smartisanos/launcher/data/a/l;->V(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/m;->val$result:Landroid/os/Bundle;

    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/m;->val$controller:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 12
    :try_start_2
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_6

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/m;->val$controller:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 14
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 15
    :cond_6
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :goto_2
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/m;->val$controller:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 17
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    throw v0
.end method
