.class Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
.super Ljava/util/AbstractMap;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap$SubRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubRangeMapAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Lcom/google/common/base/Predicate;)Z
    .locals 0

    .line 536
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->removeEntryIf(Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0
.end method

.method private removeEntryIf(Lcom/google/common/base/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;>;)Z"
        }
    .end annotation

    .line 594
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 595
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 596
    invoke-interface {p1, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 600
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 601
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    goto :goto_1

    .line 603
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 540
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

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

    .line 652
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    .line 657
    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 656
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Cut;

    .line 658
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v1, v1, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    .line 659
    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 660
    new-instance v1, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 623
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 546
    :try_start_0
    instance-of v1, p1, Lcom/google/common/collect/Range;

    if-eqz v1, :cond_3

    .line 548
    check-cast p1, Lcom/google/common/collect/Range;

    .line 549
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v1

    if-nez v1, :cond_2

    .line 555
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v1, v1, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    .line 556
    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 558
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 561
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v1, v1, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    :goto_0
    if-eqz v1, :cond_3

    .line 565
    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v3}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 566
    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lcom/google/common/collect/TreeRangeMap$SubRangeMap;)Lcom/google/common/collect/Range;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 567
    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Range<",
            "TK;>;>;"
        }
    .end annotation

    .line 608
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Map;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 578
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    check-cast p1, Lcom/google/common/collect/Range;

    .line 582
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 680
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$4;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$4;-><init>(Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Map;)V

    return-object v0
.end method
