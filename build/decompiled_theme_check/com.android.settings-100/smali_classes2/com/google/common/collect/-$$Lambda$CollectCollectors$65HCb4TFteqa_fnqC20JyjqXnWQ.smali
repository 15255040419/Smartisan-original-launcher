.class public final synthetic Lcom/google/common/collect/-$$Lambda$CollectCollectors$65HCb4TFteqa_fnqC20JyjqXnWQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Function;

.field private final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$65HCb4TFteqa_fnqC20JyjqXnWQ;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$65HCb4TFteqa_fnqC20JyjqXnWQ;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$65HCb4TFteqa_fnqC20JyjqXnWQ;->f$0:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$65HCb4TFteqa_fnqC20JyjqXnWQ;->f$1:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-static {v0, p0, p1, p2}, Lcom/google/common/collect/CollectCollectors;->lambda$toImmutableRangeMap$5(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$Builder;Ljava/lang/Object;)V

    return-void
.end method
