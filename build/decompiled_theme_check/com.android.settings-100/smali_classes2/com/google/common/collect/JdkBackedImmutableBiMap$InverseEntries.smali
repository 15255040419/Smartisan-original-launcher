.class final Lcom/google/common/collect/JdkBackedImmutableBiMap$InverseEntries;
.super Lcom/google/common/collect/ImmutableList;
.source "JdkBackedImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/JdkBackedImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InverseEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/JdkBackedImmutableBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/JdkBackedImmutableBiMap;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/common/collect/JdkBackedImmutableBiMap$InverseEntries;->this$0:Lcom/google/common/collect/JdkBackedImmutableBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/JdkBackedImmutableBiMap;Lcom/google/common/collect/JdkBackedImmutableBiMap$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/common/collect/JdkBackedImmutableBiMap$InverseEntries;-><init>(Lcom/google/common/collect/JdkBackedImmutableBiMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/common/collect/JdkBackedImmutableBiMap$InverseEntries;->get(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/google/common/collect/JdkBackedImmutableBiMap$InverseEntries;->this$0:Lcom/google/common/collect/JdkBackedImmutableBiMap;

    invoke-static {p0}, Lcom/google/common/collect/JdkBackedImmutableBiMap;->access$100(Lcom/google/common/collect/JdkBackedImmutableBiMap;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

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

    .line 98
    iget-object p0, p0, Lcom/google/common/collect/JdkBackedImmutableBiMap$InverseEntries;->this$0:Lcom/google/common/collect/JdkBackedImmutableBiMap;

    invoke-static {p0}, Lcom/google/common/collect/JdkBackedImmutableBiMap;->access$100(Lcom/google/common/collect/JdkBackedImmutableBiMap;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    return p0
.end method
