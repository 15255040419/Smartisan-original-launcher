.class Landroid/icu/impl/duration/SingleUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    .line 410
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-void
.end method

.method public static get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_0
    new-instance v0, Landroid/icu/impl/duration/SingleUnitBuilder;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/SingleUnitBuilder;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 4

    .line 428
    iget-object p3, p0, Landroid/icu/impl/duration/SingleUnitBuilder;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p3}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result p3

    const/4 p4, 0x0

    .line 429
    :goto_0
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v0, v0

    if-ge p4, v0, :cond_1

    const/4 v0, 0x1

    shl-int/2addr v0, p4

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v0, v0, p4

    .line 432
    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/SingleUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    long-to-double p0, p1

    long-to-double p2, v1

    div-double/2addr p0, p2

    double-to-float p0, p0

    .line 434
    invoke-static {p0, v0}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object p0

    .line 435
    invoke-virtual {p0, p5}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 0

    .line 422
    invoke-static {p1}, Landroid/icu/impl/duration/SingleUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;

    move-result-object p0

    return-object p0
.end method
