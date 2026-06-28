.class Lcom/google/common/collect/CompactHashMap$2;
.super Lcom/google/common/collect/CompactHashMap$Itr;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>.Itr<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 1

    .line 658
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$2;->this$0:Lcom/google/common/collect/CompactHashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap$Itr;-><init>(Lcom/google/common/collect/CompactHashMap;Lcom/google/common/collect/CompactHashMap$1;)V

    return-void
.end method


# virtual methods
.method bridge synthetic getOutput(I)Ljava/lang/Object;
    .locals 0

    .line 658
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap$2;->getOutput(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method getOutput(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 661
    new-instance v0, Lcom/google/common/collect/CompactHashMap$MapEntry;

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$2;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CompactHashMap$MapEntry;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    return-object v0
.end method
