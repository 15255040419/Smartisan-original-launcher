.class Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 0

    .line 1377
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1397
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1385
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1380
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1402
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1405
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1406
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$300(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1390
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$IlCt6YHMNbjdh9aTmFntexV042I;

    invoke-direct {v1, p0}, Lcom/google/common/collect/-$$Lambda$IlCt6YHMNbjdh9aTmFntexV042I;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
