.class public interface abstract Lkotlinx/coroutines/selects/SelectInstance;
.super Ljava/lang/Object;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V
.end method

.method public abstract getCompletion()Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract isSelected()Z
.end method

.method public abstract performAtomicTrySelect(Le/a/x1/b;)Ljava/lang/Object;
.end method

.method public abstract resumeSelectWithException(Ljava/lang/Throwable;)V
.end method

.method public abstract trySelect()Z
.end method

.method public abstract trySelectOther(Le/a/x1/k$b;)Ljava/lang/Object;
.end method
