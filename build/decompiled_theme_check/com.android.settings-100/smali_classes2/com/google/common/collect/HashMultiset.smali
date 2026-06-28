.class public final Lcom/google/common/collect/HashMultiset;
.super Lcom/google/common/collect/AbstractMapBasedMultiset;
.source "HashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMapBasedMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/HashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/google/common/collect/HashMultiset;

    invoke-direct {v0}, Lcom/google/common/collect/HashMultiset;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/google/common/collect/HashMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashMultiset;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/HashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 60
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->inferDistinctElements(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashMultiset;->create(I)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 61
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 86
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 87
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/HashMultiset;->setBackingMap(Ljava/util/Map;)V

    .line 88
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 80
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic forEachEntry(Ljava/util/function/ObjIntConsumer;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->forEachEntry(Ljava/util/function/ObjIntConsumer;)V

    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;II)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic size()I
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->size()I

    move-result p0

    return p0
.end method
