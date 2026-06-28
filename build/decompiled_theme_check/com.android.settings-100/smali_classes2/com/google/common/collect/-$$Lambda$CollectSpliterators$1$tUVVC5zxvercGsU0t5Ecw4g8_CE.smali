.class public final synthetic Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1$tUVVC5zxvercGsU0t5Ecw4g8_CE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;

.field private final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1$tUVVC5zxvercGsU0t5Ecw4g8_CE;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1$tUVVC5zxvercGsU0t5Ecw4g8_CE;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1$tUVVC5zxvercGsU0t5Ecw4g8_CE;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1$tUVVC5zxvercGsU0t5Ecw4g8_CE;->f$1:Ljava/util/function/Function;

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1;->lambda$tryAdvance$0(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method
