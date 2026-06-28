.class public Landroid/icu/impl/CalendarCache;
.super Ljava/lang/Object;
.source "CalendarCache.java"


# static fields
.field public static EMPTY:J

.field private static final primes:[I


# instance fields
.field private arraySize:I

.field private keys:[J

.field private pIndex:I

.field private size:I

.field private threshold:I

.field private values:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 113
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/CalendarCache;->primes:[I

    const-wide/high16 v0, -0x8000000000000000L

    .line 129
    sput-wide v0, Landroid/icu/impl/CalendarCache;->EMPTY:J

    return-void

    :array_0
    .array-data 4
        0x3d
        0x7f
        0x1fd
        0x3fd
        0x7f7
        0xffd
        0x1fff
        0x3ffd
        0x7fed
        0xfff1
        0x1ffff
        0x3fffb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    .line 119
    iput v0, p0, Landroid/icu/impl/CalendarCache;->size:I

    .line 120
    sget-object v0, Landroid/icu/impl/CalendarCache;->primes:[I

    iget v1, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    .line 121
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    .line 123
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    .line 124
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/icu/impl/CalendarCache;->values:[J

    .line 22
    invoke-direct {p0, v0}, Landroid/icu/impl/CalendarCache;->makeArrays(I)V

    return-void
.end method

.method private final findIndex(J)I
    .locals 6

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->hash(J)I

    move-result v0

    const/4 v1, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->values:[J

    aget-wide v2, v2, v0

    sget-wide v4, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->hash2(J)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 68
    iget v2, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    rem-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final hash(J)I
    .locals 2

    const-wide/16 v0, 0x3dcd

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 102
    iget p0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    int-to-long v0, p0

    rem-long/2addr p1, v0

    long-to-int p1, p1

    if-gez p1, :cond_0

    add-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method private final hash2(J)I
    .locals 3

    .line 110
    iget p0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    add-int/lit8 v0, p0, -0x2

    add-int/lit8 p0, p0, -0x2

    int-to-long v1, p0

    rem-long/2addr p1, v1

    long-to-int p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method private makeArrays(I)V
    .locals 5

    .line 26
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    .line 27
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/icu/impl/CalendarCache;->values:[J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 30
    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->values:[J

    sget-wide v3, Landroid/icu/impl/CalendarCache;->EMPTY:J

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iput p1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    .line 33
    iget p1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    int-to-double v1, p1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v1, v3

    double-to-int p1, v1

    iput p1, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    .line 34
    iput v0, p0, Landroid/icu/impl/CalendarCache;->size:I

    return-void
.end method

.method private rehash()V
    .locals 8

    .line 75
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    .line 76
    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    .line 77
    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->values:[J

    .line 79
    iget v3, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    sget-object v4, Landroid/icu/impl/CalendarCache;->primes:[I

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 80
    iput v3, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    aget v3, v4, v3

    iput v3, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 82
    iput v3, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    :goto_0
    const/4 v3, 0x0

    .line 84
    iput v3, p0, Landroid/icu/impl/CalendarCache;->size:I

    .line 86
    iget v4, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    invoke-direct {p0, v4}, Landroid/icu/impl/CalendarCache;->makeArrays(I)V

    :goto_1
    if-ge v3, v0, :cond_2

    .line 88
    aget-wide v4, v2, v3

    sget-wide v6, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 89
    aget-wide v4, v1, v3

    aget-wide v6, v2, v3

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized get(J)J
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/CalendarCache;->values:[J

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->findIndex(J)I

    move-result p1

    aget-wide p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(JJ)V
    .locals 2

    monitor-enter p0

    .line 49
    :try_start_0
    iget v0, p0, Landroid/icu/impl/CalendarCache;->size:I

    iget v1, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    if-lt v0, v1, :cond_0

    .line 50
    invoke-direct {p0}, Landroid/icu/impl/CalendarCache;->rehash()V

    .line 52
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->findIndex(J)I

    move-result v0

    .line 54
    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    aput-wide p1, v1, v0

    .line 55
    iget-object p1, p0, Landroid/icu/impl/CalendarCache;->values:[J

    aput-wide p3, p1, v0

    .line 56
    iget p1, p0, Landroid/icu/impl/CalendarCache;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/icu/impl/CalendarCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
