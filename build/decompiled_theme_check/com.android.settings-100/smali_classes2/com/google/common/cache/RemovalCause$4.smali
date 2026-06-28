.class final enum Lcom/google/common/cache/RemovalCause$4;
.super Lcom/google/common/cache/RemovalCause;
.source "RemovalCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/RemovalCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/RemovalCause;-><init>(Ljava/lang/String;ILcom/google/common/cache/RemovalCause$1;)V

    return-void
.end method


# virtual methods
.method wasEvicted()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
