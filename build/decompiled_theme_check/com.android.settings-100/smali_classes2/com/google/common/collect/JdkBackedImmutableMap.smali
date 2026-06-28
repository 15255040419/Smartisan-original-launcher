.class final Lcom/google/common/collect/JdkBackedImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "JdkBackedImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient delegateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient entries:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/common/collect/JdkBackedImmutableMap;->delegateMap:Ljava/util/Map;

    .line 55
    iput-object p2, p0, Lcom/google/common/collect/JdkBackedImmutableMap;->entries:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static create(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 41
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableMap;->makeImmutable(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    aput-object v2, p1, v1

    .line 42
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    aget-object p0, p1, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key"

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/JdkBackedImmutableMap;->conflictException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 47
    :cond_1
    new-instance v1, Lcom/google/common/collect/JdkBackedImmutableMap;

    invoke-static {p1, p0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/JdkBackedImmutableMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method static synthetic lambda$forEach$0(Ljava/util/function/BiConsumer;Ljava/util/Map$Entry;)V
    .locals 1

    .line 76
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;

    iget-object v1, p0, Lcom/google/common/collect/JdkBackedImmutableMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/google/common/collect/ImmutableMapKeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMapKeySet;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/common/collect/ImmutableMapValues;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMapValues;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p0, p0, Lcom/google/common/collect/JdkBackedImmutableMap;->entries:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Lcom/google/common/collect/-$$Lambda$JdkBackedImmutableMap$ThhB9akQzP54Zy7ZoDbOMOzR7V8;

    invoke-direct {v0, p1}, Lcom/google/common/collect/-$$Lambda$JdkBackedImmutableMap$ThhB9akQzP54Zy7ZoDbOMOzR7V8;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 65
    iget-object p0, p0, Lcom/google/common/collect/JdkBackedImmutableMap;->delegateMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/common/collect/JdkBackedImmutableMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    return p0
.end method
