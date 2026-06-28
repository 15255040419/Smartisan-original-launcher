.class Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;
.super Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->asDescendingMapOfRanges()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TreeRangeMap<",
        "TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)V

    return-void
.end method


# virtual methods
.method entryIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    .line 494
    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    .line 495
    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 499
    new-instance v1, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$1;Ljava/util/Iterator;)V

    return-object v1
.end method
