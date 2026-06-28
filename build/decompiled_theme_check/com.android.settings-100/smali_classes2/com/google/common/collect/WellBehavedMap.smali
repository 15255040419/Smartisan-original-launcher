.class final Lcom/google/common/collect/WellBehavedMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "WellBehavedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/WellBehavedMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap;->delegate:Ljava/util/Map;

    return-void
.end method

.method static wrap(Ljava/util/Map;)Lcom/google/common/collect/WellBehavedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/WellBehavedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/common/collect/WellBehavedMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/WellBehavedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/WellBehavedMap;->delegate()Ljava/util/Map;

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

    .line 55
    iget-object p0, p0, Lcom/google/common/collect/WellBehavedMap;->delegate:Ljava/util/Map;

    return-object p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lcom/google/common/collect/WellBehavedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/WellBehavedMap$EntrySet;-><init>(Lcom/google/common/collect/WellBehavedMap;Lcom/google/common/collect/WellBehavedMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/WellBehavedMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method
