.class public Lcom/smartisanos/smengine/b/i;
.super Ljava/lang/Object;
.source "ParticleManager.java"


# instance fields
.field private mList:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/b/g;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/b/i;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/b/i;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/b/i;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/i;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public b(Lcom/smartisanos/smengine/b/g;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/i;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/b/g;->destroy()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ea(F)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/i;->mList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/b/g;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/smengine/b/g;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/b/g;->update(F)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_3
    return-void
.end method
