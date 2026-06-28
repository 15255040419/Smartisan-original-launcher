.class Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedMap;->createEntrySet()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 630
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;-><init>(Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 625
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 615
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 611
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 652
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    return-object p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
