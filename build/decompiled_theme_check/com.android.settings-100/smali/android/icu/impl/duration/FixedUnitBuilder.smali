.class Landroid/icu/impl/duration/FixedUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private unit:Landroid/icu/impl/duration/TimeUnit;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    .line 387
    invoke-direct {p0, p2}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    .line 388
    iput-object p1, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    return-void
.end method

.method public static get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;
    .locals 3

    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v0

    const/4 v1, 0x1

    iget-byte v2, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Landroid/icu/impl/duration/FixedUnitBuilder;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/duration/FixedUnitBuilder;-><init>(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 0

    .line 399
    iget-object p3, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 402
    :cond_0
    invoke-virtual {p0, p3}, Landroid/icu/impl/duration/FixedUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide p3

    long-to-double p1, p1

    long-to-double p3, p3

    div-double/2addr p1, p3

    double-to-float p1, p1

    .line 403
    iget-object p0, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {p1, p0}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object p0

    .line 404
    invoke-virtual {p0, p5}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object p0

    return-object p0
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 0

    .line 393
    iget-object p0, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {p0, p1}, Landroid/icu/impl/duration/FixedUnitBuilder;->get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;

    move-result-object p0

    return-object p0
.end method
