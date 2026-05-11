.class Lcom/smartisanos/launcher/b/a;
.super Landroid/os/Handler;
.source "NetworkHandler.java"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/yb;->_c()I

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/launcher/b/d;->access$000()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/yb;->W(I)V

    .line 4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/b/d;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NET_THREAD_ID ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/yb;->_c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget p0, p1, Landroid/os/Message;->what:I

    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const-string v0, "context"

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const-string v1, "params"

    .line 9
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 11
    :cond_2
    invoke-static {p0, v0, v2}, Lcom/smartisanos/launcher/b/d;->a(ILandroid/content/Context;Ljava/util/List;)V

    return-void
.end method
