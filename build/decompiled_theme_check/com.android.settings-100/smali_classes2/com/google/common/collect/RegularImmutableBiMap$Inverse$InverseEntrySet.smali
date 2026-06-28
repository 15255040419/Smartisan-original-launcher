.class final Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableBiMap$Inverse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InverseEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMapEntrySet<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableBiMap$Inverse;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap$Inverse;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 267
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;-><init>(Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;)V"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hashCode()I
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->access$300(Lcom/google/common/collect/RegularImmutableBiMap;)I

    move-result p0

    return p0
.end method

.method isHashCodeFast()Z
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
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 238
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 242
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    return-object p0
.end method
