.class public Lb/d/a/b/f;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"


# instance fields
.field public final a:Lb/d/a/b/e;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb/d/a/b/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/f;->e:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lb/d/a/b/f;->f:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/d/a/b/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/d/a/b/f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/d/a/b/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/d/a/b/f;->j:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lb/d/a/b/f;->a:Lb/d/a/b/e;

    .line 9
    iget-object v0, p1, Lb/d/a/b/e;->g:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lb/d/a/b/f;->b:Ljava/util/concurrent/Executor;

    .line 10
    iget-object p1, p1, Lb/d/a/b/e;->h:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lb/d/a/b/f;->c:Ljava/util/concurrent/Executor;

    .line 11
    invoke-static {}, Lb/d/a/b/a;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lb/d/a/b/f;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lb/d/a/b/f;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lb/d/a/b/f;->d()V

    return-void
.end method

.method public static synthetic b(Lb/d/a/b/f;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/f;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic c(Lb/d/a/b/f;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/f;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 3

    .line 5
    iget-object v0, p0, Lb/d/a/b/f;->a:Lb/d/a/b/e;

    iget v1, v0, Lb/d/a/b/e;->k:I

    iget v2, v0, Lb/d/a/b/e;->l:I

    .line 6
    iget-object v0, v0, Lb/d/a/b/e;->m:Lb/d/a/b/j/g;

    .line 7
    invoke-static {v1, v2, v0}, Lb/d/a/b/a;->a(IILb/d/a/b/j/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2

    .line 11
    iget-object v0, p0, Lb/d/a/b/f;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 13
    iget-object v1, p0, Lb/d/a/b/f;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(Lb/d/a/b/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/d/a/b/f;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lb/d/a/b/f$a;

    invoke-direct {v1, p0, p1}, Lb/d/a/b/f$a;-><init>(Lb/d/a/b/f;Lb/d/a/b/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lb/d/a/b/i;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/d/a/b/f;->d()V

    .line 3
    iget-object v0, p0, Lb/d/a/b/f;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lb/d/a/b/f;->e:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lb/d/a/b/f;->e:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lb/d/a/b/f;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/f;->e:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 3
    iget-object v0, p0, Lb/d/a/b/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/f;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/f;->a:Lb/d/a/b/e;

    iget-boolean v0, v0, Lb/d/a/b/e;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/d/a/b/f;->b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/d/a/b/f;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/f;->b:Ljava/util/concurrent/Executor;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/d/a/b/f;->a:Lb/d/a/b/e;

    iget-boolean v0, v0, Lb/d/a/b/e;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/d/a/b/f;->c:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lb/d/a/b/f;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/f;->c:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
