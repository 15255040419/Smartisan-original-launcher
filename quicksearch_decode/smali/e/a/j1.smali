.class public final Le/a/j1;
.super Le/a/p1;
.source "Builders.common.kt"


# instance fields
.field public final d:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ld/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/a/p1;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    .line 2
    invoke-static {p2, p0, p0}, Ld/n/f/b;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    iput-object p1, p0, Le/a/j1;->d:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/j1;->d:Lkotlin/coroutines/Continuation;

    invoke-static {v0, p0}, Le/a/y1/a;->a(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    return-void
.end method
