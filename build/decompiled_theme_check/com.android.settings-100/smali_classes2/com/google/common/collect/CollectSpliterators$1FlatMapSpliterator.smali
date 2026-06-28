.class Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CollectSpliterators;->flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlatMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field characteristics:I

.field estimatedSize:J

.field final from:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TF;>;"
        }
    .end annotation
.end field

.field prefix:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic val$function:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;IJLjava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TF;>;IJ)V"
        }
    .end annotation

    .line 218
    iput-object p6, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->val$function:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 220
    iput-object p2, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->from:Ljava/util/Spliterator;

    .line 221
    iput p3, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->characteristics:I

    .line 222
    iput-wide p4, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    return-void
.end method

.method static synthetic lambda$forEachRemaining$1(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    .line 248
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Spliterator;

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    .line 286
    iget p0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->characteristics:I

    return p0
.end method

.method public estimateSize()J
    .locals 5

    .line 278
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 279
    iget-wide v1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    .line 281
    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->from:Ljava/util/Spliterator;

    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->val$function:Ljava/util/function/Function;

    new-instance v2, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$y1Ta6VRj4q0UJu7kvSoNFFb1DXA;

    invoke-direct {v2, v1, p1}, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$y1Ta6VRj4q0UJu7kvSoNFFb1DXA;-><init>(Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    const-wide/16 v0, 0x0

    .line 249
    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    return-void
.end method

.method public synthetic lambda$tryAdvance$0$CollectSpliterators$1FlatMapSpliterator(Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    .line 236
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Spliterator;

    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 230
    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 236
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->from:Ljava/util/Spliterator;

    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->val$function:Ljava/util/function/Function;

    new-instance v2, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$Y6vbhgzT4ECtbUzJzTDlcS3iSn4;

    invoke-direct {v2, p0, v1}, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1FlatMapSpliterator$Y6vbhgzT4ECtbUzJzTDlcS3iSn4;-><init>(Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;Ljava/util/function/Function;)V

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->from:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    .line 256
    iget v1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->characteristics:I

    and-int/lit8 v4, v1, -0x41

    .line 257
    invoke-virtual {p0}, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimateSize()J

    move-result-wide v1

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    const-wide/16 v5, 0x2

    .line 259
    div-long/2addr v1, v5

    .line 260
    iget-wide v5, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    sub-long/2addr v5, v1

    iput-wide v5, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->estimatedSize:J

    .line 261
    iput v4, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->characteristics:I

    :cond_0
    move-wide v5, v1

    .line 263
    new-instance v8, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;

    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    iget-object v7, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->val$function:Ljava/util/function/Function;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;IJLjava/util/function/Function;)V

    .line 265
    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    return-object v8

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v1, :cond_2

    .line 269
    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    return-object v1

    :cond_2
    return-object v0
.end method
