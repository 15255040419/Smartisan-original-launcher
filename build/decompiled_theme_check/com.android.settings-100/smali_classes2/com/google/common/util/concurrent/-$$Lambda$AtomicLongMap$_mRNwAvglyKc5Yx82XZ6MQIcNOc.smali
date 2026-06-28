.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$_mRNwAvglyKc5Yx82XZ6MQIcNOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/atomic/AtomicLong;

.field private final synthetic f$1:Ljava/util/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$_mRNwAvglyKc5Yx82XZ6MQIcNOc;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p2, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$_mRNwAvglyKc5Yx82XZ6MQIcNOc;->f$1:Ljava/util/function/LongUnaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$_mRNwAvglyKc5Yx82XZ6MQIcNOc;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p0, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$_mRNwAvglyKc5Yx82XZ6MQIcNOc;->f$1:Ljava/util/function/LongUnaryOperator;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$getAndUpdate$1(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
