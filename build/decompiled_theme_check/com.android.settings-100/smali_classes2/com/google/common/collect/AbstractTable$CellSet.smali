.class Lcom/google/common/collect/AbstractTable$CellSet;
.super Ljava/util/AbstractSet;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractTable;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 131
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 133
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 136
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 135
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->cellIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 143
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 144
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 145
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 148
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 147
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->safeRemove(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public size()I
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

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
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 165
    iget-object p0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractTable;->cellSpliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
