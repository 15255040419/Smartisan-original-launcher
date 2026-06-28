.class public final synthetic Lcom/google/common/collect/-$$Lambda$M_9LS_7GbvWBZmrlfKOp3wKwBM0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/stream/IntStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/IntStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$M_9LS_7GbvWBZmrlfKOp3wKwBM0;->f$0:Ljava/util/stream/IntStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$M_9LS_7GbvWBZmrlfKOp3wKwBM0;->f$0:Ljava/util/stream/IntStream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method
