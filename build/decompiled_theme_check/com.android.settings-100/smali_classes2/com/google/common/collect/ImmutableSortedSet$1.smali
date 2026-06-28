.class Lcom/google/common/collect/ImmutableSortedSet$1;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedSet;->spliterator()Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final iterator:Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/ImmutableSortedSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedSet;JI)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet$1;->this$0:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    .line 785
    iget-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet$1;->this$0:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet$1;->iterator:Lcom/google/common/collect/UnmodifiableIterator;

    return-void
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 799
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedSet$1;->this$0:Lcom/google/common/collect/ImmutableSortedSet;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$1;->iterator:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedSet$1;->iterator:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
