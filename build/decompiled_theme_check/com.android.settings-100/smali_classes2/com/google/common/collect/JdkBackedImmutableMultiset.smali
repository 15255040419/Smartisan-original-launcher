.class final Lcom/google/common/collect/JdkBackedImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "JdkBackedImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient elementSet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final entries:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final size:J


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/ImmutableList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;J)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->delegateMap:Ljava/util/Map;

    .line 59
    iput-object p2, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    .line 60
    iput-wide p3, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->size:J

    return-void
.end method

.method static create(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/common/collect/Multiset$Entry<",
            "+TE;>;>;)",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/common/collect/Multiset$Entry;

    .line 39
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/common/collect/Multiset$Entry;

    .line 40
    array-length v1, p0

    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 42
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 43
    aget-object v4, p0, v0

    .line 44
    invoke-interface {v4}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 46
    invoke-interface {v4}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    instance-of v4, v4, Lcom/google/common/collect/Multisets$ImmutableEntry;

    if-nez v4, :cond_0

    .line 49
    invoke-static {v6, v5}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v4

    aput-object v4, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Lcom/google/common/collect/JdkBackedImmutableMultiset;

    .line 53
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/common/collect/JdkBackedImmutableMultiset;-><init>(Ljava/util/Map;Lcom/google/common/collect/ImmutableList;J)V

    return-object v0
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 65
    iget-object p0, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->delegateMap:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$ElementSet;

    iget-object v1, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableMultiset$ElementSet;-><init>(Ljava/util/List;Lcom/google/common/collect/Multiset;)V

    iput-object v0, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/JdkBackedImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset$Entry;

    return-object p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method
