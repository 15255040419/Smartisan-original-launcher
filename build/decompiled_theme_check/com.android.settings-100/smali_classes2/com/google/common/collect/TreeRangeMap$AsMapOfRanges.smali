.class final Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;
.super Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsMapOfRanges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$IteratorBasedAbstractMap<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final entryIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeRangeMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->entryIterable:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 265
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 287
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->entryIterable:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 270
    instance-of v0, p1, Lcom/google/common/collect/Range;

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lcom/google/common/collect/Range;

    .line 272
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {p0}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object p0

    iget-object v0, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {p0, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    if-eqz p0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;->this$0:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {p0}, Lcom/google/common/collect/TreeRangeMap;->access$000(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->size()I

    move-result p0

    return p0
.end method
