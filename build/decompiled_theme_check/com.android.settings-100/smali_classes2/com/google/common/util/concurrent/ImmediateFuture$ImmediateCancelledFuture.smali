.class final Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmediateCancelledFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;->cancel(Z)Z

    return-void
.end method
