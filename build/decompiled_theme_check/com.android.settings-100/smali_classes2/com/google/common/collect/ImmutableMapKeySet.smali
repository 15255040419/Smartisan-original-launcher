.class final Lcom/google/common/collect/ImmutableMapKeySet;
.super Lcom/google/common/collect/IndexedImmutableSet;
.source "ImmutableMapKeySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/IndexedImmutableSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final map:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/google/common/collect/IndexedImmutableSet;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic lambda$forEach$0(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 71
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 60
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableMapKeySet$MvtUaElxjjTXTntL-Q1EOeUN7L4;

    invoke-direct {v0, p1}, Lcom/google/common/collect/-$$Lambda$ImmutableMapKeySet$MvtUaElxjjTXTntL-Q1EOeUN7L4;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TK;>;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->keyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMapKeySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result p0

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->keySpliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 82
    new-instance v0, Lcom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapKeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMapKeySet$KeySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
