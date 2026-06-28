.class Lcom/google/common/collect/Maps$UnmodifiableBiMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "+TK;+TV;>;"
        }
    .end annotation
.end field

.field inverse:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final unmodifiableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;)V
    .locals 1
    .param p2    # Lcom/google/common/collect/BiMap;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap<",
            "+TK;+TV;>;",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1606
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 1607
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    .line 1608
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/BiMap;

    .line 1609
    iput-object p2, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 1599
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1614
    iget-object p0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    return-object p0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1619
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1624
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    .line 1625
    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;

    iget-object v1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/BiMap;

    .line 1626
    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/BiMap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 0

    .line 1599
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 1632
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
