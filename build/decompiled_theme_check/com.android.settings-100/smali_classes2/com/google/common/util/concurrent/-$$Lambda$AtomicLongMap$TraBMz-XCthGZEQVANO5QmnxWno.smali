.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$TraBMz-XCthGZEQVANO5QmnxWno;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field private final synthetic f$0:Ljava/util/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/LongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$TraBMz-XCthGZEQVANO5QmnxWno;->f$0:Ljava/util/function/LongUnaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$TraBMz-XCthGZEQVANO5QmnxWno;->f$0:Ljava/util/function/LongUnaryOperator;

    check-cast p2, Ljava/lang/Long;

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$updateAndGet$0(Ljava/util/function/LongUnaryOperator;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
