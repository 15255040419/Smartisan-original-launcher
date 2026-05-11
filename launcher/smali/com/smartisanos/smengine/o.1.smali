.class Lcom/smartisanos/smengine/o;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mEvent:Lcom/smartisanos/smengine/n;

.field private mTime:J

.field final synthetic this$0:Lcom/smartisanos/smengine/p;


# direct methods
.method public constructor <init>(Lcom/smartisanos/smengine/p;Lcom/smartisanos/smengine/n;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/o;->this$0:Lcom/smartisanos/smengine/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/o;->mEvent:Lcom/smartisanos/smengine/n;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/smartisanos/smengine/o;->mTime:J

    .line 4
    iput-object p2, p0, Lcom/smartisanos/smengine/o;->mEvent:Lcom/smartisanos/smengine/n;

    .line 5
    iput-wide p3, p0, Lcom/smartisanos/smengine/o;->mTime:J

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/smengine/o;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/o;->mEvent:Lcom/smartisanos/smengine/n;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/o;->this$0:Lcom/smartisanos/smengine/p;

    invoke-static {v0}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/p;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/smartisanos/smengine/o;->this$0:Lcom/smartisanos/smengine/p;

    invoke-static {v4}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/p;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3
    iget-object v4, p0, Lcom/smartisanos/smengine/o;->this$0:Lcom/smartisanos/smengine/p;

    invoke-static {v4}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/p;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/smengine/n;

    .line 4
    iget-object v5, p0, Lcom/smartisanos/smengine/o;->mEvent:Lcom/smartisanos/smengine/n;

    if-ne v4, v5, :cond_0

    iget-wide v5, p0, Lcom/smartisanos/smengine/o;->mTime:J

    invoke-virtual {v4}, Lcom/smartisanos/smengine/n;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/n;->xa(Z)V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/smengine/o;->this$0:Lcom/smartisanos/smengine/p;

    invoke-static {v2}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/p;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p0, p0, Lcom/smartisanos/smengine/o;->this$0:Lcom/smartisanos/smengine/p;

    invoke-static {p0}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/p;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
