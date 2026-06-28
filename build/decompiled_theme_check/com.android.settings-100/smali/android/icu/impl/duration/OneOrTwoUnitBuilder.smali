.class Landroid/icu/impl/duration/OneOrTwoUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    .line 445
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-void
.end method

.method public static get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 452
    :cond_0
    new-instance v0, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 8

    .line 464
    iget-object p3, p0, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p3}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 465
    :goto_0
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p3

    if-eqz v1, :cond_3

    .line 467
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v1, v1, v0

    .line 468
    invoke-virtual {p0, v1}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    long-to-double v4, p1

    long-to-double v6, v2

    div-double/2addr v4, v6

    if-nez p4, :cond_2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double p4, v4, v6

    if-ltz p4, :cond_1

    double-to-float p0, v4

    .line 473
    invoke-static {p0, v1}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object p4

    goto :goto_2

    :cond_1
    const/high16 p4, 0x3f800000    # 1.0f

    .line 476
    invoke-static {p4, v1}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object p4

    invoke-virtual {p4, p5}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object p4

    sub-long/2addr p1, v2

    goto :goto_1

    :cond_2
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v4, p0

    if-ltz p0, :cond_4

    double-to-float p0, v4

    .line 480
    invoke-virtual {p4, p0, v1}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object p4

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object p4
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 0

    .line 457
    invoke-static {p1}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    move-result-object p0

    return-object p0
.end method
