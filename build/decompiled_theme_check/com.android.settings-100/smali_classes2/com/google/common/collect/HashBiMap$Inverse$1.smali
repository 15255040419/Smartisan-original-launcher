.class Lcom/google/common/collect/HashBiMap$Inverse$1;
.super Lcom/google/common/collect/HashBiMap$Itr;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$Inverse;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap<",
        "TK;TV;>.Itr<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$Inverse;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$Itr;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method bridge synthetic output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .locals 0

    .line 656
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap$Inverse$1;->output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 659
    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/HashBiMap$Inverse$1$InverseEntry;-><init>(Lcom/google/common/collect/HashBiMap$Inverse$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    return-object v0
.end method
