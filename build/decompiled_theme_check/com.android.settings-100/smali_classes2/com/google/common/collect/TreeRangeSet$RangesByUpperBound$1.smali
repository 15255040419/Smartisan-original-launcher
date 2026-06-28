.class Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/Cut<",
        "TC;>;",
        "Lcom/google/common/collect/Range<",
        "TC;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;

.field final synthetic val$backingItr:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;Ljava/util/Iterator;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->this$0:Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->val$backingItr:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 0

    .line 384
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Cut<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 391
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->this$0:Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;->access$000(Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v2, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    .line 394
    :cond_1
    iget-object p0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
