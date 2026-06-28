.class abstract Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.super Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ImmutableArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final size:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;-><init>()V

    .line 90
    iput p1, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->size:I

    return-void
.end method

.method private isFull()Z
    .locals 1

    .line 97
    iget v0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->size:I

    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;->createKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method entryIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;-><init>(Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;)V

    return-object v0
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

    .line 119
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getKey(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method abstract getValue(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method abstract keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public size()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->size:I

    return p0
.end method
