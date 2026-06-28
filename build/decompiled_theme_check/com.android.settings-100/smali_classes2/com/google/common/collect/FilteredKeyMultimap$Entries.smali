.class Lcom/google/common/collect/FilteredKeyMultimap$Entries;
.super Lcom/google/common/collect/ForwardingCollection;
.source "FilteredKeyMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/FilteredKeyMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/FilteredKeyMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredKeyMultimap;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/google/common/collect/FilteredKeyMultimap$Entries;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyMultimap$Entries;->delegate()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap$Entries;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/FilteredKeyMultimap$Entries;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->entryPredicate()Lcom/google/common/base/Predicate;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 194
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Ljava/util/Map$Entry;

    .line 196
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap$Entries;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap$Entries;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    .line 198
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object p0, p0, Lcom/google/common/collect/FilteredKeyMultimap$Entries;->this$0:Lcom/google/common/collect/FilteredKeyMultimap;

    iget-object p0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
