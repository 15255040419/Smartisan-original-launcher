.class public Ld/u/f;
.super Ld/u/e;
.source "Sequences.kt"


# direct methods
.method public static final a(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$asSequence"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ld/u/f$a;

    invoke-direct {v0, p0}, Ld/u/f$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Ld/u/f;->a(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$constrainOnce"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p0, Ld/u/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ld/u/a;

    invoke-direct {v0, p0}, Ld/u/a;-><init>(Lkotlin/sequences/Sequence;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
