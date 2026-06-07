.class public interface abstract Lkotlinx/coroutines/Deferred;
.super Ljava/lang/Object;
.source "Deferred.kt"

# interfaces
.implements Lkotlinx/coroutines/Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/Job;"
    }
.end annotation


# virtual methods
.method public abstract await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getCompleted()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getCompletionExceptionOrNull()Ljava/lang/Throwable;
.end method

.method public abstract getOnAwait()Lkotlinx/coroutines/selects/SelectClause1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TT;>;"
        }
    .end annotation
.end method
