.class public final Lcom/google/common/util/concurrent/AtomicLongMap;
.super Ljava/lang/Object;
.source "AtomicLongMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private final map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static create()Lcom/google/common/util/concurrent/AtomicLongMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/AtomicLongMap<",
            "TK;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/common/util/concurrent/AtomicLongMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/util/concurrent/AtomicLongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/util/concurrent/AtomicLongMap<",
            "TK;>;"
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/google/common/util/concurrent/AtomicLongMap;->create()Lcom/google/common/util/concurrent/AtomicLongMap;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AtomicLongMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private createAsMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM(Ljava/lang/Long;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$accumulateAndGet$2(Ljava/util/function/LongBinaryOperator;JJ)J
    .locals 0

    .line 181
    invoke-interface {p0, p3, p4, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$dplkPhACWDPIy18ogwdupEQaN40(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->sum(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$getAndAccumulate$3(Ljava/util/function/LongBinaryOperator;JJ)J
    .locals 0

    .line 195
    invoke-interface {p0, p3, p4, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$getAndUpdate$1(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    if-nez p3, :cond_0

    const-wide/16 p2, 0x0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 164
    :goto_0
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 165
    invoke-interface {p1, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$put$4(JJ)J
    .locals 0

    return-wide p0
.end method

.method static synthetic lambda$putIfAbsent$6(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    if-eqz p4, :cond_1

    .line 321
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    return-object p4

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 322
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 323
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$removeAllZeros$5(Ljava/lang/Long;)Z
    .locals 4

    .line 253
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$updateAndGet$0(Ljava/util/function/LongUnaryOperator;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_0
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accumulateAndGet(Ljava/lang/Object;JLjava/util/function/LongBinaryOperator;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 180
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$4CvOIpS6KzWJFfXmm4Bsao0FRtY;

    invoke-direct {v0, p4, p2, p3}, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$4CvOIpS6KzWJFfXmm4Bsao0FRtY;-><init>(Ljava/util/function/LongBinaryOperator;J)V

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/AtomicLongMap;->updateAndGet(Ljava/lang/Object;Ljava/util/function/LongUnaryOperator;)J

    move-result-wide p0

    return-wide p0
.end method

.method public addAndGet(Ljava/lang/Object;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$dplkPhACWDPIy18ogwdupEQaN40;->INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$dplkPhACWDPIy18ogwdupEQaN40;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/util/concurrent/AtomicLongMap;->accumulateAndGet(Ljava/lang/Object;JLjava/util/function/LongBinaryOperator;)J

    move-result-wide p0

    return-wide p0
.end method

.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->asMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AtomicLongMap;->createAsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->asMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public decrementAndGet(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 98
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public get(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getAndAccumulate(Ljava/lang/Object;JLjava/util/function/LongBinaryOperator;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 194
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$xkVI1iDZ2IluvsquadnktIkVUWI;

    invoke-direct {v0, p4, p2, p3}, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$xkVI1iDZ2IluvsquadnktIkVUWI;-><init>(Ljava/util/function/LongBinaryOperator;J)V

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndUpdate(Ljava/lang/Object;Ljava/util/function/LongUnaryOperator;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAndAdd(Ljava/lang/Object;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$dplkPhACWDPIy18ogwdupEQaN40;->INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$dplkPhACWDPIy18ogwdupEQaN40;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndAccumulate(Ljava/lang/Object;JLjava/util/function/LongBinaryOperator;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAndDecrement(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 123
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAndIncrement(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 115
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAndUpdate(Ljava/lang/Object;Ljava/util/function/LongUnaryOperator;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/LongUnaryOperator;",
            ")J"
        }
    .end annotation

    .line 158
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 160
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$_mRNwAvglyKc5Yx82XZ6MQIcNOc;

    invoke-direct {v1, v0, p2}, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$_mRNwAvglyKc5Yx82XZ6MQIcNOc;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;)V

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 167
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    return-wide p0
.end method

.method public incrementAndGet(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 90
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/Object;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$DcLTlF3s5DHwdNSgEWTYCqVol1g;

    invoke-direct {v0, p2, p3}, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$DcLTlF3s5DHwdNSgEWTYCqVol1g;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndUpdate(Ljava/lang/Object;Ljava/util/function/LongUnaryOperator;)J

    move-result-wide p0

    return-wide p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 214
    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$NpQImCSB1VBAuWg5oY26Tq15j3U;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/-$$Lambda$NpQImCSB1VBAuWg5oY26Tq15j3U;-><init>(Lcom/google/common/util/concurrent/AtomicLongMap;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method putIfAbsent(Ljava/lang/Object;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 317
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$ssE2wSalMHj2RQJgrvz9l7Rh5mI;

    invoke-direct {v1, v0, p2, p3}, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$ssE2wSalMHj2RQJgrvz9l7Rh5mI;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;J)V

    .line 318
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 328
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public remove(Ljava/lang/Object;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .line 223
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method remove(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAllZeros()V
    .locals 1

    .line 253
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$49jqsgGfolS7k5Y0w5CKFvjzFZk;->INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$49jqsgGfolS7k5Y0w5CKFvjzFZk;

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public removeIfZero(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->remove(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method replace(Ljava/lang/Object;JJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;JJ)Z"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 340
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/common/util/concurrent/AtomicLongMap;->putIfAbsent(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 342
    :cond_1
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public sum()J
    .locals 2

    .line 262
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$ELHKvd8JMVRD8rbALqYPKbDX2mM;->INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$ELHKvd8JMVRD8rbALqYPKbDX2mM;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAndGet(Ljava/lang/Object;Ljava/util/function/LongUnaryOperator;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/LongUnaryOperator;",
            ")J"
        }
    .end annotation

    .line 144
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$TraBMz-XCthGZEQVANO5QmnxWno;

    invoke-direct {v0, p2}, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$TraBMz-XCthGZEQVANO5QmnxWno;-><init>(Ljava/util/function/LongUnaryOperator;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
