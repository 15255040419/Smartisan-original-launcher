.class public interface abstract Lkotlinx/coroutines/channels/ReceiveOrClosed;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract completeResumeReceive(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract getOfferResult()Ljava/lang/Object;
.end method

.method public abstract tryResumeReceive(Ljava/lang/Object;Le/a/x1/k$b;)Le/a/x1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Le/a/x1/k$b;",
            ")",
            "Le/a/x1/u;"
        }
    .end annotation
.end method
