.class Lcom/google/common/collect/TreeBasedTable$TreeRow;
.super Lcom/google/common/collect/StandardTable$Row;
.source "TreeBasedTable.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeBasedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TreeRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable<",
        "TR;TC;TV;>.Row;",
        "Ljava/util/SortedMap<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field final lowerBound:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeBasedTable;

.field final upperBound:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field transient wholeRow:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TC;)V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/StandardTable$Row;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    .line 181
    iput-object p3, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->lowerBound:Ljava/lang/Object;

    .line 182
    iput-object p4, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->upperBound:Ljava/lang/Object;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 184
    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 183
    :goto_1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return-void
.end method


# virtual methods
.method bridge synthetic backingRowMap()Ljava/util/Map;
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method backingRowMap()Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 261
    invoke-super {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Ljava/util/SortedMap;

    return-object p0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TC;>;"
        }
    .end annotation

    .line 194
    iget-object p0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 200
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->comparator()Ljava/util/Comparator;

    move-result-object p0

    .line 201
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method bridge synthetic computeBackingRowMap()Ljava/util/Map;
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->computeBackingRowMap()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method computeBackingRowMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->lowerBound:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->upperBound:Ljava/lang/Object;

    if-eqz p0, :cond_1

    .line 272
    invoke-interface {v0, p0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable$Row;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 232
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 218
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 219
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$TreeRow;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->lowerBound:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/common/collect/TreeBasedTable$TreeRow;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->keySet()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/google/common/collect/Maps$SortedKeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 241
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method maintainEmptyInvariant()V
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    .line 284
    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->backingRowMap:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    .line 295
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 296
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardTable$Row;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method rangeContains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->lowerBound:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->upperBound:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)",
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 212
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 213
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$TreeRow;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object p0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/common/collect/TreeBasedTable$TreeRow;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rangeContains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 225
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$TreeRow;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->upperBound:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/google/common/collect/TreeBasedTable$TreeRow;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method wholeRow()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    .line 256
    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/TreeBasedTable$TreeRow;->wholeRow:Ljava/util/SortedMap;

    return-object p0
.end method
