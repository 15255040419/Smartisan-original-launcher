.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$xkVI1iDZ2IluvsquadnktIkVUWI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# instance fields
.field private final synthetic f$0:Ljava/util/function/LongBinaryOperator;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/LongBinaryOperator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$xkVI1iDZ2IluvsquadnktIkVUWI;->f$0:Ljava/util/function/LongBinaryOperator;

    iput-wide p2, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$xkVI1iDZ2IluvsquadnktIkVUWI;->f$1:J

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$xkVI1iDZ2IluvsquadnktIkVUWI;->f$0:Ljava/util/function/LongBinaryOperator;

    iget-wide v1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$xkVI1iDZ2IluvsquadnktIkVUWI;->f$1:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$getAndAccumulate$3(Ljava/util/function/LongBinaryOperator;JJ)J

    move-result-wide p0

    return-wide p0
.end method
