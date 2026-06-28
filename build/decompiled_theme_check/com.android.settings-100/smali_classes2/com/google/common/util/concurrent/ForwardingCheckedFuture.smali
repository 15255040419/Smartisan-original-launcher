.class public abstract Lcom/google/common/util/concurrent/ForwardingCheckedFuture;
.super Lcom/google/common/util/concurrent/ForwardingListenableFuture;
.source "ForwardingCheckedFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingListenableFuture<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/CheckedFuture<",
        "TV;TX;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingListenableFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/util/concurrent/CheckedFuture;->checkedGet()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^",
            "Ljava/util/concurrent/TimeoutException;",
            "^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/CheckedFuture;->checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected abstract delegate()Lcom/google/common/util/concurrent/CheckedFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object p0

    return-object p0
.end method
