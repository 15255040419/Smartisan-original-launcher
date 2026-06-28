.class public Lcom/google/common/util/concurrent/AtomicDouble;
.super Ljava/lang/Number;
.source "AtomicDouble.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J

.field private static final updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lcom/google/common/util/concurrent/AtomicDouble;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile transient value:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const-class v0, Lcom/google/common/util/concurrent/AtomicDouble;

    const-string v1, "value"

    .line 64
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 241
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 243
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/AtomicDouble;->set(D)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 235
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    return-void
.end method


# virtual methods
.method public final addAndGet(D)D
    .locals 8

    .line 179
    :cond_0
    iget-wide v2, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    add-double v6, v0, p1

    .line 182
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 183
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v6
.end method

.method public final compareAndSet(DD)Z
    .locals 6

    .line 130
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p0

    return p0
.end method

.method public doubleValue()D
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final get()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(D)D
    .locals 8

    .line 160
    :cond_0
    iget-wide v2, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    add-double v0, v6, p1

    .line 163
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 164
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v6
.end method

.method public final getAndSet(D)D
    .locals 1

    .line 116
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    .line 117
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public intValue()I
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public final lazySet(D)V
    .locals 1

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    .line 106
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    return-void
.end method

.method public longValue()J
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public final set(D)V
    .locals 0

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    .line 96
    iput-wide p1, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final weakCompareAndSet(DD)Z
    .locals 6

    .line 147
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move-object v1, p0

    .line 147
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->weakCompareAndSet(Ljava/lang/Object;JJ)Z

    move-result p0

    return p0
.end method
