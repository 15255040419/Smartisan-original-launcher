.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/cache/LongAddable;


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/google/common/cache/Striped64;-><init>()V

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

    .line 179
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/google/common/cache/LongAdder;->busy:I

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 182
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 175
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/google/common/cache/LongAdder;->base:J

    add-long v3, v1, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/common/cache/LongAdder;->casBase(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    :cond_0
    sget-object v1, Lcom/google/common/cache/LongAdder;->threadHashCode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lt v3, v2, :cond_1

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    and-int/2addr v3, v4

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long v4, v2, p1

    .line 71
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/cache/LongAdder;->retryUpdate(J[IZ)V

    :cond_2
    return-void
.end method

.method public decrement()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    return-void
.end method

.method public doubleValue()D
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float p0, v0

    return p0
.end method

.method final fn(JJ)J
    .locals 0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public increment()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    return-void
.end method

.method public intValue()I
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public longValue()J
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->internalReset(J)V

    return-void
.end method

.method public sum()J
    .locals 6

    .line 93
    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 94
    iget-object p0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz p0, :cond_1

    .line 96
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 98
    aget-object v4, p0, v3

    if-eqz v4, :cond_0

    .line 99
    iget-wide v4, v4, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public sumThenReset()J
    .locals 9

    .line 124
    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 125
    iget-object v2, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    const-wide/16 v3, 0x0

    .line 126
    iput-wide v3, p0, Lcom/google/common/cache/LongAdder;->base:J

    if-eqz v2, :cond_1

    .line 128
    array-length p0, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p0, :cond_1

    .line 130
    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    .line 132
    iget-wide v7, v6, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v7

    .line 133
    iput-wide v3, v6, Lcom/google/common/cache/Striped64$Cell;->value:J

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
