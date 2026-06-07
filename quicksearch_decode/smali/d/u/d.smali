.class public Ld/u/d;
.super Ljava/lang/Object;
.source "SequenceBuilder.kt"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ld/u/c<",
            "-TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ld/u/b;

    invoke-direct {v0}, Ld/u/b;-><init>()V

    .line 2
    invoke-static {p0, v0, v0}, Ld/n/f/b;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    invoke-virtual {v0, p0}, Ld/u/b;->a(Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public static final b(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ld/u/c<",
            "-TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ld/u/d$a;

    invoke-direct {v0, p0}, Ld/u/d$a;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
