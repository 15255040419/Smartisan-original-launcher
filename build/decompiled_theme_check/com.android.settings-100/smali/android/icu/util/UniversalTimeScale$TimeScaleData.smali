.class final Landroid/icu/util/UniversalTimeScale$TimeScaleData;
.super Ljava/lang/Object;
.source "UniversalTimeScale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/UniversalTimeScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeScaleData"
.end annotation


# instance fields
.field epochOffset:J

.field epochOffsetM1:J

.field epochOffsetP1:J

.field fromMax:J

.field fromMin:J

.field maxRound:J

.field minRound:J

.field toMax:J

.field toMin:J

.field units:J

.field unitsRound:J


# direct methods
.method constructor <init>(JJJJJJ)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    const-wide/16 v3, 0x2

    .line 271
    div-long v3, v1, v3

    iput-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    .line 273
    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    const-wide/high16 v5, -0x8000000000000000L

    add-long/2addr v5, v3

    iput-wide v5, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    const-wide v5, 0x7fffffffffffffffL

    sub-long/2addr v5, v3

    .line 274
    iput-wide v5, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    .line 276
    div-long v3, p3, v1

    iput-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 279
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    iput-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    iput-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    goto :goto_0

    .line 281
    :cond_0
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    add-long v5, v1, v3

    iput-wide v5, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    sub-long/2addr v1, v3

    .line 282
    iput-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    :goto_0
    move-wide v1, p5

    .line 285
    iput-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    move-wide v1, p7

    .line 286
    iput-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    move-wide/from16 v1, p9

    .line 288
    iput-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    move-wide/from16 v1, p11

    .line 289
    iput-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    return-void
.end method
