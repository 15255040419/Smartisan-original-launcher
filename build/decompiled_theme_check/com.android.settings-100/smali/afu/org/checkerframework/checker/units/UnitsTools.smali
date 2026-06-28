.class public Lafu/org/checkerframework/checker/units/UnitsTools;
.super Ljava/lang/Object;
.source "UnitsTools.java"


# static fields
.field public static final A:I = 0x1

.field public static final C:I = 0x1

.field public static final K:I = 0x1

.field public static final cd:I = 0x1

.field public static final deg:D = 1.0

.field public static final g:I = 0x1

.field public static final h:I = 0x1

.field public static final kg:I = 0x1

.field public static final km:I = 0x1

.field public static final km2:I = 0x1

.field public static final kmPERh:I = 0x1

.field public static final m:I = 0x1

.field public static final m2:I = 0x1

.field public static final mPERs:I = 0x1

.field public static final mPERs2:I = 0x1

.field public static final min:I = 0x1

.field public static final mm:I = 0x1

.field public static final mm2:I = 0x1

.field public static final mol:I = 0x1

.field public static final rad:D = 1.0

.field public static final s:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCelsiusToKelvin(I)I
    .locals 0

    add-int/lit16 p0, p0, 0x111

    return p0
.end method

.method public static fromGramToKiloGram(I)I
    .locals 0

    .line 67
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromHourToMinute(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static fromKelvinToCelsius(I)I
    .locals 0

    add-int/lit16 p0, p0, -0x111

    return p0
.end method

.method public static fromKiloGramToGram(I)I
    .locals 0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromKiloMeterPerHourToMeterPerSecond(D)D
    .locals 2

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static fromKiloMeterToMeter(I)I
    .locals 0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromMeterPerSecondToKiloMeterPerHour(D)D
    .locals 2

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static fromMeterToKiloMeter(I)I
    .locals 0

    .line 60
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromMeterToMilliMeter(I)I
    .locals 0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromMilliMeterToMeter(I)I
    .locals 0

    .line 58
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static fromMinuteToHour(I)I
    .locals 0

    .line 94
    div-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static fromMinuteToSecond(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static fromSecondToMinute(I)I
    .locals 0

    .line 92
    div-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static toDegrees(D)D
    .locals 0

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static toRadians(D)D
    .locals 0

    .line 39
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    return-wide p0
.end method
