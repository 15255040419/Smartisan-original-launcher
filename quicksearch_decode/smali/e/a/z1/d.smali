.class public Le/a/z1/d;
.super Le/a/v0;
.source "Dispatcher.kt"


# instance fields
.field public b:Le/a/z1/a;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/v0;-><init>()V

    iput p1, p0, Le/a/z1/d;->c:I

    iput p2, p0, Le/a/z1/d;->d:I

    iput-wide p3, p0, Le/a/z1/d;->e:J

    iput-object p5, p0, Le/a/z1/d;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/a/z1/d;->a()Le/a/z1/a;

    move-result-object p1

    iput-object p1, p0, Le/a/z1/d;->b:Le/a/z1/a;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6

    .line 6
    sget-wide v3, Le/a/z1/k;->d:J

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Le/a/z1/d;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ILd/q/c/c;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 3
    sget p1, Le/a/z1/k;->b:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 4
    sget p2, Le/a/z1/k;->c:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const-string p3, "DefaultDispatcher"

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Le/a/z1/d;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)Le/a/v;
    .locals 2

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Le/a/z1/f;

    invoke-direct {v1, p0, p1, v0}, Le/a/z1/f;-><init>(Le/a/z1/d;II)V

    return-object v1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected positive parallelism level, but have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Le/a/z1/a;
    .locals 7

    .line 7
    new-instance v6, Le/a/z1/a;

    iget v1, p0, Le/a/z1/d;->c:I

    iget v2, p0, Le/a/z1/d;->d:I

    iget-wide v3, p0, Le/a/z1/d;->e:J

    iget-object v5, p0, Le/a/z1/d;->f:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/a/z1/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method

.method public final a(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Le/a/z1/d;->b:Le/a/z1/a;

    invoke-virtual {v0, p1, p2, p3}, Le/a/z1/a;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object p3, Le/a/g0;->h:Le/a/g0;

    iget-object v0, p0, Le/a/z1/d;->b:Le/a/z1/a;

    invoke-virtual {v0, p1, p2}, Le/a/z1/a;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Le/a/z1/i;

    move-result-object p1

    invoke-virtual {p3, p1}, Le/a/r0;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/z1/d;->b:Le/a/z1/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Le/a/z1/a;->a(Le/a/z1/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Le/a/g0;->h:Le/a/g0;

    invoke-virtual {v0, p1, p2}, Le/a/r0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
