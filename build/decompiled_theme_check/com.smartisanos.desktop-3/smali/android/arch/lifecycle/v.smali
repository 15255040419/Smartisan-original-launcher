.class public abstract Landroid/arch/lifecycle/v;
.super Ljava/lang/Object;
.source "LiveData.java"


# static fields
.field private static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field private mActiveCount:I

.field private volatile mData:Ljava/lang/Object;

.field private final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroid/arch/core/b/i;

.field private volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/v;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/v;->mDataLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/arch/core/b/i;

    invoke-direct {v0}, Landroid/arch/core/b/i;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/v;->mObservers:Landroid/arch/core/b/i;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/arch/lifecycle/v;->mActiveCount:I

    .line 5
    sget-object v0, Landroid/arch/lifecycle/v;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/v;->mData:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Landroid/arch/lifecycle/v;->mPendingData:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/arch/lifecycle/v;->mVersion:I

    .line 8
    new-instance v0, Landroid/arch/lifecycle/r;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/r;-><init>(Landroid/arch/lifecycle/v;)V

    iput-object v0, p0, Landroid/arch/lifecycle/v;->mPostValueRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/v;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/lifecycle/v;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/v;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/lifecycle/v;->mPendingData:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Landroid/arch/lifecycle/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/arch/lifecycle/v;->mPendingData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroid/arch/lifecycle/v;->NOT_SET:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/arch/lifecycle/v;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/arch/lifecycle/v;->mActiveCount:I

    return p0
.end method

.method static synthetic access$302(Landroid/arch/lifecycle/v;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/arch/lifecycle/v;->mActiveCount:I

    return p1
.end method

.method static synthetic access$400(Landroid/arch/lifecycle/v;Landroid/arch/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/v;->dispatchingValue(Landroid/arch/lifecycle/u;)V

    return-void
.end method

.method private static assertMainThread(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/arch/core/a/c;->getInstance()Landroid/arch/core/a/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/core/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private considerNotify(Landroid/arch/lifecycle/u;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Landroid/arch/lifecycle/u;->mActive:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/arch/lifecycle/u;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    .line 3
    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/u;->d(Z)V

    return-void

    .line 4
    :cond_1
    iget v0, p1, Landroid/arch/lifecycle/u;->Ba:I

    iget v1, p0, Landroid/arch/lifecycle/v;->mVersion:I

    if-lt v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    iput v1, p1, Landroid/arch/lifecycle/u;->Ba:I

    .line 6
    iget-object p1, p1, Landroid/arch/lifecycle/u;->mObserver:Landroid/arch/lifecycle/y;

    iget-object p0, p0, Landroid/arch/lifecycle/v;->mData:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroid/arch/lifecycle/y;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchingValue(Landroid/arch/lifecycle/u;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/arch/lifecycle/v;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/arch/lifecycle/v;->mDispatchInvalidated:Z

    return-void

    .line 3
    :cond_0
    iput-boolean v1, p0, Landroid/arch/lifecycle/v;->mDispatchingValue:Z

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/arch/lifecycle/v;->mDispatchInvalidated:Z

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/v;->considerNotify(Landroid/arch/lifecycle/u;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Landroid/arch/lifecycle/v;->mObservers:Landroid/arch/core/b/i;

    .line 7
    invoke-virtual {v1}, Landroid/arch/core/b/i;->k()Landroid/arch/core/b/f;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/u;

    invoke-direct {p0, v2}, Landroid/arch/lifecycle/v;->considerNotify(Landroid/arch/lifecycle/u;)V

    .line 9
    iget-boolean v2, p0, Landroid/arch/lifecycle/v;->mDispatchInvalidated:Z

    if-eqz v2, :cond_3

    .line 10
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroid/arch/lifecycle/v;->mDispatchInvalidated:Z

    if-nez v1, :cond_1

    .line 11
    iput-boolean v0, p0, Landroid/arch/lifecycle/v;->mDispatchingValue:Z

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/arch/lifecycle/v;->mData:Ljava/lang/Object;

    .line 2
    sget-object v0, Landroid/arch/lifecycle/v;->NOT_SET:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/arch/lifecycle/v;->mVersion:I

    return p0
.end method

.method public hasActiveObservers()Z
    .locals 0

    .line 1
    iget p0, p0, Landroid/arch/lifecycle/v;->mActiveCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasObservers()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/lifecycle/v;->mObservers:Landroid/arch/core/b/i;

    invoke-virtual {p0}, Landroid/arch/core/b/i;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public observe(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/y;)V
    .locals 2

    const-string v0, "observe"

    .line 1
    invoke-static {v0}, Landroid/arch/lifecycle/v;->assertMainThread(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/arch/lifecycle/l;->getLifecycle()Landroid/arch/lifecycle/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/j;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/arch/lifecycle/t;

    invoke-direct {v0, p0, p1, p2}, Landroid/arch/lifecycle/t;-><init>(Landroid/arch/lifecycle/v;Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/y;)V

    .line 4
    iget-object p0, p0, Landroid/arch/lifecycle/v;->mObservers:Landroid/arch/core/b/i;

    invoke-virtual {p0, p2, v0}, Landroid/arch/core/b/i;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/arch/lifecycle/u;

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/u;->g(Landroid/arch/lifecycle/l;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-interface {p1}, Landroid/arch/lifecycle/l;->getLifecycle()Landroid/arch/lifecycle/j;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/j;->a(Landroid/arch/lifecycle/k;)V

    return-void
.end method

.method public observeForever(Landroid/arch/lifecycle/y;)V
    .locals 1

    const-string v0, "observeForever"

    .line 1
    invoke-static {v0}, Landroid/arch/lifecycle/v;->assertMainThread(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/arch/lifecycle/s;

    invoke-direct {v0, p0, p1}, Landroid/arch/lifecycle/s;-><init>(Landroid/arch/lifecycle/v;Landroid/arch/lifecycle/y;)V

    .line 3
    iget-object p0, p0, Landroid/arch/lifecycle/v;->mObservers:Landroid/arch/core/b/i;

    invoke-virtual {p0, p1, v0}, Landroid/arch/core/b/i;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/arch/lifecycle/u;

    if-eqz p0, :cond_1

    .line 4
    instance-of p1, p0, Landroid/arch/lifecycle/t;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    return-void

    :cond_2
    const/4 p0, 0x1

    .line 6
    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/u;->d(Z)V

    return-void
.end method

.method protected onActive()V
    .locals 0

    return-void
.end method

.method protected onInactive()V
    .locals 0

    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/v;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/arch/lifecycle/v;->mPendingData:Ljava/lang/Object;

    sget-object v2, Landroid/arch/lifecycle/v;->NOT_SET:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Landroid/arch/lifecycle/v;->mPendingData:Ljava/lang/Object;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Landroid/arch/core/a/c;->getInstance()Landroid/arch/core/a/c;

    move-result-object p1

    iget-object p0, p0, Landroid/arch/lifecycle/v;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/arch/core/a/c;->b(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeObserver(Landroid/arch/lifecycle/y;)V
    .locals 1

    const-string v0, "removeObserver"

    .line 1
    invoke-static {v0}, Landroid/arch/lifecycle/v;->assertMainThread(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Landroid/arch/lifecycle/v;->mObservers:Landroid/arch/core/b/i;

    invoke-virtual {p0, p1}, Landroid/arch/core/b/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/arch/lifecycle/u;

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/arch/lifecycle/u;->m()V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/u;->d(Z)V

    return-void
.end method

.method public removeObservers(Landroid/arch/lifecycle/l;)V
    .locals 3

    const-string v0, "removeObservers"

    .line 1
    invoke-static {v0}, Landroid/arch/lifecycle/v;->assertMainThread(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/arch/lifecycle/v;->mObservers:Landroid/arch/core/b/i;

    invoke-virtual {v0}, Landroid/arch/core/b/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/u;

    invoke-virtual {v2, p1}, Landroid/arch/lifecycle/u;->g(Landroid/arch/lifecycle/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/y;

    invoke-virtual {p0, v1}, Landroid/arch/lifecycle/v;->removeObserver(Landroid/arch/lifecycle/y;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    .line 1
    invoke-static {v0}, Landroid/arch/lifecycle/v;->assertMainThread(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroid/arch/lifecycle/v;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/v;->mVersion:I

    .line 3
    iput-object p1, p0, Landroid/arch/lifecycle/v;->mData:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/v;->dispatchingValue(Landroid/arch/lifecycle/u;)V

    return-void
.end method
