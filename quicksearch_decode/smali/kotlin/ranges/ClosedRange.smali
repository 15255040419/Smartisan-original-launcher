.class public interface abstract Lkotlin/ranges/ClosedRange;
.super Ljava/lang/Object;
.source "Range.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract contains(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract getEndInclusive()Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getStart()Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method
