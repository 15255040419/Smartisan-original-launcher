.class final Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMapEntry<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field private final range:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut<",
            "TK;>;",
            "Lcom/google/common/collect/Cut<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 71
    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lcom/google/common/collect/Range;

    .line 76
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public getKey()Lcom/google/common/collect/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lcom/google/common/collect/Range;

    return-object p0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method getLowerBound()Lcom/google/common/collect/Cut;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Cut<",
            "TK;>;"
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lcom/google/common/collect/Range;

    iget-object p0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    return-object p0
.end method

.method getUpperBound()Lcom/google/common/collect/Cut;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Cut<",
            "TK;>;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->range:Lcom/google/common/collect/Range;

    iget-object p0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->value:Ljava/lang/Object;

    return-object p0
.end method
