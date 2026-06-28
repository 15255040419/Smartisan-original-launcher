.class final Lcom/google/common/base/SmallCharMatcher;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "SmallCharMatcher.java"


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final DESIRED_LOAD_FACTOR:D = 0.5

.field static final MAX_SIZE:I = 0x3ff


# instance fields
.field private final containsZero:Z

.field private final filter:J

.field private final table:[C


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p5}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    .line 38
    iput-wide p2, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    .line 39
    iput-boolean p4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    return-void
.end method

.method private checkFilter(I)Z
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    shr-long p0, v0, p1

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static chooseTableSize(I)I
    .locals 5

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    add-int/lit8 v1, p0, -0x1

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_0
    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 9

    .line 89
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    .line 92
    invoke-static {v0}, Lcom/google/common/base/SmallCharMatcher;->chooseTableSize(I)I

    move-result v0

    new-array v3, v0, [C

    .line 93
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 94
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const-wide/16 v4, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v1

    or-long/2addr v7, v4

    .line 97
    invoke-static {v1}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v2

    :goto_1
    and-int/2addr v2, v0

    .line 100
    aget-char v4, v3, v2

    if-nez v4, :cond_0

    int-to-char v4, v1

    .line 101
    aput-char v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    .line 94
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move-wide v4, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_1
    new-instance p0, Lcom/google/common/base/SmallCharMatcher;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/common/base/SmallCharMatcher;-><init>([CJZLjava/lang/String;)V

    return-object p0
.end method

.method static smear(I)I
    .locals 1

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p0, v0

    const/16 v0, 0xf

    .line 54
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public matches(C)Z
    .locals 7

    if-nez p1, :cond_0

    .line 114
    iget-boolean p0, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    return p0

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/base/SmallCharMatcher;->checkFilter(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 120
    invoke-static {p1}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v3

    and-int/2addr v3, v0

    move v4, v3

    .line 123
    :cond_2
    iget-object v5, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v6, v5, v4

    if-nez v6, :cond_3

    return v1

    .line 125
    :cond_3
    aget-char v5, v5, v4

    if-ne v5, p1, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    and-int/2addr v4, v0

    if-ne v4, v3, :cond_2

    return v1
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 3

    .line 137
    iget-boolean v0, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-char v2, p0, v1

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
