.class public interface abstract Lkotlinx/coroutines/flow/MutableStateFlow;
.super Ljava/lang/Object;
.source "StateFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/StateFlow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/StateFlow<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
