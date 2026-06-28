.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$DcLTlF3s5DHwdNSgEWTYCqVol1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# instance fields
.field private final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$DcLTlF3s5DHwdNSgEWTYCqVol1g;->f$0:J

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$DcLTlF3s5DHwdNSgEWTYCqVol1g;->f$0:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$put$4(JJ)J

    move-result-wide p0

    return-wide p0
.end method
