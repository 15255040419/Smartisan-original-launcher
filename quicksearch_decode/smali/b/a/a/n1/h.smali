.class public abstract Lb/a/a/n1/h;
.super Ljava/lang/Object;
.source "CachedLater.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/NowOrLater<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "-TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/n1/h;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 11
    iget-object v0, p0, Lb/a/a/n1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-object v1, p0, Lb/a/a/n1/h;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lb/a/a/n1/h;->d:Z

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/n1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lb/a/a/n1/h;->b:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lb/a/a/n1/h;->d:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lb/a/a/n1/h;->c:Z

    .line 5
    iget-object v1, p0, Lb/a/a/n1/h;->e:Ljava/util/List;

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lb/a/a/n1/h;->e:Ljava/util/List;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/util/Consumer;

    .line 9
    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract b()V
.end method

.method public getLater(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "-TA;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/n1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lb/a/a/n1/h;->d:Z

    .line 3
    iget-object v2, p0, Lb/a/a/n1/h;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 4
    iget-object v3, p0, Lb/a/a/n1/h;->e:Ljava/util/List;

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lb/a/a/n1/h;->e:Ljava/util/List;

    .line 6
    :cond_0
    iget-object v3, p0, Lb/a/a/n1/h;->e:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {p1, v2}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 9
    iget-object v1, p0, Lb/a/a/n1/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_1
    iget-boolean v0, p0, Lb/a/a/n1/h;->c:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 11
    iput-boolean v2, p0, Lb/a/a/n1/h;->c:Z

    move p1, v2

    .line 12
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p0}, Lb/a/a/n1/h;->b()V

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public declared-synchronized getNow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/n1/h;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lb/a/a/n1/h;->haveNow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lb/a/a/n1/h;->b:Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 4
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getNow() called when haveNow() is false"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public haveNow()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/n1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lb/a/a/n1/h;->d:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
