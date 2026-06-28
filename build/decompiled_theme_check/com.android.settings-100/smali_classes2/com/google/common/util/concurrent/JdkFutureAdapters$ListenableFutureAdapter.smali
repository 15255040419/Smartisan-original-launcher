.class Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;
.super Lcom/google/common/util/concurrent/ForwardingFuture;
.source "JdkFutureAdapters.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/JdkFutureAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenableFutureAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingFuture<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final defaultAdapterExecutor:Ljava/util/concurrent/Executor;

.field private static final threadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final adapterExecutor:Ljava/util/concurrent/Executor;

.field private final delegate:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final executionList:Lcom/google/common/util/concurrent/ExecutionList;

.field private final hasListeners:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 99
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    const-string v1, "ListenableFutureAdapter-thread-%d"

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 104
    sget-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 105
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->defaultAdapterExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)V"
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->defaultAdapterExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;-><init>()V

    .line 110
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionList;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->hasListeners:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->delegate:Ljava/util/concurrent/Future;

    .line 125
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->adapterExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)Ljava/util/concurrent/Future;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->delegate:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)Lcom/google/common/util/concurrent/ExecutionList;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    return-object p0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ExecutionList;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 139
    iget-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->hasListeners:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->delegate:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->executionList:Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ExecutionList;->execute()V

    return-void

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->adapterExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;

    invoke-direct {p2, p0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;-><init>(Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->delegate()Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method protected delegate()Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->delegate:Ljava/util/concurrent/Future;

    return-object p0
.end method
