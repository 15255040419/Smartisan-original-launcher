.class public interface abstract Lkotlin/coroutines/experimental/Continuation;
.super Ljava/lang/Object;
.source "Coroutines.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getContext()Lkotlin/coroutines/experimental/CoroutineContext;
.end method

.method public abstract resume(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract resumeWithException(Ljava/lang/Throwable;)V
.end method
