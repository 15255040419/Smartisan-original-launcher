.class Lcom/google/common/collect/RegularImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final HASH_FLOODING_FPP:D = 0.001

.field static final MAX_HASH_BUCKET_LENGTH:I = 0x9

.field static final MAX_LOAD_FACTOR:D = 1.0


# instance fields
.field private transient elementSet:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private final transient hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMultiset;->create(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/RegularImmutableMultiset;->EMPTY:Lcom/google/common/collect/ImmutableMultiset;

    return-void
.end method

.method private constructor <init>([Lcom/google/common/collect/Multisets$ImmutableEntry;[Lcom/google/common/collect/Multisets$ImmutableEntry;IILcom/google/common/collect/ImmutableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;[",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;II",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 132
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 133
    iput p3, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    .line 134
    iput p4, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashCode:I

    .line 135
    iput-object p5, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method static create(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 14
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

    .line 41
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 43
    new-array v2, v0, [Lcom/google/common/collect/Multisets$ImmutableEntry;

    if-nez v0, :cond_0

    .line 45
    new-instance p0, Lcom/google/common/collect/RegularImmutableMultiset;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>([Lcom/google/common/collect/Multisets$ImmutableEntry;[Lcom/google/common/collect/Multisets$ImmutableEntry;IILcom/google/common/collect/ImmutableSet;)V

    return-object p0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 47
    invoke-static {v0, v3, v4}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 50
    new-array v3, v0, [Lcom/google/common/collect/Multisets$ImmutableEntry;

    const-wide/16 v4, 0x0

    .line 55
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v6, v0

    move v7, v6

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/collect/Multiset$Entry;

    .line 56
    invoke-interface {v8}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 57
    invoke-interface {v8}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v10

    .line 58
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 59
    invoke-static {v11}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v12

    and-int/2addr v12, v1

    .line 60
    aget-object v13, v3, v12

    if-nez v13, :cond_3

    .line 63
    instance-of v13, v8, Lcom/google/common/collect/Multisets$ImmutableEntry;

    if-eqz v13, :cond_1

    instance-of v13, v8, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    move v13, v0

    :goto_1
    if-eqz v13, :cond_2

    .line 65
    check-cast v8, Lcom/google/common/collect/Multisets$ImmutableEntry;

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-direct {v8, v9, v10}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    goto :goto_2

    .line 70
    :cond_3
    new-instance v8, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;

    invoke-direct {v8, v9, v10, v13}, Lcom/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/Multisets$ImmutableEntry;)V

    :goto_2
    xor-int v9, v11, v10

    add-int/2addr v6, v9

    add-int/lit8 v9, v7, 0x1

    .line 73
    aput-object v8, v2, v7

    .line 74
    aput-object v8, v3, v12

    int-to-long v7, v10

    add-long/2addr v4, v7

    move v7, v9

    goto :goto_0

    .line 78
    :cond_4
    invoke-static {v3}, Lcom/google/common/collect/RegularImmutableMultiset;->hashFloodingDetected([Lcom/google/common/collect/Multisets$ImmutableEntry;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 79
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/JdkBackedImmutableMultiset;->create(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/google/common/collect/RegularImmutableMultiset;

    .line 81
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    const/4 v0, 0x0

    move-object v1, p0

    move v5, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>([Lcom/google/common/collect/Multisets$ImmutableEntry;[Lcom/google/common/collect/Multisets$ImmutableEntry;IILcom/google/common/collect/ImmutableSet;)V

    :goto_3
    return-object p0
.end method

.method private static hashFloodingDetected([Lcom/google/common/collect/Multisets$ImmutableEntry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 85
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 87
    aget-object v2, p0, v1

    move v3, v0

    :goto_1
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x9

    if-le v3, v5, :cond_0

    return v4

    .line 89
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/Multisets$ImmutableEntry;->nextInBucket()Lcom/google/common/collect/Multisets$ImmutableEntry;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 159
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashTable:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 164
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    .line 165
    aget-object p0, p0, v1

    :goto_0
    if-eqz p0, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ImmutableEntry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ImmutableEntry;->getCount()I

    move-result p0

    return p0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ImmutableEntry;->nextInBucket()Lcom/google/common/collect/Multisets$ImmutableEntry;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return v0
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

    .line 182
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$ElementSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableMultiset$ElementSet;-><init>(Ljava/util/List;Lcom/google/common/collect/Multiset;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

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

    .line 188
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->entries:[Lcom/google/common/collect/Multisets$ImmutableEntry;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 193
    iget p0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->hashCode:I

    return p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    .line 177
    iget p0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    return p0
.end method
