.class public abstract Le/a/w1/b;
.super Le/a/k1;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/k1;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ld/q/c/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Le/a/w1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay$a;->a(Lkotlinx/coroutines/Delay;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay$a;->a(Lkotlinx/coroutines/Delay;JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method
