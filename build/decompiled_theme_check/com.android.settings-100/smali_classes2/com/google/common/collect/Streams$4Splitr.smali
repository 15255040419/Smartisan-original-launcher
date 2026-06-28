.class Lcom/google/common/collect/Streams$4Splitr;
.super Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
.source "Streams.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->mapWithIndex(Ljava/util/stream/DoubleStream;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<",
        "Ljava/util/Spliterator$OfDouble;",
        "TR;",
        "Lcom/google/common/collect/Streams$4Splitr;",
        ">;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/Spliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field holder:D

.field final synthetic val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfDouble;JLcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator$OfDouble;",
            "J)V"
        }
    .end annotation

    .line 617
    iput-object p4, p0, Lcom/google/common/collect/Streams$4Splitr;->val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;

    .line 618
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;-><init>(Ljava/util/Spliterator;J)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 623
    iput-wide p1, p0, Lcom/google/common/collect/Streams$4Splitr;->holder:D

    return-void
.end method

.method createSplit(Ljava/util/Spliterator$OfDouble;J)Lcom/google/common/collect/Streams$4Splitr;
    .locals 1

    .line 637
    new-instance v0, Lcom/google/common/collect/Streams$4Splitr;

    iget-object p0, p0, Lcom/google/common/collect/Streams$4Splitr;->val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/common/collect/Streams$4Splitr;-><init>(Ljava/util/Spliterator$OfDouble;JLcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    return-object v0
.end method

.method bridge synthetic createSplit(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    .locals 0

    .line 613
    check-cast p1, Ljava/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$4Splitr;->createSplit(Ljava/util/Spliterator$OfDouble;J)Lcom/google/common/collect/Streams$4Splitr;

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

    .line 628
    iget-object v0, p0, Lcom/google/common/collect/Streams$4Splitr;->fromSpliterator:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/google/common/collect/Streams$4Splitr;->val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;

    iget-wide v1, p0, Lcom/google/common/collect/Streams$4Splitr;->holder:D

    iget-wide v3, p0, Lcom/google/common/collect/Streams$4Splitr;->index:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/collect/Streams$4Splitr;->index:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;->apply(DJ)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
