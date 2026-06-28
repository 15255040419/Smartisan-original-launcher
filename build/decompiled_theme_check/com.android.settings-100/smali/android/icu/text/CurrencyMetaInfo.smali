.class public Landroid/icu/text/CurrencyMetaInfo;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;,
        Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;,
        Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    }
.end annotation


# static fields
.field protected static final defaultDigits:Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final hasData:Z

.field private static final impl:Landroid/icu/text/CurrencyMetaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 520
    new-instance v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    sput-object v0, Landroid/icu/text/CurrencyMetaInfo;->defaultDigits:Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    :try_start_0
    const-string v0, "android.icu.impl.ICUCurrencyMetaInfo"

    .line 526
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CurrencyMetaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    .line 530
    :catchall_0
    new-instance v0, Landroid/icu/text/CurrencyMetaInfo;

    invoke-direct {v0}, Landroid/icu/text/CurrencyMetaInfo;-><init>()V

    .line 532
    :goto_0
    sput-object v0, Landroid/icu/text/CurrencyMetaInfo;->impl:Landroid/icu/text/CurrencyMetaInfo;

    .line 533
    sput-boolean v1, Landroid/icu/text/CurrencyMetaInfo;->hasData:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->debugString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dateString(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/impl/Grego;->timeToString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static debugString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 546
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 547
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 550
    instance-of v7, v6, Ljava/util/Date;

    if-eqz v7, :cond_0

    .line 551
    check-cast v6, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/icu/text/CurrencyMetaInfo;->dateString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 552
    :cond_0
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_1

    .line 553
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/icu/text/CurrencyMetaInfo;->dateString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 555
    :cond_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_2

    goto :goto_2

    .line 560
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, ","

    .line 561
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_3
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=\'"

    .line 564
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    .line 566
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    :catchall_0
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 572
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Landroid/icu/text/CurrencyMetaInfo;
    .locals 1

    .line 43
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo;->impl:Landroid/icu/text/CurrencyMetaInfo;

    return-object v0
.end method

.method public static getInstance(Z)Landroid/icu/text/CurrencyMetaInfo;
    .locals 0

    .line 53
    sget-boolean p0, Landroid/icu/text/CurrencyMetaInfo;->hasData:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroid/icu/text/CurrencyMetaInfo;->impl:Landroid/icu/text/CurrencyMetaInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static hasData()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    sget-boolean v0, Landroid/icu/text/CurrencyMetaInfo;->hasData:Z

    return v0
.end method


# virtual methods
.method public currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 479
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public currencyDigits(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 1

    .line 502
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object p0

    return-object p0
.end method

.method public currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 0

    .line 512
    sget-object p0, Landroid/icu/text/CurrencyMetaInfo;->defaultDigits:Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    return-object p0
.end method

.method public currencyInfo(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation

    .line 467
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public regions(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
