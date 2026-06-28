.class Lcom/google/common/collect/ArrayTable$ArrayMap$2;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$ArrayMap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$ArrayMap;I)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$2;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$ArrayMap$2;->get(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method protected get(I)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 234
    iget-object p0, p0, Lcom/google/common/collect/ArrayTable$ArrayMap$2;->this$0:Lcom/google/common/collect/ArrayTable$ArrayMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$ArrayMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
