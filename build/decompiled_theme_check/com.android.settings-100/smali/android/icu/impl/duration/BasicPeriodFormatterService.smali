.class public Landroid/icu/impl/duration/BasicPeriodFormatterService;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterService.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodFormatterService;


# static fields
.field private static instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;


# instance fields
.field private ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;


# direct methods
.method public constructor <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    return-void
.end method

.method public static getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;
    .locals 2

    .line 33
    sget-object v0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->getInstance()Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    move-result-object v0

    .line 36
    new-instance v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;

    invoke-direct {v1, v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    sput-object v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    .line 38
    :cond_0
    sget-object v0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    return-object v0
.end method


# virtual methods
.method public getAvailableLocaleNames()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object p0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->getAvailableLocales()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    .line 53
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterService;)V

    return-object v0
.end method

.method public newPeriodBuilderFactory()Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    .line 63
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    iget-object p0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    return-object v0
.end method

.method public newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 1

    .line 58
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    iget-object p0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    return-object v0
.end method
