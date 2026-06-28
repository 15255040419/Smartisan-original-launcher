.class public Landroid/icu/util/PersianCalendar;
.super Landroid/icu/util/Calendar;
.source "PersianCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LIMITS:[[I

.field private static final MONTH_COUNT:[[I

.field private static final PERSIAN_EPOCH:I = 0x1dbaa0

.field private static final serialVersionUID:J = -0x5d5c320ee73c81dbL


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0xc

    new-array v1, v0, [[I

    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 77
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v14, 0xb

    aput-object v3, v1, v14

    sput-object v1, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    const/16 v1, 0x16

    new-array v1, v1, [[I

    new-array v3, v7, [I

    .line 269
    fill-array-data v3, :array_c

    aput-object v3, v1, v4

    new-array v3, v7, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v5

    new-array v3, v7, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v6

    new-array v3, v7, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    new-array v2, v4, [I

    aput-object v2, v1, v7

    new-array v2, v7, [I

    fill-array-data v2, :array_10

    aput-object v2, v1, v8

    new-array v2, v7, [I

    fill-array-data v2, :array_11

    aput-object v2, v1, v9

    new-array v2, v4, [I

    aput-object v2, v1, v10

    new-array v2, v7, [I

    fill-array-data v2, :array_12

    aput-object v2, v1, v11

    new-array v2, v4, [I

    aput-object v2, v1, v12

    new-array v2, v4, [I

    aput-object v2, v1, v13

    new-array v2, v4, [I

    aput-object v2, v1, v14

    new-array v2, v4, [I

    aput-object v2, v1, v0

    new-array v0, v4, [I

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0xe

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0xf

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0x10

    aput-object v0, v1, v2

    new-array v0, v7, [I

    fill-array-data v0, :array_13

    const/16 v2, 0x11

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0x12

    aput-object v0, v1, v2

    new-array v0, v7, [I

    fill-array-data v0, :array_14

    const/16 v2, 0x13

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0x14

    aput-object v0, v1, v2

    new-array v0, v4, [I

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sput-object v1, Landroid/icu/util/PersianCalendar;->LIMITS:[[I

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1f
        0x1f
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x1f
        0x1f
        0x3e
    .end array-data

    :array_3
    .array-data 4
        0x1f
        0x1f
        0x5d
    .end array-data

    :array_4
    .array-data 4
        0x1f
        0x1f
        0x7c
    .end array-data

    :array_5
    .array-data 4
        0x1f
        0x1f
        0x9b
    .end array-data

    :array_6
    .array-data 4
        0x1e
        0x1e
        0xba
    .end array-data

    :array_7
    .array-data 4
        0x1e
        0x1e
        0xd8
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0x1e
        0xf6
    .end array-data

    :array_9
    .array-data 4
        0x1e
        0x1e
        0x114
    .end array-data

    :array_a
    .array-data 4
        0x1e
        0x1e
        0x132
    .end array-data

    :array_b
    .array-data 4
        0x1d
        0x1e
        0x150
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0xb
        0xb
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x1
        0x34
        0x35
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x1
        0x1d
        0x1f
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x1
        0x16d
        0x16e
    .end array-data

    :array_12
    .array-data 4
        -0x1
        -0x1
        0x5
        0x5
    .end array-data

    :array_13
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_14
    .array-data 4
        -0x4c4b40
        -0x4c4b40
        0x4c4b40
        0x4c4b40
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/PersianCalendar;->set(II)V

    const/4 p1, 0x2

    .line 229
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/PersianCalendar;->set(II)V

    const/4 p1, 0x5

    .line 230
    invoke-virtual {p0, p1, p3}, Landroid/icu/util/PersianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/PersianCalendar;->set(II)V

    const/4 p1, 0x2

    .line 258
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/PersianCalendar;->set(II)V

    const/4 p1, 0x5

    .line 259
    invoke-virtual {p0, p1, p3}, Landroid/icu/util/PersianCalendar;->set(II)V

    const/16 p1, 0xb

    .line 260
    invoke-virtual {p0, p1, p4}, Landroid/icu/util/PersianCalendar;->set(II)V

    const/16 p1, 0xc

    .line 261
    invoke-virtual {p0, p1, p5}, Landroid/icu/util/PersianCalendar;->set(II)V

    const/16 p1, 0xd

    .line 262
    invoke-virtual {p0, p1, p6}, Landroid/icu/util/PersianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/PersianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/PersianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 208
    invoke-virtual {p0, p1}, Landroid/icu/util/PersianCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method private static final isLeapYear(I)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    mul-int/lit8 p0, p0, 0x19

    add-int/lit8 p0, p0, 0xb

    const/16 v2, 0x21

    .line 315
    invoke-static {p0, v2, v1}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    const/4 p0, 0x0

    .line 316
    aget v1, v1, p0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo p0, "persian"

    return-object p0
.end method

.method protected handleComputeFields(I)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1dbaa0

    sub-int/2addr p1, v0

    int-to-long v0, p1

    const-wide/16 v2, 0x21

    mul-long v4, v0, v2

    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2f15

    .line 425
    invoke-static {v4, v5, v6, v7}, Landroid/icu/util/PersianCalendar;->floorDivide(JJ)J

    move-result-wide v4

    long-to-int p1, v4

    const/4 v4, 0x1

    add-int/2addr p1, v4

    int-to-long v5, p1

    const-wide/16 v7, 0x1

    sub-long v7, v5, v7

    const-wide/16 v9, 0x16d

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x8

    mul-long/2addr v5, v9

    const-wide/16 v9, 0x15

    add-long/2addr v5, v9

    .line 427
    invoke-static {v5, v6, v2, v3}, Landroid/icu/util/PersianCalendar;->floorDivide(JJ)J

    move-result-wide v2

    add-long/2addr v7, v2

    sub-long/2addr v0, v7

    long-to-int v0, v0

    const/16 v1, 0xd8

    if-ge v0, v1, :cond_0

    .line 430
    div-int/lit8 v1, v0, 0x1f

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x6

    .line 432
    div-int/lit8 v1, v1, 0x1e

    .line 434
    :goto_0
    sget-object v2, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-int v2, v0, v2

    add-int/2addr v2, v4

    add-int/2addr v0, v4

    const/4 v5, 0x0

    .line 437
    invoke-virtual {p0, v5, v5}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    .line 438
    invoke-virtual {p0, v4, p1}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    const/16 v4, 0x13

    .line 439
    invoke-virtual {p0, v4, p1}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    .line 440
    invoke-virtual {p0, v3, v1}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    const/4 p1, 0x5

    .line 441
    invoke-virtual {p0, p1, v2}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    const/4 p1, 0x6

    .line 442
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_0

    const/16 p0, 0xb

    if-le p2, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/16 p3, 0xc

    .line 373
    invoke-static {p2, p3, p0}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x0

    .line 374
    aget p2, p0, p2

    :cond_1
    const p0, 0x1dba9f

    add-int/lit8 p3, p1, -0x1

    mul-int/lit16 p3, p3, 0x16d

    add-int/2addr p3, p0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x15

    const/16 p0, 0x21

    .line 377
    invoke-static {p1, p0}, Landroid/icu/util/PersianCalendar;->floorDivide(II)I

    move-result p0

    add-int/2addr p3, p0

    if-eqz p2, :cond_2

    .line 379
    sget-object p0, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object p0, p0, p2

    const/4 p1, 0x2

    aget p0, p0, p1

    add-int/2addr p3, p0

    :cond_2
    return p3
.end method

.method protected handleGetExtendedYear()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 395
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/PersianCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 396
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/PersianCalendar;->internalGet(II)I

    move-result p0

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/PersianCalendar;->internalGet(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected handleGetLimit(II)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    sget-object p0, Landroid/icu/util/PersianCalendar;->LIMITS:[[I

    aget-object p0, p0, p1

    aget p0, p0, p2

    return p0
.end method

.method protected handleGetMonthLength(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_0

    const/16 p0, 0xb

    if-le p2, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/16 v0, 0xc

    .line 339
    invoke-static {p2, v0, p0}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x0

    .line 340
    aget p2, p0, p2

    .line 343
    :cond_1
    sget-object p0, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object p0, p0, p2

    invoke-static {p1}, Landroid/icu/util/PersianCalendar;->isLeapYear(I)Z

    move-result p1

    aget p0, p0, p1

    return p0
.end method

.method protected handleGetYearLength(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    invoke-static {p1}, Landroid/icu/util/PersianCalendar;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16e

    goto :goto_0

    :cond_0
    const/16 p0, 0x16d

    :goto_0
    return p0
.end method
