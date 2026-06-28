.class Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;
.super Lcom/google/common/util/concurrent/ImmediateFuture;
.source "ImmediateFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediateFailedCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/ImmediateFuture<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/CheckedFuture<",
        "TV;TX;>;"
    }
.end annotation


# instance fields
.field private final thrown:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TX;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ImmediateFuture;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

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

    .line 155
    iget-object p0, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    throw p0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p0, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object p0, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status=FAILURE, cause=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;->thrown:Ljava/lang/Exception;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
