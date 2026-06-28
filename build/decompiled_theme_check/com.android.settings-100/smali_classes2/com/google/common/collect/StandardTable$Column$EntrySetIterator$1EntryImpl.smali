.class Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->computeNext()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->this$2:Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 542
    iget-object p0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->this$2:Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1EntryImpl;->this$2:Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
