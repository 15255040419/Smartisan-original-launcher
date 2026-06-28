.class Lcom/google/common/collect/Streams$1Splitr;
.super Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
.source "Streams.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->mapWithIndex(Ljava/util/stream/Stream;Lcom/google/common/collect/Streams$FunctionWithIndex;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<",
        "Ljava/util/Spliterator<",
        "TT;>;TR;",
        "Lcom/google/common/collect/Streams$1Splitr;",
        ">;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field holder:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic val$function:Lcom/google/common/collect/Streams$FunctionWithIndex;


# direct methods
.method constructor <init>(Ljava/util/Spliterator;JLcom/google/common/collect/Streams$FunctionWithIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;J)V"
        }
    .end annotation

    .line 378
    iput-object p4, p0, Lcom/google/common/collect/Streams$1Splitr;->val$function:Lcom/google/common/collect/Streams$FunctionWithIndex;

    .line 379
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;-><init>(Ljava/util/Spliterator;J)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/google/common/collect/Streams$1Splitr;->holder:Ljava/lang/Object;

    return-void
.end method

.method createSplit(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$1Splitr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;J)",
            "Lcom/google/common/collect/Streams$1Splitr;"
        }
    .end annotation

    .line 402
    new-instance v0, Lcom/google/common/collect/Streams$1Splitr;

    iget-object p0, p0, Lcom/google/common/collect/Streams$1Splitr;->val$function:Lcom/google/common/collect/Streams$FunctionWithIndex;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/common/collect/Streams$1Splitr;-><init>(Ljava/util/Spliterator;JLcom/google/common/collect/Streams$FunctionWithIndex;)V

    return-object v0
.end method

.method bridge synthetic createSplit(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    .locals 0

    .line 375
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$1Splitr;->createSplit(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$1Splitr;

    move-result-object p0

    return-object p0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/google/common/collect/Streams$1Splitr;->fromSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Streams$1Splitr;->val$function:Lcom/google/common/collect/Streams$FunctionWithIndex;

    iget-object v2, p0, Lcom/google/common/collect/Streams$1Splitr;->holder:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/common/collect/Streams$1Splitr;->index:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/collect/Streams$1Splitr;->index:J

    invoke-interface {v1, v2, v3, v4}, Lcom/google/common/collect/Streams$FunctionWithIndex;->apply(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 394
    iput-object v0, p0, Lcom/google/common/collect/Streams$1Splitr;->holder:Ljava/lang/Object;

    return p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lcom/google/common/collect/Streams$1Splitr;->holder:Ljava/lang/Object;

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
