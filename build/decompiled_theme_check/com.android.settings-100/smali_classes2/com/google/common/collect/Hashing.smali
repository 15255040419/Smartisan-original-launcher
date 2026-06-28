.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# static fields
.field private static final C1:J = -0x3361d2afL

.field private static final C2:J = 0x1b873593L

.field private static final MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closedTableSize(ID)I
    .locals 3

    const/4 v0, 0x2

    .line 62
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    int-to-double v1, v0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    if-le p0, p1, :cond_1

    shl-int/lit8 p0, v0, 0x1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    :goto_0
    return p0

    :cond_1
    return v0
.end method

.method static needsResizing(IID)Z
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr p2, v2

    cmpl-double p0, v0, p2

    if-lez p0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static smear(I)I
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, -0x3361d2af

    mul-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0xf

    .line 50
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x1b873593

    mul-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method static smearedHash(Ljava/lang/Object;)I
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    invoke-static {p0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result p0

    return p0
.end method
