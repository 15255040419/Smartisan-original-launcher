.class final Lcom/google/common/hash/SipHashFunction$SipHasher;
.super Lcom/google/common/hash/AbstractStreamingHasher;
.source "SipHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/SipHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SipHasher"
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x8


# instance fields
.field private b:J

.field private final c:I

.field private final d:I

.field private finalM:J

.field private v0:J

.field private v1:J

.field private v2:J

.field private v3:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 2

    const/16 v0, 0x8

    .line 122
    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;-><init>(I)V

    const-wide v0, 0x736f6d6570736575L    # 1.0986868386607877E248

    .line 109
    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    const-wide v0, 0x646f72616e646f6dL    # 6.222199573468475E175

    .line 110
    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    const-wide v0, 0x6c7967656e657261L    # 3.4208747916531402E214

    .line 111
    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    const-wide v0, 0x7465646279746573L    # 4.901176695720602E252

    .line 112
    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    .line 119
    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    .line 123
    iput p1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->c:I

    .line 124
    iput p2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->d:I

    .line 125
    iget-wide p1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    xor-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    .line 126
    iget-wide p1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    xor-long/2addr p1, p5

    iput-wide p1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 127
    iget-wide p1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    xor-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    .line 128
    iget-wide p1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    xor-long/2addr p1, p5

    iput-wide p1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    return-void
.end method

.method private processM(J)V
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 159
    iget v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->c:I

    invoke-direct {p0, v0}, Lcom/google/common/hash/SipHashFunction$SipHasher;->sipRound(I)V

    .line 160
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    return-void
.end method

.method private sipRound(I)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 165
    iget-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    iget-wide v3, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    .line 166
    iget-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    iget-wide v5, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    const/16 v1, 0xd

    .line 167
    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 168
    iget-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 169
    iget-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    iget-wide v3, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 170
    iget-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    iget-wide v5, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    xor-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    const/16 v1, 0x20

    .line 171
    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    .line 172
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    .line 173
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    iget-wide v6, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    const/16 v2, 0x11

    .line 174
    invoke-static {v4, v5, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 175
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 176
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    .line 177
    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    iget-wide v6, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    xor-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    .line 178
    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public makeHash()Lcom/google/common/hash/HashCode;
    .locals 5

    .line 148
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    .line 149
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/SipHashFunction$SipHasher;->processM(J)V

    .line 152
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    const-wide/16 v2, 0xff

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    .line 153
    iget v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->d:I

    invoke-direct {p0, v0}, Lcom/google/common/hash/SipHashFunction$SipHasher;->sipRound(I)V

    .line 154
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v0:J

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->v3:J

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method protected process(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 133
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/SipHashFunction$SipHasher;->processM(J)V

    return-void
.end method

.method protected processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 139
    iget-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->b:J

    const/4 v0, 0x0

    .line 140
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    shl-long/2addr v3, v0

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/SipHashFunction$SipHasher;->finalM:J

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method
