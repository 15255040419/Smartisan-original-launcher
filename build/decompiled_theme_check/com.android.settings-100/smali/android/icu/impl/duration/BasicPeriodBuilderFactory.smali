.class Landroid/icu/impl/duration/BasicPeriodBuilderFactory;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodBuilderFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    }
.end annotation


# static fields
.field private static final allBits:S = 0xffs


# instance fields
.field private ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

.field private settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    .line 31
    new-instance p1, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-direct {p1, p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)V

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-void
.end method

.method static synthetic access$000(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
    .locals 0

    .line 23
    iget-object p0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    return-object p0
.end method

.method static approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J
    .locals 2

    .line 35
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->approxDurations:[J

    iget-byte p0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    aget-wide v0, v0, p0

    return-wide v0
.end method

.method private getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 270
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setInUse()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFixedUnitBuilder(Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 0

    .line 282
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/icu/impl/duration/FixedUnitBuilder;->get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getMultiUnitBuilder(I)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 0

    .line 318
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/icu/impl/duration/MultiUnitBuilder;->get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getOneOrTwoUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .locals 0

    .line 306
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getSingleUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .locals 0

    .line 293
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/duration/SingleUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setAllowMilliseconds(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowMilliseconds(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setAllowZero(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowZero(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setAvailableUnitRange(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 3

    .line 201
    iget-byte v0, p2, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    const/4 v1, 0x0

    :goto_0
    iget-byte v2, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 207
    iget-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p1, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0

    .line 205
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is empty"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    .line 256
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setMaxLimit(F)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setMaxLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setMinLimit(F)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setMinLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 0

    return-object p0
.end method

.method public setUnitIsAvailable(Landroid/icu/impl/duration/TimeUnit;Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 2

    .line 214
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    iget-short v0, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 216
    iget-byte p1, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    goto :goto_0

    .line 218
    :cond_0
    iget-byte p1, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    .line 220
    :goto_0
    iget-object p2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p2, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setWeeksAloneOnly(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setWeeksAloneOnly(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method
