.class public final Le/a/z1/a$b;
.super Ljava/lang/Thread;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/z1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Le/a/z1/m;

.field public b:Le/a/z1/a$c;

.field public c:J

.field public d:J

.field public e:I

.field public f:Z

.field public final synthetic g:Le/a/z1/a;

.field public volatile indexInArray:I

.field public volatile nextParkedWorker:Ljava/lang/Object;

.field public volatile workerCtl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Le/a/z1/a$b;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Le/a/z1/a$b;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Le/a/z1/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 3
    new-instance p1, Le/a/z1/m;

    invoke-direct {p1}, Le/a/z1/m;-><init>()V

    iput-object p1, p0, Le/a/z1/a$b;->a:Le/a/z1/m;

    .line 4
    sget-object p1, Le/a/z1/a$c;->d:Le/a/z1/a$c;

    iput-object p1, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Le/a/z1/a$b;->workerCtl:I

    .line 6
    sget-object p1, Le/a/z1/a;->k:Le/a/x1/u;

    iput-object p1, p0, Le/a/z1/a$b;->nextParkedWorker:Ljava/lang/Object;

    .line 7
    sget-object p1, Ld/r/c;->b:Ld/r/c$b;

    invoke-virtual {p1}, Ld/r/c$b;->a()I

    move-result p1

    iput p1, p0, Le/a/z1/a$b;->e:I

    return-void
.end method

.method public constructor <init>(Le/a/z1/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Le/a/z1/a$b;-><init>(Le/a/z1/a;)V

    .line 9
    invoke-virtual {p0, p2}, Le/a/z1/a$b;->e(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/z1/a$b;->indexInArray:I

    return v0
.end method

.method public final a(Z)Le/a/z1/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget p1, p1, Le/a/z1/a;->d:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Le/a/z1/a$b;->d(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p0}, Le/a/z1/a$b;->e()Le/a/z1/i;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 16
    :cond_1
    iget-object v1, p0, Le/a/z1/a$b;->a:Le/a/z1/m;

    invoke-virtual {v1}, Le/a/z1/m;->c()Le/a/z1/i;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-nez p1, :cond_4

    .line 17
    invoke-virtual {p0}, Le/a/z1/a$b;->e()Le/a/z1/i;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 18
    :cond_3
    invoke-virtual {p0}, Le/a/z1/a$b;->e()Le/a/z1/i;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 19
    :cond_4
    invoke-virtual {p0, v0}, Le/a/z1/a$b;->c(Z)Le/a/z1/i;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    .line 9
    sget-object v0, Le/a/z1/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 10
    iget-object p1, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    .line 11
    sget-object v0, Le/a/z1/a$c;->e:Le/a/z1/a$c;

    if-eq p1, v0, :cond_4

    .line 12
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Le/a/z1/a$c;->b:Le/a/z1/a$c;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_3
    :goto_1
    sget-object p1, Le/a/z1/a$c;->d:Le/a/z1/a$c;

    iput-object p1, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    :cond_4
    return-void
.end method

.method public final a(Le/a/z1/i;)V
    .locals 2

    .line 20
    iget-object v0, p1, Le/a/z1/i;->b:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v0

    .line 21
    invoke-virtual {p0, v0}, Le/a/z1/a$b;->c(I)V

    .line 22
    invoke-virtual {p0, v0}, Le/a/z1/a$b;->b(I)V

    .line 23
    iget-object v1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-virtual {v1, p1}, Le/a/z1/a;->b(Le/a/z1/i;)V

    .line 24
    invoke-virtual {p0, v0}, Le/a/z1/a$b;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput-object p1, p0, Le/a/z1/a$b;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final a(Le/a/z1/a$c;)Z
    .locals 6

    .line 3
    iget-object v0, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    .line 4
    sget-object v1, Le/a/z1/a$c;->a:Le/a/z1/a$c;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    .line 6
    sget-object v3, Le/a/z1/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    .line 7
    iput-object p1, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    :cond_2
    return v1
.end method

.method public final b(Z)Le/a/z1/i;
    .locals 1

    .line 4
    invoke-virtual {p0}, Le/a/z1/a$b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Le/a/z1/a$b;->a(Z)Le/a/z1/i;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Le/a/z1/a$b;->a:Le/a/z1/m;

    invoke-virtual {p1}, Le/a/z1/m;->c()Le/a/z1/i;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object p1, p1, Le/a/z1/a;->b:Le/a/z1/e;

    invoke-virtual {p1}, Le/a/x1/l;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/z1/i;

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object p1, p1, Le/a/z1/a;->b:Le/a/z1/e;

    invoke-virtual {p1}, Le/a/x1/l;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/z1/i;

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Le/a/z1/a$b;->c(Z)Le/a/z1/i;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/z1/a$b;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p1, Le/a/z1/a$c;->b:Le/a/z1/a$c;

    invoke-virtual {p0, p1}, Le/a/z1/a$b;->a(Le/a/z1/a$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-virtual {p1}, Le/a/z1/a;->e()V

    :cond_1
    return-void
.end method

.method public final c(Z)Le/a/z1/i;
    .locals 17

    move-object/from16 v0, p0

    .line 6
    invoke-static {}, Le/a/e0;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Le/a/z1/a$b;->a:Le/a/z1/m;

    invoke-virtual {v1}, Le/a/z1/m;->b()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 7
    :cond_2
    :goto_1
    iget-object v1, v0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-static {v1}, Le/a/z1/a;->a(Le/a/z1/a;)I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v1, v4, :cond_3

    return-object v5

    .line 8
    :cond_3
    invoke-virtual {v0, v1}, Le/a/z1/a$b;->d(I)I

    move-result v4

    const-wide v6, 0x7fffffffffffffffL

    move v10, v4

    move-wide v8, v6

    move v4, v2

    :goto_2
    const-wide/16 v11, 0x0

    if-ge v4, v1, :cond_b

    add-int/2addr v10, v3

    if-le v10, v1, :cond_4

    move v10, v3

    .line 9
    :cond_4
    iget-object v13, v0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object v13, v13, Le/a/z1/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v13, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/z1/a$b;

    if-eqz v13, :cond_a

    if-eq v13, v0, :cond_a

    .line 10
    invoke-static {}, Le/a/e0;->a()Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v0, Le/a/z1/a$b;->a:Le/a/z1/m;

    invoke-virtual {v14}, Le/a/z1/m;->b()I

    move-result v14

    if-nez v14, :cond_5

    move v14, v3

    goto :goto_3

    :cond_5
    move v14, v2

    :goto_3
    if-eqz v14, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    .line 11
    iget-object v14, v0, Le/a/z1/a$b;->a:Le/a/z1/m;

    iget-object v13, v13, Le/a/z1/a$b;->a:Le/a/z1/m;

    invoke-virtual {v14, v13}, Le/a/z1/m;->a(Le/a/z1/m;)J

    move-result-wide v13

    goto :goto_5

    .line 12
    :cond_8
    iget-object v14, v0, Le/a/z1/a$b;->a:Le/a/z1/m;

    iget-object v13, v13, Le/a/z1/a$b;->a:Le/a/z1/m;

    invoke-virtual {v14, v13}, Le/a/z1/m;->b(Le/a/z1/m;)J

    move-result-wide v13

    :goto_5
    const-wide/16 v15, -0x1

    cmp-long v15, v13, v15

    if-nez v15, :cond_9

    .line 13
    iget-object v1, v0, Le/a/z1/a$b;->a:Le/a/z1/m;

    invoke-virtual {v1}, Le/a/z1/m;->c()Le/a/z1/i;

    move-result-object v1

    return-object v1

    :cond_9
    cmp-long v11, v13, v11

    if-lez v11, :cond_a

    .line 14
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    cmp-long v1, v8, v6

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move-wide v8, v11

    .line 15
    :goto_6
    iput-wide v8, v0, Le/a/z1/a$b;->d:J

    return-object v5
.end method

.method public final c(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Le/a/z1/a$b;->c:J

    .line 3
    iget-object v0, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    sget-object v1, Le/a/z1/a$c;->c:Le/a/z1/a$c;

    if-ne v0, v1, :cond_3

    .line 4
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_2
    :goto_1
    sget-object p1, Le/a/z1/a$c;->b:Le/a/z1/a$c;

    iput-object p1, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    :cond_3
    return-void
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/z1/a$b;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Le/a/z1/a;->k:Le/a/x1/u;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(I)I
    .locals 3

    .line 1
    iget v0, p0, Le/a/z1/a$b;->e:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 2
    iput v0, p0, Le/a/z1/a$b;->e:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 3
    rem-int/2addr v0, p1

    return v0
.end method

.method public final d()V
    .locals 6

    .line 4
    iget-wide v0, p0, Le/a/z1/a$b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-wide v4, v4, Le/a/z1/a;->f:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Le/a/z1/a$b;->c:J

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-wide v0, v0, Le/a/z1/a;->f:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Le/a/z1/a$b;->c:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 7
    iput-wide v2, p0, Le/a/z1/a$b;->c:J

    .line 8
    invoke-virtual {p0}, Le/a/z1/a$b;->i()V

    :cond_1
    return-void
.end method

.method public final e()Le/a/z1/i;
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Le/a/z1/a$b;->d(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object v0, v0, Le/a/z1/a;->a:Le/a/z1/e;

    invoke-virtual {v0}, Le/a/x1/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z1/i;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object v0, v0, Le/a/z1/a;->b:Le/a/z1/e;

    invoke-virtual {v0}, Le/a/x1/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z1/i;

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object v0, v0, Le/a/z1/a;->b:Le/a/z1/e;

    invoke-virtual {v0}, Le/a/x1/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z1/i;

    if-eqz v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    iget-object v0, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object v0, v0, Le/a/z1/a;->a:Le/a/z1/e;

    invoke-virtual {v0}, Le/a/x1/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z1/i;

    return-object v0
.end method

.method public final e(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object v1, v1, Le/a/z1/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Le/a/z1/a$b;->indexInArray:I

    return-void
.end method

.method public final f()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 1
    :goto_1
    iget-object v2, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-virtual {v2}, Le/a/z1/a;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    sget-object v3, Le/a/z1/a$c;->e:Le/a/z1/a$c;

    if-eq v2, v3, :cond_3

    .line 2
    iget-boolean v2, p0, Le/a/z1/a$b;->f:Z

    invoke-virtual {p0, v2}, Le/a/z1/a$b;->b(Z)Le/a/z1/i;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    iput-wide v3, p0, Le/a/z1/a$b;->d:J

    .line 4
    invoke-virtual {p0, v2}, Le/a/z1/a$b;->a(Le/a/z1/i;)V

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v0, p0, Le/a/z1/a$b;->f:Z

    .line 6
    iget-wide v5, p0, Le/a/z1/a$b;->d:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 7
    :cond_1
    sget-object v1, Le/a/z1/a$c;->c:Le/a/z1/a$c;

    invoke-virtual {p0, v1}, Le/a/z1/a$b;->a(Le/a/z1/a$c;)Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 9
    iget-wide v1, p0, Le/a/z1/a$b;->d:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 10
    iput-wide v3, p0, Le/a/z1/a$b;->d:J

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Le/a/z1/a$b;->h()V

    goto :goto_1

    .line 12
    :cond_3
    sget-object v0, Le/a/z1/a$c;->e:Le/a/z1/a$c;

    invoke-virtual {p0, v0}, Le/a/z1/a$b;->a(Le/a/z1/a$c;)Z

    return-void
.end method

.method public final g()Z
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    sget-object v1, Le/a/z1/a$c;->a:Le/a/z1/a$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    .line 3
    :cond_1
    iget-wide v6, v0, Le/a/z1/a;->controlState:J

    const-wide v4, 0x7ffffc0000000000L

    and-long/2addr v4, v6

    const/16 v1, 0x2a

    shr-long/2addr v4, v1

    long-to-int v1, v4

    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-wide v4, 0x40000000000L

    sub-long v8, v6, v4

    .line 4
    sget-object v4, Le/a/z1/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Le/a/z1/a$c;->a:Le/a/z1/a$c;

    iput-object v0, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    return v3
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/z1/a$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-virtual {v0, p0}, Le/a/z1/a;->b(Le/a/z1/a$b;)Z

    return-void

    .line 3
    :cond_0
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/z1/a$b;->a:Le/a/z1/m;

    invoke-virtual {v0}, Le/a/z1/m;->b()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Le/a/z1/a$b;->workerCtl:I

    .line 5
    :goto_2
    invoke-virtual {p0}, Le/a/z1/a$b;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-virtual {v0}, Le/a/z1/a;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    sget-object v1, Le/a/z1/a$c;->e:Le/a/z1/a$c;

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    sget-object v0, Le/a/z1/a$c;->c:Le/a/z1/a$c;

    invoke-virtual {p0, v0}, Le/a/z1/a$b;->a(Le/a/z1/a$c;)Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 9
    invoke-virtual {p0}, Le/a/z1/a$b;->d()V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object v0, v0, Le/a/z1/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-virtual {v1}, Le/a/z1/a;->isTerminated()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-static {v1}, Le/a/z1/a;->a(Le/a/z1/a;)I

    move-result v1

    iget-object v2, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget v2, v2, Le/a/z1/a;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v2, :cond_1

    monitor-exit v0

    return-void

    .line 5
    :cond_1
    :try_start_2
    sget-object v1, Le/a/z1/a$b;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 6
    :cond_2
    :try_start_3
    iget v1, p0, Le/a/z1/a$b;->indexInArray:I

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v2}, Le/a/z1/a$b;->e(I)V

    .line 8
    iget-object v3, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-virtual {v3, p0, v1, v2}, Le/a/z1/a;->a(Le/a/z1/a$b;II)V

    .line 9
    iget-object v2, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    .line 10
    sget-object v3, Le/a/z1/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_4

    .line 11
    iget-object v4, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object v4, v4, Le/a/z1/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    check-cast v4, Le/a/z1/a$b;

    .line 12
    iget-object v5, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object v5, v5, Le/a/z1/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v4, v1}, Le/a/z1/a$b;->e(I)V

    .line 14
    iget-object v5, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    invoke-virtual {v5, v4, v2, v1}, Le/a/z1/a;->a(Le/a/z1/a$b;II)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {}, Ld/q/c/d;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 16
    :cond_4
    :goto_0
    :try_start_4
    iget-object v1, p0, Le/a/z1/a$b;->g:Le/a/z1/a;

    iget-object v1, v1, Le/a/z1/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 17
    sget-object v1, Ld/j;->a:Ld/j;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    .line 18
    sget-object v0, Le/a/z1/a$c;->e:Le/a/z1/a$c;

    iput-object v0, p0, Le/a/z1/a$b;->b:Le/a/z1/a$c;

    return-void

    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0

    throw v1
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/z1/a$b;->f()V

    return-void
.end method
