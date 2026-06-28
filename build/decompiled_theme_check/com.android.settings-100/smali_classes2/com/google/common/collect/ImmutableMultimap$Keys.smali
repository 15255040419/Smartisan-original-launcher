.class Lcom/google/common/collect/ImmutableMultimap$Keys;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 627
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 632
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 633
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 638
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    .line 622
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Keys;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 648
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 649
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public size()I
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->size()I

    move-result p0

    return p0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 660
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$KeysSerializedForm;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultimap$KeysSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method
