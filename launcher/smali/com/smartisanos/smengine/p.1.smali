.class public Lcom/smartisanos/smengine/p;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private tE:Ljava/util/ArrayList;

.field private uE:Ljava/util/ArrayList;

.field private vE:Ljava/util/ArrayList;

.field private wE:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/p;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/p;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/p;->uE:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/p;->vE:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/p;->wE:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/smengine/p;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public La(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/n;

    .line 4
    invoke-virtual {v3}, Lcom/smartisanos/smengine/n;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 5
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/n;->ya(Z)Lcom/smartisanos/smengine/n;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/smartisanos/smengine/n;F)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p2

    float-to-long v2, v2

    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/smengine/n;->setTime(J)V

    const/4 v4, 0x0

    cmpg-float p2, p2, v4

    if-gtz p2, :cond_5

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/n;->xa(Z)V

    .line 5
    iget-object p2, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    monitor-enter p2

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/n;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ""

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/n;

    .line 9
    invoke-virtual {v3}, Lcom/smartisanos/smengine/n;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_2
    if-eqz v1, :cond_4

    .line 11
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/smartisanos/smengine/p;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    const/4 p2, 0x1

    .line 17
    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/n;->xa(Z)V

    .line 18
    new-instance p2, Lcom/smartisanos/smengine/o;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/smartisanos/smengine/o;-><init>(Lcom/smartisanos/smengine/p;Lcom/smartisanos/smengine/n;J)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    monitor-enter v0

    .line 20
    :try_start_2
    iget-object v1, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    iget-object p1, p0, Lcom/smartisanos/smengine/p;->vE:Ljava/util/ArrayList;

    monitor-enter p1

    .line 23
    :try_start_3
    iget-object p0, p0, Lcom/smartisanos/smengine/p;->vE:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 26
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 27
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public b(Lcom/smartisanos/smengine/n;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/smengine/p;->vE:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 6
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/smartisanos/smengine/p;->vE:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/smartisanos/smengine/p;->vE:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/smengine/o;

    .line 8
    invoke-static {v4}, Lcom/smartisanos/smengine/o;->a(Lcom/smartisanos/smengine/o;)Lcom/smartisanos/smengine/n;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/o;

    .line 12
    iget-object v4, p0, Lcom/smartisanos/smengine/p;->vE:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_4

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/o;

    .line 16
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 17
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public c(Lcom/smartisanos/smengine/n;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/n;F)V

    return-void
.end method

.method public ek()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/p;->uE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/p;->wE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/n;

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/smengine/n;->dk()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/smartisanos/smengine/n;->ck()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    iget-object v4, p0, Lcom/smartisanos/smengine/p;->uE:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/smengine/p;->wE:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v1

    .line 10
    :goto_2
    iget-object v3, p0, Lcom/smartisanos/smengine/p;->wE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 11
    iget-object v3, p0, Lcom/smartisanos/smengine/p;->wE:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/n;

    .line 12
    iget-object v4, p0, Lcom/smartisanos/smengine/p;->tE:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/smengine/p;->wE:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_3
    iget-object v0, p0, Lcom/smartisanos/smengine/p;->uE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/smartisanos/smengine/p;->uE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/n;

    .line 17
    invoke-virtual {v0}, Lcom/smartisanos/smengine/n;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 18
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/smartisanos/smengine/p;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event run:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/n;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/n;->run()V

    .line 20
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 21
    invoke-virtual {v0}, Lcom/smartisanos/smengine/n;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 22
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/smengine/p;->uE:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_5

    .line 23
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public update(F)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/p;->ek()V

    return-void
.end method
