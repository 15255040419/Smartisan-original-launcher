.class final Lcom/google/common/collect/Iterables$6;
.super Lcom/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$numberToSkip:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;I)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    iput p2, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 865
    check-cast v0, Ljava/util/List;

    .line 866
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget p0, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 867
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 869
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 871
    iget v1, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->advance(Ljava/util/Iterator;I)I

    .line 878
    new-instance v1, Lcom/google/common/collect/Iterables$6$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Iterables$6$1;-><init>(Lcom/google/common/collect/Iterables$6;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 904
    check-cast v0, Ljava/util/List;

    .line 905
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget p0, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 906
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 908
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/Streams;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    iget p0, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    int-to-long v1, p0

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
