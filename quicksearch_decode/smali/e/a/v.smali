.class public abstract Le/a/v;
.super Ld/n/a;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lkotlin/coroutines/ContinuationInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/v$a;
    }
.end annotation


# static fields
.field public static final a:Le/a/v$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/v$a;-><init>(Ld/q/c/c;)V

    sput-object v0, Le/a/v;->a:Le/a/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$b;

    invoke-direct {p0, v0}, Ld/n/a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
.end method

.method public a(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/ContinuationInterceptor$a;->a(Lkotlin/coroutines/ContinuationInterceptor;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public final interceptContinuation(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/i0;

    invoke-direct {v0, p0, p1}, Le/a/i0;-><init>(Le/a/v;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/ContinuationInterceptor$a;->b(Lkotlin/coroutines/ContinuationInterceptor;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public releaseInterceptedContinuation(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    check-cast p1, Le/a/i0;

    invoke-virtual {p1}, Le/a/i0;->c()Le/a/h;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/h;->d()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<*>"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Le/a/f0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Le/a/f0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
