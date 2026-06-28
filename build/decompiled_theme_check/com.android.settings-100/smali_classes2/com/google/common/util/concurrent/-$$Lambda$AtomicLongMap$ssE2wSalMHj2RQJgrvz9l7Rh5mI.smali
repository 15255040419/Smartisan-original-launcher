.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$ssE2wSalMHj2RQJgrvz9l7Rh5mI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$ssE2wSalMHj2RQJgrvz9l7Rh5mI;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p2, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$ssE2wSalMHj2RQJgrvz9l7Rh5mI;->f$1:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$ssE2wSalMHj2RQJgrvz9l7Rh5mI;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-wide v1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$ssE2wSalMHj2RQJgrvz9l7Rh5mI;->f$1:J

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$putIfAbsent$6(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
