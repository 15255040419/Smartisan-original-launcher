.class Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableAsList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 645
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 630
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 633
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    .line 634
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$200(Lcom/google/common/collect/ImmutableSortedMap;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedMap;->access$300(Lcom/google/common/collect/ImmutableSortedMap;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;->size()I

    move-result v0

    new-instance v1, Lcom/google/common/collect/-$$Lambda$7PoTp3aIQo7HSLflqKWOsi7MUOA;

    invoke-direct {v1, p0}, Lcom/google/common/collect/-$$Lambda$7PoTp3aIQo7HSLflqKWOsi7MUOA;-><init>(Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;)V

    const/16 p0, 0x511

    .line 639
    invoke-static {v0, p0, v1}, Lcom/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
