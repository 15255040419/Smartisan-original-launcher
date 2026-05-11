.class Lcom/smartisanos/launcher/data/n;
.super Landroid/os/Handler;
.source "DatabaseHandler.java"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p0

    const-string v0, "]"

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/yb;->Xc()I

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$000()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/yb;->T(I)V

    .line 4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB_THREAD_ID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/yb;->Xc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 8
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    :cond_1
    if-eqz p1, :cond_5

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 11
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage execute action ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 13
    invoke-static {p0, p1, v1}, Lcom/smartisanos/launcher/data/A;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/List;)V

    .line 14
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->eaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    if-ne p0, v0, :cond_4

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$300()V

    goto :goto_0

    .line 16
    :cond_4
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/smartisanos/launcher/data/A;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 18
    :cond_5
    :goto_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "remove illegal task, task is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
