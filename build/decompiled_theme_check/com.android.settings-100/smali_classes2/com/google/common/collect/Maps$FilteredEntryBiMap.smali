.class final Lcom/google/common/collect/Maps$FilteredEntryBiMap;
.super Lcom/google/common/collect/Maps$FilteredEntryMap;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilteredEntryBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$FilteredEntryMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final inverse:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3215
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 3216
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    .line 3217
    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->inversePredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p2

    invoke-direct {v0, p1, p2, p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;Lcom/google/common/collect/BiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/base/Predicate;Lcom/google/common/collect/BiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 3222
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 3223
    iput-object p3, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-void
.end method

.method private static inversePredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/base/Predicate<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 3206
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryBiMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap$1;-><init>(Lcom/google/common/base/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 3232
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 3233
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lcom/google/common/collect/BiMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 3248
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-object p0
.end method

.method public synthetic lambda$replaceAll$0$Maps$FilteredEntryBiMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3241
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {p2, p3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3242
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 3238
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lcom/google/common/collect/BiMap;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/-$$Lambda$Maps$FilteredEntryBiMap$OE537khb_eNPcbHxi4mO1N8eLo4;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$Maps$FilteredEntryBiMap$OE537khb_eNPcbHxi4mO1N8eLo4;-><init>(Lcom/google/common/collect/Maps$FilteredEntryBiMap;Ljava/util/function/BiFunction;)V

    .line 3239
    invoke-interface {v0, v1}, Lcom/google/common/collect/BiMap;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method unfiltered()Lcom/google/common/collect/BiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3227
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered:Ljava/util/Map;

    check-cast p0, Lcom/google/common/collect/BiMap;

    return-object p0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 0

    .line 3200
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->values()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 3253
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lcom/google/common/collect/BiMap;

    invoke-interface {p0}, Lcom/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
