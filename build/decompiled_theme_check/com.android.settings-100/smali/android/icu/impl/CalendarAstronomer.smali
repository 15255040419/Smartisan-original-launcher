.class public Landroid/icu/impl/CalendarAstronomer;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CalendarAstronomer$Horizon;,
        Landroid/icu/impl/CalendarAstronomer$Equatorial;,
        Landroid/icu/impl/CalendarAstronomer$Ecliptic;,
        Landroid/icu/impl/CalendarAstronomer$CoordFunc;,
        Landroid/icu/impl/CalendarAstronomer$AngleFunc;,
        Landroid/icu/impl/CalendarAstronomer$MoonAge;,
        Landroid/icu/impl/CalendarAstronomer$SolarLongitude;
    }
.end annotation


# static fields
.field public static final AUTUMN_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field public static final DAY_MS:J = 0x5265c00L

.field private static final DEG_RAD:D = 0.017453292519943295

.field static final EPOCH_2000_MS:J = 0xdc65a95000L

.field public static final FIRST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field public static final FULL_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field public static final HOUR_MS:I = 0x36ee80

.field private static final INVALID:D = 4.9E-324

.field static final JD_EPOCH:D = 2447891.5

.field public static final JULIAN_EPOCH_MS:J = -0xbfc83e532200L

.field public static final LAST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field public static final MINUTE_MS:I = 0xea60

.field public static final NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field private static final PI:D = 3.141592653589793

.field private static final PI2:D = 6.283185307179586

.field private static final RAD_DEG:D = 57.29577951308232

.field private static final RAD_HOUR:D = 3.819718634205488

.field public static final SECOND_MS:I = 0x3e8

.field public static final SIDEREAL_DAY:D = 23.93446960027

.field public static final SIDEREAL_MONTH:D = 27.32166

.field public static final SIDEREAL_YEAR:D = 365.25636

.field public static final SOLAR_DAY:D = 24.065709816

.field public static final SUMMER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field static final SUN_E:D = 0.016713

.field static final SUN_ETA_G:D = 4.87650757829735

.field static final SUN_OMEGA_G:D = 4.935239984568769

.field public static final SYNODIC_MONTH:D = 29.530588853

.field public static final TROPICAL_YEAR:D = 365.242191

.field public static final VERNAL_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field public static final WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field static final moonA:D = 384401.0

.field static final moonE:D = 0.0549

.field static final moonI:D = 0.08980357792017056

.field static final moonL0:D = 5.556284436750021

.field static final moonN0:D = 5.559050068029439

.field static final moonP0:D = 0.6342598060246725

.field static final moonPi:D = 0.016592845198710092

.field static final moonT0:D = 0.009042550854582622


# instance fields
.field private transient eclipObliquity:D

.field private fGmtOffset:J

.field private fLatitude:D

.field private fLongitude:D

.field private transient julianCentury:D

.field private transient julianDay:D

.field private transient meanAnomalySun:D

.field private transient moonEclipLong:D

.field private transient moonLongitude:D

.field private transient moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

.field private transient siderealT0:D

.field private transient siderealTime:D

.field private transient sunLongitude:D

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 631
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->VERNAL_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    .line 639
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-direct {v0, v3, v4}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->SUMMER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    .line 647
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v0, v5, v6}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->AUTUMN_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    .line 655
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    const-wide v7, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-direct {v0, v7, v8}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    .line 1137
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    .line 1144
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v3, v4}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->FIRST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    .line 1151
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v5, v6}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->FULL_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    .line 1158
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v7, v8}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->LAST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2

    .line 244
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;-><init>()V

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr p1, v0

    .line 245
    invoke-static {p1, p2}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide p1

    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->fLongitude:D

    mul-double/2addr p3, v0

    .line 246
    invoke-static {p3, p4}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide p1

    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    .line 247
    iget-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->fLongitude:D

    const-wide/high16 p3, 0x4038000000000000L    # 24.0

    mul-double/2addr p1, p3

    const-wide p3, 0x414b774000000000L    # 3600000.0

    mul-double/2addr p1, p3

    const-wide p3, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr p1, p3

    double-to-long p1, p1

    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1423
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLongitude:D

    .line 1424
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    const-wide/16 v0, 0x0

    .line 1425
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    const-wide/16 v0, 0x1

    .line 1434
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    .line 1435
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    .line 1436
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    .line 1437
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    .line 1438
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    .line 1439
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    .line 1441
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    .line 1442
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    .line 1443
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    const/4 v0, 0x0

    .line 1445
    iput-object v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    .line 226
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 214
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    return-void
.end method

.method static synthetic access$000(D)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Landroid/icu/impl/CalendarAstronomer;->radToHms(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(D)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Landroid/icu/impl/CalendarAstronomer;->radToDms(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private clearCache()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 1448
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    .line 1449
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    .line 1450
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    .line 1451
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    .line 1452
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    .line 1453
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    .line 1455
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    .line 1456
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    .line 1457
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    const/4 v0, 0x0

    .line 1458
    iput-object v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    return-void
.end method

.method private eclipticObliquity()D
    .locals 6

    .line 1394
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 1397
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v0

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v0, v2

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    const-wide v2, 0x4037707570c564f9L    # 23.439292

    const-wide v4, 0x3f8aa1edb45c4be9L    # 0.013004166666666666

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide v4, 0x3e865e9f80f29211L    # 1.6666666666666665E-7

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide v4, 0x3ea0ded40694ce29L    # 5.027777777777778E-7

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    .line 1399
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    .line 1404
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    .line 1406
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    return-wide v0
.end method

.method private getSiderealOffset()D
    .locals 6

    .line 377
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v0, v2

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    const-wide v2, 0x401aca1c8e5eb098L    # 6.697374558

    const-wide v4, 0x40a2c01a48b65237L    # 2400.051336

    mul-double/2addr v4, v0

    add-double/2addr v4, v2

    const-wide v2, 0x3efb1e471b7b0e47L    # 2.5862E-5

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    .line 381
    invoke-static {v4, v5, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    .line 383
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    return-wide v0
.end method

.method private lstToUT(D)J
    .locals 6

    .line 405
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->getSiderealOffset()D

    move-result-wide v0

    sub-double/2addr p1, v0

    const-wide v0, 0x3fefe9a1dd91bf50L    # 0.9972695663

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    invoke-static {p1, p2, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide p1

    .line 408
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    add-long/2addr v0, v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    sub-long/2addr v0, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    mul-double/2addr p1, v2

    double-to-long p0, p1

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static final norm2PI(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 1346
    invoke-static {p0, p1, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final normPI(D)D
    .locals 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double/2addr p0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 1353
    invoke-static {p0, p1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide p0

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method private static final normalize(DD)D
    .locals 2

    div-double v0, p0, p2

    .line 1337
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr p2, v0

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method private static radToDms(D)Ljava/lang/String;
    .locals 6

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr p0, v0

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double v3, p0, v1

    double-to-int v3, v3

    int-to-double v4, v3

    div-double/2addr v4, v1

    sub-double/2addr p0, v4

    const-wide v1, 0x40ac200000000000L    # 3600.0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    .line 1674
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u00b0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static radToHms(D)Ljava/lang/String;
    .locals 6

    const-wide v0, 0x400e8ec8a4aeacc4L    # 3.819718634205488

    mul-double/2addr p0, v0

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double v3, p0, v1

    double-to-int v3, v3

    int-to-double v4, v3

    div-double/2addr v4, v1

    sub-double/2addr p0, v4

    const-wide v1, 0x40ac200000000000L    # 3600.0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    .line 1666
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private riseOrSet(Landroid/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J
    .locals 11

    move-object v0, p0

    .line 1295
    iget-wide v1, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    const/4 v3, 0x0

    .line 1306
    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/CalendarAstronomer$CoordFunc;->eval()Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v4

    neg-double v5, v1

    .line 1307
    iget-wide v7, v4, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz p2, :cond_1

    sub-double v5, v7, v5

    .line 1308
    :cond_1
    iget-wide v9, v4, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    add-double/2addr v5, v9

    const-wide/high16 v9, 0x4038000000000000L    # 24.0

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    .line 1311
    invoke-direct {p0, v5, v6}, Landroid/icu/impl/CalendarAstronomer;->lstToUT(D)J

    move-result-wide v5

    .line 1313
    iget-wide v7, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    sub-long v7, v5, v7

    .line 1314
    invoke-virtual {p0, v5, v6}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x5

    if-ge v3, v5, :cond_2

    .line 1316
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v5, v5, p7

    if-gtz v5, :cond_0

    .line 1319
    :cond_2
    iget-wide v1, v4, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 1320
    iget-wide v3, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v5, p3, v5

    add-double v5, v5, p5

    .line 1322
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x406e000000000000L    # 240.0

    mul-double/2addr v3, v5

    const-wide v5, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v3, v5

    div-double/2addr v3, v1

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v1

    double-to-long v1, v3

    .line 1325
    iget-wide v3, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    if-eqz p2, :cond_3

    neg-long v1, v1

    :cond_3
    add-long/2addr v3, v1

    return-wide v3
.end method

.method private timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J
    .locals 15

    move-object v0, p0

    .line 1222
    invoke-interface/range {p1 .. p1}, Landroid/icu/impl/CalendarAstronomer$AngleFunc;->eval()D

    move-result-wide v1

    sub-double v3, p2, v1

    .line 1225
    invoke-static {v3, v4}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v3

    if-eqz p8, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    const-wide v5, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    :goto_0
    add-double/2addr v3, v5

    const-wide v5, 0x4194997000000000L    # 8.64E7

    mul-double v5, v5, p4

    mul-double/2addr v3, v5

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v3, v7

    .line 1232
    iget-wide v7, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    double-to-long v9, v3

    add-long/2addr v9, v7

    .line 1234
    invoke-virtual {p0, v9, v10}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1241
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/icu/impl/CalendarAstronomer$AngleFunc;->eval()D

    move-result-wide v9

    sub-double v1, v9, v1

    .line 1244
    invoke-static {v1, v2}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide v1

    div-double v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    sub-double v11, p2, v9

    .line 1247
    invoke-static {v11, v12}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide v11

    mul-double/2addr v1, v11

    .line 1270
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v11, v3

    if-lez v3, :cond_2

    const-wide/high16 v1, 0x4020000000000000L    # 8.0

    div-double/2addr v5, v1

    double-to-long v1, v5

    if-eqz p8, :cond_1

    goto :goto_2

    :cond_1
    neg-long v1, v1

    :goto_2
    add-long/2addr v7, v1

    .line 1272
    invoke-virtual {p0, v7, v8}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1273
    invoke-direct/range {p0 .. p8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    move-result-wide v0

    return-wide v0

    .line 1279
    :cond_2
    iget-wide v3, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    double-to-long v11, v1

    add-long/2addr v3, v11

    invoke-virtual {p0, v3, v4}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1281
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    move-wide/from16 v11, p6

    long-to-double v13, v11

    cmpl-double v3, v3, v13

    if-gtz v3, :cond_3

    .line 1283
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    return-wide v0

    :cond_3
    move-wide v3, v1

    move-wide v1, v9

    goto :goto_1
.end method

.method private trueAnomaly(DD)D
    .locals 8

    move-wide v0, p1

    .line 1376
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p3

    sub-double v2, v0, v2

    sub-double/2addr v2, p1

    .line 1377
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    div-double v4, v2, v4

    sub-double/2addr v0, v4

    .line 1379
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double p0, v2, v4

    if-gtz p0, :cond_0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    .line 1381
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    add-double v2, p3, v6

    sub-double/2addr v6, p3

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p2

    mul-double/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public final eclipticToEquatorial(D)Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 2

    const-wide/16 v0, 0x0

    .line 472
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object p0

    return-object p0
.end method

.method public final eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 17

    .line 447
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->eclipticObliquity()D

    move-result-wide v0

    .line 448
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 449
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 451
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 452
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 454
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 455
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 456
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    .line 458
    new-instance v14, Landroid/icu/impl/CalendarAstronomer$Equatorial;

    mul-double v15, v4, v0

    mul-double/2addr v12, v2

    sub-double v12, v15, v12

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double/2addr v8, v0

    mul-double/2addr v10, v2

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    .line 459
    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-direct {v14, v6, v7, v0, v1}, Landroid/icu/impl/CalendarAstronomer$Equatorial;-><init>(DD)V

    return-object v14
.end method

.method public final eclipticToEquatorial(Landroid/icu/impl/CalendarAstronomer$Ecliptic;)Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 4

    .line 430
    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$Ecliptic;->longitude:D

    iget-wide v2, p1, Landroid/icu/impl/CalendarAstronomer$Ecliptic;->latitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object p0

    return-object p0
.end method

.method public eclipticToHorizon(D)Landroid/icu/impl/CalendarAstronomer$Horizon;
    .locals 16

    move-object/from16 v0, p0

    .line 480
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(D)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v1

    .line 482
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->getLocalSidereal()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double/2addr v2, v4

    iget-wide v4, v1, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    sub-double/2addr v2, v4

    .line 484
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 485
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 486
    iget-wide v6, v1, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 487
    iget-wide v8, v1, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 488
    iget-wide v10, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 489
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v12, v6, v10

    mul-double v14, v8, v0

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    .line 491
    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    neg-double v8, v8

    mul-double/2addr v8, v0

    mul-double/2addr v8, v4

    .line 492
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v10, v0

    sub-double/2addr v6, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 494
    new-instance v4, Landroid/icu/impl/CalendarAstronomer$Horizon;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer$Horizon;-><init>(DD)V

    return-object v4
.end method

.method public getDate()Ljava/util/Date;
    .locals 3

    .line 327
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getGreenwichSidereal()D
    .locals 8

    .line 365
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 369
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v0

    .line 371
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->getSiderealOffset()D

    move-result-wide v4

    const-wide v6, 0x3ff00b36e7d9d4aeL    # 1.002737909

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    invoke-static {v4, v5, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    .line 373
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    return-wide v0
.end method

.method public getJulianCentury()D
    .locals 4

    .line 354
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v0

    const-wide v2, 0x41426cd600000000L    # 2415020.0

    sub-double/2addr v0, v2

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    .line 357
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    return-wide v0
.end method

.method public getJulianDay()D
    .locals 4

    .line 340
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 341
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    const-wide v2, -0xbfc83e532200L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    .line 343
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    return-wide v0
.end method

.method public getLocalSidereal()D
    .locals 6

    .line 391
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getGreenwichSidereal()D

    move-result-wide v0

    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMoonAge()D
    .locals 4

    .line 1102
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getMoonPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;

    .line 1104
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMoonPhase()D
    .locals 4

    .line 1124
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getMoonAge()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getMoonPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 19

    move-object/from16 v0, p0

    .line 1013
    iget-object v1, v0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    if-nez v1, :cond_0

    .line 1016
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v1

    .line 1022
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v3

    const-wide v5, 0x4142ad09c0000000L    # 2447891.5

    sub-double/2addr v3, v5

    const-wide v5, 0x3fcd6fb4ccd0bc8dL    # 0.22997150421858628

    mul-double/2addr v5, v3

    const-wide v7, 0x401639a2a09c75e2L    # 5.556284436750021

    add-double/2addr v5, v7

    .line 1026
    invoke-static {v5, v6}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v5

    const-wide v7, 0x3f5fdb459d100168L    # 0.001944368345221015

    mul-double/2addr v7, v3

    sub-double v7, v5, v7

    const-wide v9, 0x3fe44bdb3881627cL    # 0.6342598060246725

    sub-double/2addr v7, v9

    .line 1027
    invoke-static {v7, v8}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v7

    const-wide v9, 0x3f96c471a926a187L    # 0.022233749341155764

    sub-double v11, v5, v1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v13

    sub-double/2addr v11, v7

    .line 1035
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    const-wide v9, 0x3f6a90b0aba4fc89L    # 0.003242821750205464

    .line 1037
    iget-wide v13, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    const-wide v9, 0x3f7a736889d66dd0L    # 0.00645771823237902

    move-wide/from16 v17, v3

    .line 1038
    iget-wide v3, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    sub-double v9, v11, v13

    sub-double/2addr v9, v3

    add-double/2addr v7, v9

    const-wide v3, 0x3fbc1905209a88deL    # 0.10975677534091541

    .line 1049
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v3

    const-wide v3, 0x3f6e98df535623b2L    # 0.0037350045992678655

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v15

    .line 1050
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    add-double/2addr v5, v11

    add-double/2addr v5, v9

    sub-double/2addr v5, v13

    add-double/2addr v5, v7

    .line 1053
    iput-wide v5, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    const-wide v3, 0x3f8787ceeab4c1caL    # 0.011489502465878671

    .line 1060
    iget-wide v5, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    sub-double/2addr v5, v1

    mul-double/2addr v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v3

    .line 1062
    iget-wide v3, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    add-double/2addr v3, v1

    iput-wide v3, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    const-wide v1, 0x40163c779efc0d54L    # 5.559050068029439

    const-wide v3, 0x3f4e48eb230f0fe5L    # 9.242199067718253E-4

    mul-double v3, v3, v17

    sub-double/2addr v1, v3

    .line 1071
    invoke-static {v1, v2}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v1

    const-wide v3, 0x3f66e05a695f8191L    # 0.0027925268031909274

    .line 1073
    iget-wide v5, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    sub-double/2addr v1, v5

    .line 1075
    iget-wide v3, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    sub-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 1076
    iget-wide v5, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    sub-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v7, 0x3fb6fd5e063b1d97L    # 0.08980357792017056

    .line 1078
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v3

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    add-double/2addr v5, v1

    iput-wide v5, v0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    .line 1079
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    .line 1081
    iget-wide v3, v0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    .line 1083
    :cond_0
    iget-object v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    return-object v0
.end method

.method public getMoonRiseSet(Z)J
    .locals 9

    .line 1200
    new-instance v1, Landroid/icu/impl/CalendarAstronomer$4;

    invoke-direct {v1, p0}, Landroid/icu/impl/CalendarAstronomer$4;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    const-wide v3, 0x3f830d3e7ef4bd1bL    # 0.009302604913129777

    const-wide v5, 0x3f8441500d4c900dL    # 0.009890199094634533

    const-wide/32 v7, 0xea60

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Landroid/icu/impl/CalendarAstronomer;->riseOrSet(Landroid/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMoonTime(DZ)J
    .locals 9

    .line 1171
    new-instance v1, Landroid/icu/impl/CalendarAstronomer$3;

    invoke-direct {v1, p0}, Landroid/icu/impl/CalendarAstronomer$3;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    const-wide v4, 0x403d87d4abcb41d5L    # 29.530588853

    const-wide/32 v6, 0xea60

    move-object v0, p0

    move-wide v2, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMoonTime(Landroid/icu/impl/CalendarAstronomer$MoonAge;Z)J
    .locals 2

    .line 1190
    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$MoonAge;->value:D

    invoke-virtual {p0, v0, v1, p2}, Landroid/icu/impl/CalendarAstronomer;->getMoonTime(DZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSunLongitude()D
    .locals 4

    .line 575
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude(D)[D

    move-result-object v0

    const/4 v1, 0x0

    .line 577
    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    const/4 v1, 0x1

    .line 578
    aget-wide v0, v0, v1

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    .line 580
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    return-wide v0
.end method

.method getSunLongitude(D)[D
    .locals 5

    const-wide v0, 0x4142ad09c0000000L    # 2447891.5

    sub-double/2addr p1, v0

    const-wide v0, 0x3f919d9bcdd8ac02L    # 0.017202791632524146

    mul-double/2addr p1, v0

    .line 595
    invoke-static {p1, p2}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide p1

    const-wide v0, 0x4013818b33ddeee0L    # 4.87650757829735

    add-double/2addr p1, v0

    const-wide v0, 0x4013bdaf8cee89a2L    # 4.935239984568769

    sub-double/2addr p1, v0

    .line 599
    invoke-static {p1, p2}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide p1

    const/4 v2, 0x2

    new-array v2, v2, [D

    const-wide v3, 0x3f911d3671ac14c6L    # 0.016713

    .line 606
    invoke-direct {p0, p1, p2, v3, v4}, Landroid/icu/impl/CalendarAstronomer;->trueAnomaly(DD)D

    move-result-wide v3

    add-double/2addr v3, v0

    invoke-static {v3, v4}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v0

    const/4 p0, 0x0

    aput-wide v0, v2, p0

    const/4 p0, 0x1

    aput-wide p1, v2, p0

    return-object v2
.end method

.method public getSunPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 4

    .line 617
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object p0

    return-object p0
.end method

.method public getSunRiseSet(Z)J
    .locals 11

    .line 694
    iget-wide v9, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    .line 697
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    add-long v2, v9, v0

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x2932e00

    add-long/2addr v2, v0

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x6

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x6

    :goto_0
    const-wide/32 v4, 0x36ee80

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 699
    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 701
    new-instance v1, Landroid/icu/impl/CalendarAstronomer$2;

    invoke-direct {v1, p0}, Landroid/icu/impl/CalendarAstronomer$2;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    const-wide v3, 0x3f830d3e7ef4bd1bL    # 0.009302604913129777

    const-wide v5, 0x3f8441500d4c900dL    # 0.009890199094634533

    const-wide/16 v7, 0x1388

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Landroid/icu/impl/CalendarAstronomer;->riseOrSet(Landroid/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J

    move-result-wide v0

    .line 710
    invoke-virtual {p0, v9, v10}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    return-wide v0
.end method

.method public getSunTime(DZ)J
    .locals 9

    .line 664
    new-instance v1, Landroid/icu/impl/CalendarAstronomer$1;

    invoke-direct {v1, p0}, Landroid/icu/impl/CalendarAstronomer$1;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    const-wide v4, 0x4076d3e003ab862bL    # 365.242191

    const-wide/32 v6, 0xea60

    move-object v0, p0

    move-wide v2, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSunTime(Landroid/icu/impl/CalendarAstronomer$SolarLongitude;Z)J
    .locals 2

    .line 678
    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;->value:D

    invoke-virtual {p0, v0, v1, p2}, Landroid/icu/impl/CalendarAstronomer;->getSunTime(DZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTime()J
    .locals 2

    .line 315
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    return-wide v0
.end method

.method public local(J)Ljava/lang/String;
    .locals 2

    .line 1477
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 2

    .line 282
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    return-void
.end method

.method public setJulianDay(D)V
    .locals 4

    const-wide v0, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v0, p1

    double-to-long v0, v0

    const-wide v2, -0xbfc83e532200L

    add-long/2addr v0, v2

    .line 300
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    .line 301
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->clearCache()V

    .line 302
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 267
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    .line 268
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->clearCache()V

    return-void
.end method
