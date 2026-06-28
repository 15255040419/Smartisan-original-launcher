.class Landroid/icu/impl/duration/MultiUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private nPeriods:I


# direct methods
.method constructor <init>(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    .line 495
    invoke-direct {p0, p2}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    .line 496
    iput p1, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    return-void
.end method

.method public static get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;
    .locals 1

    if-lez p0, :cond_0

    if-eqz p1, :cond_0

    .line 501
    new-instance v0, Landroid/icu/impl/duration/MultiUnitBuilder;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/duration/MultiUnitBuilder;-><init>(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 10

    .line 516
    iget-object p3, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p3}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x0

    move-wide v8, p1

    move p1, p4

    move-object p2, v0

    move-wide v0, v8

    .line 517
    :goto_0
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v2, v2

    if-ge p4, v2, :cond_5

    const/4 v2, 0x1

    shl-int/2addr v2, p4

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    .line 519
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v2, v2, p4

    .line 520
    iget v3, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    if-ne p1, v3, :cond_0

    goto :goto_2

    .line 523
    :cond_0
    invoke-virtual {p0, v2}, Landroid/icu/impl/duration/MultiUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    if-lez p1, :cond_4

    :cond_1
    add-int/lit8 p1, p1, 0x1

    long-to-double v5, v0

    long-to-double v3, v3

    div-double/2addr v5, v3

    .line 527
    iget v7, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    if-ge p1, v7, :cond_2

    .line 528
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-long v3, v3

    sub-long/2addr v0, v3

    :cond_2
    if-nez p2, :cond_3

    double-to-float p2, v5

    .line 532
    invoke-static {p2, v2}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object p2

    goto :goto_1

    :cond_3
    double-to-float v3, v5

    .line 534
    invoke-virtual {p2, v3, v2}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object p2

    :cond_4
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object p2
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 0

    .line 508
    iget p0, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    invoke-static {p0, p1}, Landroid/icu/impl/duration/MultiUnitBuilder;->get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;

    move-result-object p0

    return-object p0
.end method
