.class public final Lcom/google/common/collect/MapMakerInternalMap$p;
.super Lcom/google/common/collect/MapMakerInternalMap$l;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$l<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$o<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$p<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$o<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$p<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$l;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i()Lcom/google/common/collect/MapMakerInternalMap$l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$p;->i()Lcom/google/common/collect/MapMakerInternalMap$p;

    return-object p0
.end method

.method public i()Lcom/google/common/collect/MapMakerInternalMap$p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$p<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method
