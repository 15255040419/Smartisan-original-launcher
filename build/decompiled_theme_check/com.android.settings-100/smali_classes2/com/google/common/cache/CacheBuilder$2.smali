.class final Lcom/google/common/cache/CacheBuilder$2;
.super Ljava/lang/Object;
.source "CacheBuilder.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Lcom/google/common/cache/AbstractCache$StatsCounter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/common/cache/AbstractCache$StatsCounter;
    .locals 0

    .line 191
    new-instance p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;

    invoke-direct {p0}, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;-><init>()V

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder$2;->get()Lcom/google/common/cache/AbstractCache$StatsCounter;

    move-result-object p0

    return-object p0
.end method
