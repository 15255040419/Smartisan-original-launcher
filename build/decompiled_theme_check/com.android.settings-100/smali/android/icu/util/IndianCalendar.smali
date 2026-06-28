.class public Landroid/icu/util/IndianCalendar;
.super Landroid/icu/util/Calendar;
.source "IndianCalendar.java"


# static fields
.field public static final AGRAHAYANA:I = 0x8

.field public static final ASADHA:I = 0x3

.field public static final ASVINA:I = 0x6

.field public static final BHADRA:I = 0x5

.field public static final CHAITRA:I = 0x0

.field public static final IE:I = 0x0

.field private static final INDIAN_ERA_START:I = 0x4e

.field private static final INDIAN_YEAR_START:I = 0x50

.field public static final JYAISTHA:I = 0x2

.field public static final KARTIKA:I = 0x7

.field private static final LIMITS:[[I

.field public static final MAGHA:I = 0xa

.field public static final PAUSA:I = 0x9

.field public static final PHALGUNA:I = 0xb

.field public static final SRAVANA:I = 0x4

.field public static final VAISAKHA:I = 0x1

.field private static final serialVersionUID:J = 0x3235383330303532L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 375
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v3, [I

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/IndianCalendar;->LIMITS:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xb
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x34
        0x35
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1e
        0x1f
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x16d
        0x16e
    .end array-data

    :array_6
    .array-data 4
        -0x1
        -0x1
        0x5
        0x5
    .end array-data

    :array_7
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_8
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 150
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 235
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IndianCalendar;->set(II)V

    const/4 p1, 0x2

    .line 237
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/IndianCalendar;->set(II)V

    const/4 p1, 0x5

    .line 238
    invoke-virtual {p0, p1, p3}, Landroid/icu/util/IndianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2

    .line 263
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 264
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IndianCalendar;->set(II)V

    const/4 p1, 0x2

    .line 265
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/IndianCalendar;->set(II)V

    const/4 p1, 0x5

    .line 266
    invoke-virtual {p0, p1, p3}, Landroid/icu/util/IndianCalendar;->set(II)V

    const/16 p1, 0xb

    .line 267
    invoke-virtual {p0, p1, p4}, Landroid/icu/util/IndianCalendar;->set(II)V

    const/16 p1, 0xc

    .line 268
    invoke-virtual {p0, p1, p5}, Landroid/icu/util/IndianCalendar;->set(II)V

    const/16 p1, 0xd

    .line 269
    invoke-virtual {p0, p1, p6}, Landroid/icu/util/IndianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1

    .line 161
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/IndianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/IndianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 181
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 218
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 219
    invoke-virtual {p0, p1}, Landroid/icu/util/IndianCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 171
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method private static IndianToJD(III)D
    .locals 8

    add-int/lit8 p0, p0, 0x4e

    .line 446
    invoke-static {p0}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result v0

    const/16 v1, 0x1f

    const/4 v2, 0x3

    const/16 v3, 0x1e

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    .line 448
    invoke-static {p0, v2, v0}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v4

    move p0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    .line 451
    invoke-static {p0, v2, v0}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v4

    move p0, v3

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_1
    :goto_1
    sub-int/2addr p2, v0

    int-to-double p0, p2

    add-double/2addr v4, p0

    goto :goto_2

    :cond_2
    int-to-double v6, p0

    add-double/2addr v4, v6

    add-int/lit8 p0, p1, -0x2

    const/4 v2, 0x5

    .line 459
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    mul-int/2addr p0, v1

    int-to-double v1, p0

    add-double/2addr v4, v1

    const/16 p0, 0x8

    if-lt p1, p0, :cond_1

    add-int/lit8 p1, p1, -0x7

    mul-int/2addr p1, v3

    int-to-double p0, p1

    add-double/2addr v4, p0

    goto :goto_1

    :goto_2
    return-wide v4
.end method

.method private static gregorianToJD(III)D
    .locals 3

    add-int/lit8 v0, p0, -0x1

    mul-int/lit16 v1, v0, 0x16d

    .line 481
    div-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x64

    sub-int/2addr v1, v2

    div-int/lit16 v0, v0, 0x190

    add-int/2addr v1, v0

    mul-int/lit16 v0, p1, 0x16f

    add-int/lit16 v0, v0, -0x16a

    div-int/lit8 v0, v0, 0xc

    add-int/2addr v1, v0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 486
    :cond_0
    invoke-static {p0}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x2

    :goto_0
    add-int/2addr v1, p0

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-double p0, v1

    const-wide v0, 0x413a445180000000L    # 1721425.5

    add-double/2addr p0, v0

    return-wide p0
.end method

.method private static isGregorianLeap(I)Z
    .locals 1

    .line 541
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static jdToGregorian(D)[I
    .locals 10

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p0, v0

    .line 501
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    add-double/2addr p0, v0

    const-wide v0, 0x413a445180000000L    # 1721425.5

    sub-double v0, p0, v0

    const-wide v2, 0x4101d58800000000L    # 146097.0

    div-double v4, v0, v2

    .line 503
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    rem-double/2addr v0, v2

    const-wide v2, 0x40e1d58000000000L    # 36524.0

    div-double v6, v0, v2

    .line 505
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    rem-double/2addr v0, v2

    const-wide v2, 0x4096d40000000000L    # 1461.0

    div-double v8, v0, v2

    .line 507
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    rem-double/2addr v0, v2

    const-wide v2, 0x4076d00000000000L    # 365.0

    div-double/2addr v0, v2

    .line 509
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    mul-double/2addr v4, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    add-double/2addr v4, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v2

    add-double/2addr v4, v8

    add-double/2addr v4, v0

    double-to-int v4, v4

    cmpl-double v5, v6, v2

    if-eqz v5, :cond_0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    const/4 v0, 0x1

    .line 516
    invoke-static {v4, v0, v0}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v1

    sub-double v1, p0, v1

    const/4 v3, 0x3

    .line 517
    invoke-static {v4, v3, v0}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v5

    cmpg-double v5, p0, v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-gez v5, :cond_1

    move v5, v7

    goto :goto_0

    .line 519
    :cond_1
    invoke-static {v4}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    int-to-double v8, v5

    add-double/2addr v1, v8

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    mul-double/2addr v1, v8

    const-wide v8, 0x4077500000000000L    # 373.0

    add-double/2addr v1, v8

    const-wide v8, 0x4076f00000000000L    # 367.0

    div-double/2addr v1, v8

    .line 522
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 523
    invoke-static {v4, v1, v0}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v8

    sub-double/2addr p0, v8

    double-to-int p0, p0

    add-int/2addr p0, v0

    new-array p1, v3, [I

    aput v4, p1, v7

    aput v1, p1, v0

    aput p0, p1, v6

    return-object p1
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0

    const-string p0, "indian"

    return-object p0
.end method

.method protected handleComputeFields(I)V
    .locals 8

    int-to-double v0, p1

    .line 337
    invoke-static {v0, v1}, Landroid/icu/util/IndianCalendar;->jdToGregorian(D)[I

    move-result-object p1

    const/4 v2, 0x0

    .line 338
    aget v3, p1, v2

    add-int/lit8 v3, v3, -0x4e

    .line 339
    aget v4, p1, v2

    const/4 v5, 0x1

    invoke-static {v4, v5, v5}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v6

    sub-double/2addr v0, v6

    double-to-int v0, v0

    const/16 v1, 0x1f

    const/16 v4, 0x1e

    const/16 v6, 0x50

    if-ge v0, v6, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 345
    aget p1, p1, v2

    sub-int/2addr p1, v5

    invoke-static {p1}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    add-int/lit16 v6, p1, 0x9b

    add-int/lit8 v6, v6, 0x5a

    add-int/lit8 v6, v6, 0xa

    add-int/2addr v0, v6

    goto :goto_2

    .line 348
    :cond_1
    aget p1, p1, v2

    invoke-static {p1}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    add-int/lit8 v0, v0, -0x50

    :goto_2
    const/4 v6, 0x6

    if-ge v0, p1, :cond_3

    add-int/lit8 p1, v0, 0x1

    move v1, v2

    goto :goto_3

    :cond_3
    sub-int p1, v0, p1

    const/16 v7, 0x9b

    if-ge p1, v7, :cond_4

    .line 358
    div-int/lit8 v4, p1, 0x1f

    add-int/2addr v4, v5

    .line 359
    rem-int/2addr p1, v1

    add-int/2addr p1, v5

    move v1, v4

    goto :goto_3

    :cond_4
    add-int/lit16 p1, p1, -0x9b

    .line 362
    div-int/lit8 v1, p1, 0x1e

    add-int/2addr v1, v6

    .line 363
    rem-int/2addr p1, v4

    add-int/2addr p1, v5

    .line 367
    :goto_3
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    const/16 v2, 0x13

    .line 368
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    .line 369
    invoke-virtual {p0, v5, v3}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    const/4 v2, 0x2

    .line 370
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    const/4 v1, 0x5

    .line 371
    invoke-virtual {p0, v1, p1}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    add-int/2addr v0, v5

    .line 372
    invoke-virtual {p0, v6, v0}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 0

    if-ltz p2, :cond_0

    const/16 p0, 0xb

    if-le p2, p0, :cond_1

    .line 420
    :cond_0
    div-int/lit8 p0, p2, 0xc

    add-int/2addr p1, p0

    .line 421
    rem-int/lit8 p2, p2, 0xc

    :cond_1
    const/4 p0, 0x1

    add-int/2addr p2, p0

    .line 426
    invoke-static {p1, p2, p0}, Landroid/icu/util/IndianCalendar;->IndianToJD(III)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method protected handleGetExtendedYear()I
    .locals 3

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 291
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IndianCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 292
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IndianCalendar;->internalGet(II)I

    move-result p0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/IndianCalendar;->internalGet(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected handleGetLimit(II)I
    .locals 0

    .line 407
    sget-object p0, Landroid/icu/util/IndianCalendar;->LIMITS:[[I

    aget-object p0, p0, p1

    aget p0, p0, p2

    return p0
.end method

.method protected handleGetMonthLength(II)I
    .locals 2

    const/4 p0, 0x1

    if-ltz p2, :cond_0

    const/16 v0, 0xb

    if-le p2, v0, :cond_1

    :cond_0
    new-array v0, p0, [I

    const/16 v1, 0xc

    .line 314
    invoke-static {p2, v1, v0}, Landroid/icu/util/IndianCalendar;->floorDivide(II[I)I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x0

    .line 315
    aget p2, v0, p2

    :cond_1
    add-int/lit8 p1, p1, 0x4e

    .line 318
    invoke-static {p1}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result p1

    const/16 v0, 0x1f

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    return v0

    :cond_2
    if-lt p2, p0, :cond_3

    const/4 p0, 0x5

    if-gt p2, p0, :cond_3

    return v0

    :cond_3
    const/16 p0, 0x1e

    return p0
.end method

.method protected handleGetYearLength(I)I
    .locals 0

    .line 305
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result p0

    return p0
.end method
