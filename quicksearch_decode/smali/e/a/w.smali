.class public final Le/a/w;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandlerImpl.kt"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/CoroutineExceptionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Ld/u/f;->a(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Ld/u/h;->c(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/w;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Le/a/w;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 2
    :try_start_0
    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandler;->handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-static {p1, v1}, Le/a/x;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
