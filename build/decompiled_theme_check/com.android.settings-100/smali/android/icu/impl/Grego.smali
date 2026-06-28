.class public Landroid/icu/impl/Grego;
.super Ljava/lang/Object;
.source "Grego.java"


# static fields
.field private static final DAYS_BEFORE:[I

.field private static final JULIAN_1970_CE:I = 0x253d8c

.field private static final JULIAN_1_CE:I = 0x1a4452

.field public static final MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final MILLIS_PER_DAY:I = 0x5265c00

.field public static final MILLIS_PER_HOUR:I = 0x36ee80

.field public static final MILLIS_PER_MINUTE:I = 0xea60

.field public static final MILLIS_PER_SECOND:I = 0x3e8

.field public static final MIN_MILLIS:J = -0x28ec76c40e65000L

.field private static final MONTH_LENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x18

    new-array v1, v0, [I

    .line 50
    fill-array-data v1, :array_0

    sput-object v1, Landroid/icu/impl/Grego;->MONTH_LENGTH:[I

    new-array v0, v0, [I

    .line 55
    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/impl/Grego;->DAYS_BEFORE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayOfWeek(J)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x5

    add-long/2addr p0, v1

    const-wide/16 v1, 0x7

    .line 113
    invoke-static {p0, p1, v1, v2, v0}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    const/4 p0, 0x0

    .line 114
    aget-wide p0, v0, p0

    long-to-int p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x7

    :cond_0
    return p0
.end method

.method public static dayToFields(J[I)[I
    .locals 13

    const/4 v0, 0x5

    if-eqz p2, :cond_0

    .line 120
    array-length v1, p2

    if-ge v1, v0, :cond_1

    :cond_0
    new-array p2, v0, [I

    :cond_1
    const-wide/32 v0, 0xaf93a

    add-long/2addr p0, v0

    const/4 v0, 0x1

    new-array v1, v0, [J

    const-wide/32 v2, 0x23ab1

    .line 127
    invoke-static {p0, p1, v2, v3, v1}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 128
    aget-wide v5, v1, v4

    const-wide/32 v7, 0x8eac

    invoke-static {v5, v6, v7, v8, v1}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v5

    .line 129
    aget-wide v7, v1, v4

    const-wide/16 v9, 0x5b5

    invoke-static {v7, v8, v9, v10, v1}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v7

    .line 130
    aget-wide v9, v1, v4

    const-wide/16 v11, 0x16d

    invoke-static {v9, v10, v11, v12, v1}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v9

    const-wide/16 v11, 0x190

    mul-long/2addr v2, v11

    const-wide/16 v11, 0x64

    mul-long/2addr v11, v5

    add-long/2addr v2, v11

    const-wide/16 v11, 0x4

    mul-long/2addr v7, v11

    add-long/2addr v2, v7

    add-long/2addr v2, v9

    long-to-int v2, v2

    .line 133
    aget-wide v7, v1, v4

    long-to-int v1, v7

    cmp-long v3, v5, v11

    if-eqz v3, :cond_3

    cmp-long v3, v9, v11

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v1, 0x16d

    .line 141
    :goto_1
    invoke-static {v2}, Landroid/icu/impl/Grego;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v5, 0x3c

    goto :goto_2

    :cond_4
    const/16 v5, 0x3b

    :goto_2
    const/4 v6, 0x2

    if-lt v1, v5, :cond_6

    if-eqz v3, :cond_5

    move v5, v0

    goto :goto_3

    :cond_5
    move v5, v6

    goto :goto_3

    :cond_6
    move v5, v4

    :goto_3
    add-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x6

    .line 147
    div-int/lit16 v5, v5, 0x16f

    .line 148
    sget-object v7, Landroid/icu/impl/Grego;->DAYS_BEFORE:[I

    if-eqz v3, :cond_7

    add-int/lit8 v3, v5, 0xc

    goto :goto_4

    :cond_7
    move v3, v5

    :goto_4
    aget v3, v7, v3

    sub-int v3, v1, v3

    add-int/2addr v3, v0

    const-wide/16 v7, 0x2

    add-long/2addr p0, v7

    const-wide/16 v7, 0x7

    .line 149
    rem-long/2addr p0, v7

    long-to-int p0, p0

    if-ge p0, v0, :cond_8

    add-int/lit8 p0, p0, 0x7

    :cond_8
    add-int/2addr v1, v0

    .line 155
    aput v2, p2, v4

    .line 156
    aput v5, p2, v0

    .line 157
    aput v3, p2, v6

    const/4 p1, 0x3

    .line 158
    aput p0, p2, p1

    const/4 p0, 0x4

    .line 159
    aput v1, p2, p0

    return-object p2
.end method

.method public static fieldsToDay(III)J
    .locals 7

    add-int/lit8 v0, p0, -0x1

    mul-int/lit16 v1, v0, 0x16d

    int-to-long v1, v1

    int-to-long v3, v0

    const-wide/16 v5, 0x4

    .line 100
    invoke-static {v3, v4, v5, v6}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v5

    add-long/2addr v1, v5

    const-wide/32 v5, 0x1a444f

    add-long/2addr v1, v5

    const-wide/16 v5, 0x190

    .line 101
    invoke-static {v3, v4, v5, v6}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v5

    add-long/2addr v1, v5

    const-wide/16 v5, 0x64

    invoke-static {v3, v4, v5, v6}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    sget-object v0, Landroid/icu/impl/Grego;->DAYS_BEFORE:[I

    .line 102
    invoke-static {p0}, Landroid/icu/impl/Grego;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p1, p0

    aget p0, v0, p1

    int-to-long p0, p0

    add-long/2addr v1, p0

    int-to-long p0, p2

    add-long/2addr v1, p0

    const-wide/32 p0, 0x253d8c

    sub-long/2addr v1, p0

    return-wide v1
.end method

.method public static floorDivide(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 189
    div-long/2addr p0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 190
    div-long/2addr p0, p2

    sub-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method private static floorDivide(JJ[J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 195
    rem-long v2, p0, p2

    aput-wide v2, p4, v1

    .line 196
    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, p0, v2

    .line 198
    div-long/2addr v4, p2

    sub-long/2addr v4, v2

    mul-long/2addr p2, v4

    sub-long/2addr p0, p2

    .line 199
    aput-wide p0, p4, v1

    return-wide v4
.end method

.method public static getDayOfWeekInMonth(III)I
    .locals 3

    add-int/lit8 v0, p2, 0x6

    .line 208
    div-int/lit8 v0, v0, 0x7

    const/4 v1, -0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    add-int/lit8 p2, p2, 0x7

    .line 210
    invoke-static {p0, p1}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result p0

    if-le p2, p0, :cond_1

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method public static final isLeapYear(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_1

    .line 66
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

.method public static final monthLength(II)I
    .locals 1

    .line 76
    sget-object v0, Landroid/icu/impl/Grego;->MONTH_LENGTH:[I

    invoke-static {p0}, Landroid/icu/impl/Grego;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr p1, p0

    aget p0, v0, p1

    return p0
.end method

.method public static final previousMonthLength(II)I
    .locals 0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 86
    invoke-static {p0, p1}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x1f

    :goto_0
    return p0
.end method

.method public static timeToFields(J[I)[I
    .locals 3

    const/4 v0, 0x6

    if-eqz p2, :cond_0

    .line 175
    array-length v1, p2

    if-ge v1, v0, :cond_1

    :cond_0
    new-array p2, v0, [I

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/32 v1, 0x5265c00

    .line 179
    invoke-static {p0, p1, v1, v2, v0}, Landroid/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide p0

    .line 180
    invoke-static {p0, p1, p2}, Landroid/icu/impl/Grego;->dayToFields(J[I)[I

    const/4 p0, 0x5

    const/4 p1, 0x0

    .line 181
    aget-wide v0, v0, p1

    long-to-int p1, v0

    aput p1, p2, p0

    return-object p2
.end method

.method public static timeToString(J)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 226
    invoke-static {p0, p1, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object p0

    const/4 p1, 0x5

    .line 227
    aget v1, p0, p1

    const v2, 0x36ee80

    .line 228
    div-int v3, v1, v2

    .line 229
    rem-int/2addr v1, v2

    const v2, 0xea60

    .line 230
    div-int v4, v1, v2

    .line 231
    rem-int/2addr v1, v2

    .line 232
    div-int/lit16 v2, v1, 0x3e8

    .line 233
    rem-int/lit16 v1, v1, 0x3e8

    .line 235
    check-cast v0, Ljava/util/Locale;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, p0, v6

    .line 236
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aget v7, p0, v6

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aget p0, p0, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x3

    aput-object p0, v5, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x4

    aput-object p0, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x6

    aput-object p0, v5, p1

    const-string p0, "%04d-%02d-%02dT%02d:%02d:%02d.%03dZ"

    .line 235
    invoke-static {v0, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
