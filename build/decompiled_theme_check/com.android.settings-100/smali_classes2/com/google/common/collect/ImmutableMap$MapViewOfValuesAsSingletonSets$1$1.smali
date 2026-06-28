.class Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TK;",
        "Lcom/google/common/collect/ImmutableSet<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

.field final synthetic val$backingEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;Ljava/util/Map$Entry;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->this$2:Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 855
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/google/common/collect/ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 860
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 852
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->getValue()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method
