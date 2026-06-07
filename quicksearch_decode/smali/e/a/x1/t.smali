.class public final Le/a/x1/t;
.super Ljava/lang/Object;
.source "StackTraceRecovery.kt"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Ld/e;->a:Ld/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "d.n.g.a.a"

    .line 2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ld/e;->a:Ld/e$a;

    invoke-static {v0}, Ld/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_0
    invoke-static {v0}, Ld/e;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    :goto_1
    check-cast v0, Ljava/lang/String;

    sput-object v0, Le/a/x1/t;->a:Ljava/lang/String;

    .line 5
    :try_start_2
    sget-object v0, Ld/e;->a:Ld/e$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "e.a.x1.t"

    .line 6
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget-object v1, Ld/e;->a:Ld/e$a;

    invoke-static {v0}, Ld/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_2
    invoke-static {v0}, Ld/e;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "kotlinx.coroutines.internal.StackTraceRecoveryKt"

    :goto_3
    check-cast v0, Ljava/lang/String;

    return-void
.end method

.method public static final a([Ljava/lang/StackTraceElement;Ljava/lang/String;)I
    .locals 3

    .line 34
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 35
    aget-object v2, p0, v1

    .line 36
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public static final a(Ljava/lang/Throwable;)Ld/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)",
            "Ld/d<",
            "TE;[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 14
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 15
    invoke-static {v5}, Le/a/x1/t;->a(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 16
    invoke-static {v0, v2}, Ld/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ld/d;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 17
    invoke-static {p0, v0}, Ld/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ld/d;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 18
    invoke-static {p0, v0}, Ld/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ld/d;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 3

    .line 23
    new-instance v0, Ljava/lang/StackTraceElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0008\u0008\u0008("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u0008"

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;TE;",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/StackTraceElement;",
            ">;)TE;"
        }
    .end annotation

    const-string v0, "Coroutine boundary"

    .line 2
    invoke-static {v0}, Le/a/x1/t;->a(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 4
    sget-object v0, Le/a/x1/t;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Le/a/x1/t;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    new-array p0, v1, [Ljava/lang/StackTraceElement;

    .line 5
    invoke-interface {p2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p1

    :cond_0
    new-instance p0, Ld/h;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 7
    aget-object v4, p0, v3

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/StackTraceElement;

    add-int v3, v0, v1

    .line 9
    aput-object p2, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p1
.end method

.method public static final synthetic a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Le/a/x1/t;->b(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/util/ArrayDeque;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
            ")",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 20
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    :goto_0
    instance-of v1, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 22
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static final a([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .line 26
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 27
    aget-object v2, p0, v1

    .line 28
    invoke-static {v2}, Le/a/x1/t;->a(Ljava/lang/StackTraceElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_3

    .line 30
    :goto_2
    aget-object v2, p0, v0

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StackTraceElement;

    invoke-static {v2, v3}, Le/a/x1/t;->a(Ljava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 33
    :cond_2
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static final a(Ljava/lang/StackTraceElement;)Z
    .locals 4

    .line 24
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u0008\u0008\u0008"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Ld/v/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/StackTraceElement;Ljava/lang/StackTraceElement;)Z
    .locals 2

    .line 25
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 11
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    .line 12
    invoke-static {v6}, Le/a/x1/t;->a(Ljava/lang/StackTraceElement;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_1
    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    :goto_2
    return-object p0
.end method

.method public static final b(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;",
            "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le/a/x1/t;->a(Ljava/lang/Throwable;)Ld/d;

    move-result-object v0

    invoke-virtual {v0}, Ld/d;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ld/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 2
    invoke-static {v1}, Le/a/x1/f;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p1}, Le/a/x1/t;->a(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/util/ArrayDeque;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p0

    :cond_1
    if-eq v1, p0, :cond_2

    .line 6
    invoke-static {v0, p1}, Le/a/x1/t;->a([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V

    .line 7
    :cond_2
    invoke-static {v1, v2, p1}, Le/a/x1/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;

    return-object v2

    :cond_3
    return-object p0
.end method
