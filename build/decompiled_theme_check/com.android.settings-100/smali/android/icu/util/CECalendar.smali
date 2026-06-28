.class abstract Landroid/icu/util/CECalendar;
.super Landroid/icu/util/Calendar;
.source "CECalendar.java"


# static fields
.field private static final LIMITS:[[I

.field private static final serialVersionUID:J = -0xddf1b4470f5acbfL


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 24
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

    sput-object v0, Landroid/icu/util/CECalendar;->LIMITS:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xc
        0xc
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
        0x5
        0x1e
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
        0x1
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

.method protected constructor <init>()V
    .locals 2

    .line 60
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 2

    .line 131
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;->set(III)V

    return-void
.end method

.method protected constructor <init>(IIIIII)V
    .locals 2

    .line 161
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 162
    invoke-virtual/range {p0 .. p6}, Landroid/icu/util/CECalendar;->set(IIIIII)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1

    .line 70
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/CECalendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/CECalendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 90
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 142
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 143
    invoke-virtual {p0, p1}, Landroid/icu/util/CECalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 80
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public static ceToJD(JIII)I
    .locals 4

    if-ltz p2, :cond_0

    .line 244
    div-int/lit8 v0, p2, 0xd

    int-to-long v0, v0

    add-long/2addr p0, v0

    .line 245
    rem-int/lit8 p2, p2, 0xd

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 248
    div-int/lit8 v0, p2, 0xd

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr p0, v0

    .line 249
    rem-int/lit8 p2, p2, 0xd

    add-int/lit8 p2, p2, 0xc

    :goto_0
    int-to-long v0, p4

    const-wide/16 v2, 0x16d

    mul-long/2addr v2, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    .line 254
    invoke-static {p0, p1, v2, v3}, Landroid/icu/util/CECalendar;->floorDivide(JJ)J

    move-result-wide p0

    add-long/2addr v0, p0

    mul-int/lit8 p2, p2, 0x1e

    int-to-long p0, p2

    add-long/2addr v0, p0

    int-to-long p0, p3

    add-long/2addr v0, p0

    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static jdToCE(II[I)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    sub-int/2addr p0, p1

    const/16 p1, 0x5b5

    .line 268
    invoke-static {p0, p1, v1}, Landroid/icu/util/CECalendar;->floorDivide(II[I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    const/4 p1, 0x0

    .line 271
    aget v2, v1, p1

    const/16 v3, 0x16d

    div-int/2addr v2, v3

    aget v4, v1, p1

    const/16 v5, 0x5b4

    div-int/2addr v4, v5

    sub-int/2addr v2, v4

    add-int/2addr p0, v2

    aput p0, p2, p1

    .line 273
    aget p0, v1, p1

    if-ne p0, v5, :cond_0

    goto :goto_0

    :cond_0
    aget p0, v1, p1

    rem-int/lit16 v3, p0, 0x16d

    .line 276
    :goto_0
    div-int/lit8 p0, v3, 0x1e

    aput p0, p2, v0

    const/4 p0, 0x2

    .line 278
    rem-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v0

    aput v3, p2, p0

    return-void
.end method


# virtual methods
.method protected abstract getJDEpochOffset()I
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 2

    int-to-long v0, p1

    .line 183
    invoke-virtual {p0}, Landroid/icu/util/CECalendar;->getJDEpochOffset()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v0, v1, p2, p1, p0}, Landroid/icu/util/CECalendar;->ceToJD(JIII)I

    move-result p0

    return p0
.end method

.method protected handleGetLimit(II)I
    .locals 0

    .line 190
    sget-object p0, Landroid/icu/util/CECalendar;->LIMITS:[[I

    aget-object p0, p0, p1

    aget p0, p0, p2

    return p0
.end method

.method protected handleGetMonthLength(II)I
    .locals 0

    add-int/lit8 p2, p2, 0x1

    .line 210
    rem-int/lit8 p2, p2, 0xd

    if-eqz p2, :cond_0

    const/16 p0, 0x1e

    return p0

    .line 218
    :cond_0
    rem-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x5

    return p1
.end method
