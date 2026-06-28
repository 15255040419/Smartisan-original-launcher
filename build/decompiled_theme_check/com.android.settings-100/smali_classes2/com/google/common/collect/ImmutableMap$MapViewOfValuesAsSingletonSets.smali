.class final Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;
.super Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapViewOfValuesAsSingletonSets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<",
        "TK;",
        "Lcom/google/common/collect/ImmutableSet<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap$1;)V
    .locals 0

    .line 800
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 815
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 810
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method entryIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 843
    new-instance v1, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;-><init>(Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 820
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 821
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 799
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 832
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result p0

    return p0
.end method

.method isHashCodeFast()Z
    .locals 0

    .line 837
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->isHashCodeFast()Z

    move-result p0

    return p0
.end method

.method isPartialView()Z
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->isPartialView()Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    .line 805
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result p0

    return p0
.end method
