.class public final Le/a/z1/m;
.super Ljava/lang/Object;
.source "WorkQueue.kt"


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Le/a/z1/i;",
            ">;"
        }
    .end annotation
.end field

.field public volatile blockingTasksInBuffer:I

.field public volatile consumerIndex:I

.field public volatile lastScheduledTask:Ljava/lang/Object;

.field public volatile producerIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Le/a/z1/m;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Le/a/z1/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Le/a/z1/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Le/a/z1/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "blockingTasksInBuffer"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Le/a/z1/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Le/a/z1/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/z1/m;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/a/z1/m;->producerIndex:I

    .line 5
    iput v0, p0, Le/a/z1/m;->consumerIndex:I

    .line 6
    iput v0, p0, Le/a/z1/m;->blockingTasksInBuffer:I

    return-void
.end method

.method public static synthetic a(Le/a/z1/m;Le/a/z1/i;ZILjava/lang/Object;)Le/a/z1/i;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/a/z1/m;->a(Le/a/z1/i;Z)Le/a/z1/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget v0, p0, Le/a/z1/m;->producerIndex:I

    iget v1, p0, Le/a/z1/m;->consumerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(Le/a/z1/m;)J
    .locals 8

    .line 6
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/z1/m;->a()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_2
    :goto_1
    iget v0, p1, Le/a/z1/m;->consumerIndex:I

    .line 8
    iget v3, p1, Le/a/z1/m;->producerIndex:I

    .line 9
    iget-object v4, p1, Le/a/z1/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_2
    if-eq v0, v3, :cond_6

    and-int/lit8 v5, v0, 0x7f

    .line 10
    iget v6, p1, Le/a/z1/m;->blockingTasksInBuffer:I

    if-nez v6, :cond_3

    goto :goto_4

    .line 11
    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/z1/i;

    if-eqz v6, :cond_5

    .line 12
    iget-object v7, v6, Le/a/z1/i;->b:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v7}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v7

    if-ne v7, v2, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    move v7, v1

    :goto_3
    if-eqz v7, :cond_5

    const/4 v7, 0x0

    .line 13
    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 14
    sget-object v0, Le/a/z1/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x2

    .line 15
    invoke-static {p0, v6, v1, p1, v7}, Le/a/z1/m;->a(Le/a/z1/m;Le/a/z1/i;ZILjava/lang/Object;)Le/a/z1/i;

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16
    :cond_6
    :goto_4
    invoke-virtual {p0, p1, v2}, Le/a/z1/m;->a(Le/a/z1/m;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Le/a/z1/m;Z)J
    .locals 7

    .line 19
    :cond_0
    iget-object v0, p1, Le/a/z1/m;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Le/a/z1/i;

    const-wide/16 v1, -0x2

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 20
    iget-object v4, v0, Le/a/z1/i;->b:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v4}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-nez v5, :cond_2

    return-wide v1

    .line 21
    :cond_2
    sget-object v1, Le/a/z1/k;->e:Le/a/z1/l;

    invoke-virtual {v1}, Le/a/z1/l;->a()J

    move-result-wide v1

    .line 22
    iget-wide v4, v0, Le/a/z1/i;->a:J

    sub-long/2addr v1, v4

    .line 23
    sget-wide v4, Le/a/z1/k;->a:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_3

    sub-long/2addr v4, v1

    return-wide v4

    .line 24
    :cond_3
    sget-object v1, Le/a/z1/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    .line 25
    invoke-static {p0, v0, v3, p1, v2}, Le/a/z1/m;->a(Le/a/z1/m;Le/a/z1/i;ZILjava/lang/Object;)Le/a/z1/i;

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_4
    return-wide v1
.end method

.method public final a(Le/a/z1/i;)Le/a/z1/i;
    .locals 2

    .line 26
    iget-object v0, p1, Le/a/z1/i;->b:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 27
    sget-object v0, Le/a/z1/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 28
    :cond_1
    invoke-virtual {p0}, Le/a/z1/m;->a()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_2

    return-object p1

    .line 29
    :cond_2
    iget v0, p0, Le/a/z1/m;->producerIndex:I

    and-int/2addr v0, v1

    .line 30
    :goto_1
    iget-object v1, p0, Le/a/z1/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 31
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 32
    :cond_3
    iget-object v1, p0, Le/a/z1/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 33
    sget-object p1, Le/a/z1/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Le/a/z1/i;Z)Le/a/z1/i;
    .locals 0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Le/a/z1/m;->a(Le/a/z1/i;)Le/a/z1/i;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object p2, Le/a/z1/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/z1/i;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Le/a/z1/m;->a(Le/a/z1/i;)Le/a/z1/i;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Le/a/z1/e;)V
    .locals 2

    .line 17
    sget-object v0, Le/a/z1/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z1/i;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Le/a/x1/l;->a(Ljava/lang/Object;)Z

    .line 18
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Le/a/z1/m;->b(Le/a/z1/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/z1/m;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/z1/m;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/a/z1/m;->a()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final b(Le/a/z1/m;)J
    .locals 4

    .line 2
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/z1/m;->a()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-virtual {p1}, Le/a/z1/m;->d()Le/a/z1/i;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 p1, 0x2

    const/4 v3, 0x0

    .line 4
    invoke-static {p0, v0, v2, p1, v3}, Le/a/z1/m;->a(Le/a/z1/m;Le/a/z1/i;ZILjava/lang/Object;)Le/a/z1/i;

    move-result-object p1

    .line 5
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_3
    const-wide/16 v0, -0x1

    return-wide v0

    .line 6
    :cond_6
    invoke-virtual {p0, p1, v2}, Le/a/z1/m;->a(Le/a/z1/m;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Le/a/z1/i;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p1, Le/a/z1/i;->b:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {p1}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 10
    sget-object p1, Le/a/z1/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    .line 11
    invoke-static {}, Le/a/e0;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ltz p1, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Le/a/z1/e;)Z
    .locals 1

    .line 7
    invoke-virtual {p0}, Le/a/z1/m;->d()Le/a/z1/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Le/a/x1/l;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Le/a/z1/i;
    .locals 2

    .line 1
    sget-object v0, Le/a/z1/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z1/i;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/a/z1/m;->d()Le/a/z1/i;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final d()Le/a/z1/i;
    .locals 5

    .line 1
    :cond_0
    iget v0, p0, Le/a/z1/m;->consumerIndex:I

    .line 2
    iget v1, p0, Le/a/z1/m;->producerIndex:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    .line 3
    sget-object v3, Le/a/z1/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/z1/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z1/i;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Le/a/z1/m;->b(Le/a/z1/i;)V

    return-object v0
.end method
