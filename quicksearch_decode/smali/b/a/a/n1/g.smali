.class public Lb/a/a/n1/g;
.super Ljava/lang/Object;
.source "BatchingNamedTaskExecutor.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NamedTaskExecutor;


# instance fields
.field public final a:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/util/NamedTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/n1/g;->b:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lb/a/a/n1/g;->a:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/quicksearchbox/util/NamedTask;

    .line 2
    iget-object v2, p0, Lb/a/a/n1/g;->b:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, p0, Lb/a/a/n1/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    iget-object v3, p0, Lb/a/a/n1/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/quicksearchbox/util/NamedTask;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    array-length p1, v1

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v2, v1, v0

    .line 9
    invoke-virtual {p0, v2}, Lb/a/a/n1/g;->a(Lcom/android/quicksearchbox/util/NamedTask;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/quicksearchbox/util/NamedTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/n1/g;->a:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->execute(Lcom/android/quicksearchbox/util/NamedTask;)V

    return-void
.end method

.method public cancelPendingTasks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/n1/g;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/a/n1/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/n1/g;->cancelPendingTasks()V

    .line 2
    iget-object v0, p0, Lb/a/a/n1/g;->a:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->close()V

    return-void
.end method

.method public execute(Lcom/android/quicksearchbox/util/NamedTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/n1/g;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/a/n1/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
