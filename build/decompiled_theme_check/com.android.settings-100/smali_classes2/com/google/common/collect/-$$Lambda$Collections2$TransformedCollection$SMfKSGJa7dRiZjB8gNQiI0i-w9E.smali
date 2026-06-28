.class public final synthetic Lcom/google/common/collect/-$$Lambda$Collections2$TransformedCollection$SMfKSGJa7dRiZjB8gNQiI0i-w9E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/google/common/collect/Collections2$TransformedCollection;

.field private final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Collections2$TransformedCollection;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Collections2$TransformedCollection$SMfKSGJa7dRiZjB8gNQiI0i-w9E;->f$0:Lcom/google/common/collect/Collections2$TransformedCollection;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$Collections2$TransformedCollection$SMfKSGJa7dRiZjB8gNQiI0i-w9E;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Collections2$TransformedCollection$SMfKSGJa7dRiZjB8gNQiI0i-w9E;->f$0:Lcom/google/common/collect/Collections2$TransformedCollection;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Collections2$TransformedCollection$SMfKSGJa7dRiZjB8gNQiI0i-w9E;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/Collections2$TransformedCollection;->lambda$forEach$0$Collections2$TransformedCollection(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
