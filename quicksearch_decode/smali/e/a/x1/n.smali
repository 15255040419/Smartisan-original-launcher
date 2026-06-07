.class public final Le/a/x1/n;
.super Ljava/lang/Object;
.source "MainDispatchers.kt"


# static fields
.field public static final a:Z

.field public static final b:Le/a/k1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/a/x1/n;

    invoke-direct {v0}, Le/a/x1/n;-><init>()V

    const-string v1, "kotlinx.coroutines.fast.service.loader"

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v2}, Le/a/x1/v;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Le/a/x1/n;->a:Z

    .line 3
    invoke-virtual {v0}, Le/a/x1/n;->a()Le/a/k1;

    move-result-object v0

    sput-object v0, Le/a/x1/n;->b:Le/a/k1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Le/a/k1;
    .locals 7

    .line 1
    const-class v0, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Le/a/x1/n;->a:Z

    if-eqz v2, :cond_0

    .line 2
    sget-object v0, Le/a/x1/g;->a:Le/a/x1/g;

    invoke-virtual {v0}, Le/a/x1/g;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 4
    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Ld/u/f;->a(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Ld/u/h;->c(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 11
    invoke-interface {v4}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v4

    .line 12
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 13
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 14
    invoke-interface {v6}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v6

    if-ge v4, v6, :cond_4

    move-object v3, v5

    move v4, v6

    .line 15
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 16
    :goto_1
    check-cast v3, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    if-eqz v3, :cond_5

    .line 17
    invoke-static {v3, v0}, Le/a/x1/o;->a(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Le/a/k1;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    .line 18
    invoke-static {v1, v1, v0, v1}, Le/a/x1/o;->a(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Le/a/x1/p;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v2, 0x2

    .line 19
    invoke-static {v0, v1, v2, v1}, Le/a/x1/o;->a(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Le/a/x1/p;

    move-result-object v0

    :goto_2
    return-object v0
.end method
