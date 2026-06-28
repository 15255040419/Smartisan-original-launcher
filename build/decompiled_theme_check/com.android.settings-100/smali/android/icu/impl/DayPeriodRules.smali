.class public final Landroid/icu/impl/DayPeriodRules;
.super Ljava/lang/Object;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;,
        Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;,
        Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;,
        Landroid/icu/impl/DayPeriodRules$CutoffType;,
        Landroid/icu/impl/DayPeriodRules$DayPeriod;
    }
.end annotation


# static fields
.field private static final DATA:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;


# instance fields
.field private dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field private hasMidnight:Z

.field private hasNoon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 230
    invoke-static {}, Landroid/icu/impl/DayPeriodRules;->loadData()Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/DayPeriodRules;->DATA:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Landroid/icu/impl/DayPeriodRules;->hasMidnight:Z

    .line 238
    iput-boolean v0, p0, Landroid/icu/impl/DayPeriodRules;->hasNoon:Z

    const/16 v0, 0x18

    new-array v0, v0, [Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 239
    iput-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/DayPeriodRules$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/icu/impl/DayPeriodRules;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 0

    .line 22
    invoke-static {p0}, Landroid/icu/impl/DayPeriodRules;->parseSetNum(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroid/icu/impl/DayPeriodRules;)[Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .locals 0

    .line 22
    iget-object p0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0
.end method

.method static synthetic access$502(Landroid/icu/impl/DayPeriodRules;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Landroid/icu/impl/DayPeriodRules;->hasMidnight:Z

    return p1
.end method

.method static synthetic access$602(Landroid/icu/impl/DayPeriodRules;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Landroid/icu/impl/DayPeriodRules;->hasNoon:Z

    return p1
.end method

.method static synthetic access$700(Landroid/icu/impl/DayPeriodRules;IILandroid/icu/impl/DayPeriodRules$DayPeriod;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/DayPeriodRules;->add(IILandroid/icu/impl/DayPeriodRules$DayPeriod;)V

    return-void
.end method

.method private add(IILandroid/icu/impl/DayPeriodRules$DayPeriod;)V
    .locals 1

    :goto_0
    if-eq p1, p2, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 366
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aput-object p3, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getEndHourForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)I
    .locals 4

    .line 334
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 335
    :cond_0
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-ne p1, v0, :cond_1

    const/16 p0, 0xc

    return p0

    .line 337
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v0, v1

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-ne v1, p1, :cond_3

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_3

    :goto_0
    const/16 v0, 0x16

    if-gt v3, v0, :cond_5

    .line 340
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, v3

    if-eq v0, p1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz v2, :cond_5

    .line 347
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_4

    add-int/2addr v2, v3

    return v2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 354
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/DayPeriodRules;
    .locals 3

    .line 249
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "root"

    :cond_0
    const/4 v0, 0x0

    move-object v1, p0

    move-object p0, v0

    :cond_1
    if-nez p0, :cond_2

    .line 254
    sget-object p0, Landroid/icu/impl/DayPeriodRules;->DATA:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object p0, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->localesToRuleSetNumMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    .line 256
    invoke-static {v1}, Landroid/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    if-eqz p0, :cond_4

    .line 266
    sget-object v1, Landroid/icu/impl/DayPeriodRules;->DATA:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v1, v1, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    goto :goto_0

    .line 271
    :cond_3
    sget-object v0, Landroid/icu/impl/DayPeriodRules;->DATA:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v0, v0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getStartHourForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 311
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 312
    :cond_0
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-ne p1, v0, :cond_1

    const/16 p0, 0xc

    return p0

    .line 314
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v2, v0, v1

    const/16 v3, 0x17

    if-ne v2, p1, :cond_3

    aget-object v0, v0, v3

    if-ne v0, p1, :cond_3

    const/16 v0, 0x16

    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    .line 317
    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v2, v2, v0

    if-eq v2, p1, :cond_2

    add-int/2addr v0, v1

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gt v1, v3, :cond_5

    .line 323
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_4

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static loadData()Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;
    .locals 6

    .line 293
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;-><init>(Landroid/icu/impl/DayPeriodRules$1;)V

    .line 294
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x1

    const-string v4, "android/icu/impl/data/icudt60b"

    const-string v5, "dayPeriods"

    invoke-static {v4, v5, v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 300
    new-instance v4, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;

    invoke-direct {v4, v0, v1}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;-><init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;Landroid/icu/impl/DayPeriodRules$1;)V

    const-string/jumbo v5, "rules"

    .line 301
    invoke-virtual {v2, v5, v4}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 303
    iget v4, v0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->maxRuleSetNum:I

    add-int/2addr v4, v3

    new-array v3, v4, [Landroid/icu/impl/DayPeriodRules;

    iput-object v3, v0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    .line 304
    new-instance v3, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;

    invoke-direct {v3, v0, v1}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;-><init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;Landroid/icu/impl/DayPeriodRules$1;)V

    const-string v1, ""

    .line 305
    invoke-virtual {v2, v1, v3}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    return-object v0
.end method

.method private static parseSetNum(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "set"

    .line 371
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 376
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 372
    :cond_0
    new-instance p0, Landroid/icu/util/ICUException;

    const-string v0, "Set number should start with \"set\"."

    invoke-direct {p0, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDayPeriodForHour(I)Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .locals 0

    .line 360
    iget-object p0, p0, Landroid/icu/impl/DayPeriodRules;->dayPeriodForHour:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getMidPointForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)D
    .locals 5

    .line 275
    invoke-direct {p0, p1}, Landroid/icu/impl/DayPeriodRules;->getStartHourForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)I

    move-result v0

    .line 276
    invoke-direct {p0, p1}, Landroid/icu/impl/DayPeriodRules;->getEndHourForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)I

    move-result p0

    add-int p1, v0, p0

    int-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    if-le v0, p0, :cond_0

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    add-double/2addr v1, p0

    const-wide/high16 p0, 0x4038000000000000L    # 24.0

    cmpl-double v0, v1, p0

    if-ltz v0, :cond_0

    sub-double/2addr v1, p0

    :cond_0
    return-wide v1
.end method

.method public hasMidnight()Z
    .locals 0

    .line 358
    iget-boolean p0, p0, Landroid/icu/impl/DayPeriodRules;->hasMidnight:Z

    return p0
.end method

.method public hasNoon()Z
    .locals 0

    .line 359
    iget-boolean p0, p0, Landroid/icu/impl/DayPeriodRules;->hasNoon:Z

    return p0
.end method
