.class Lcom/google/common/collect/AbstractTable$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractTable;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractTable;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 203
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->valuesIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->size()I

    move-result p0

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 208
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$Values;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->valuesSpliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
