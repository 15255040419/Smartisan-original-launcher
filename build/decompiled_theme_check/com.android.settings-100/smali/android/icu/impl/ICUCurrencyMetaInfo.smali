.class public Landroid/icu/impl/ICUCurrencyMetaInfo;
.super Landroid/icu/text/CurrencyMetaInfo;
.source "ICUCurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    }
.end annotation


# static fields
.field private static final Currency:I = 0x2

.field private static final Date:I = 0x4

.field private static final Everything:I = 0x7fffffff

.field private static final MASK:J = 0xffffffffL

.field private static final Region:I = 0x1

.field private static final Tender:I = 0x8


# instance fields
.field private digitInfo:Landroid/icu/impl/ICUResourceBundle;

.field private regionInfo:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Landroid/icu/text/CurrencyMetaInfo;-><init>()V

    .line 30
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b/curr"

    const-string/jumbo v2, "supplementalData"

    invoke-static {v1, v2, v0}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    const-string v1, "CurrencyMap"

    .line 33
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    const-string v1, "CurrencyMeta"

    .line 34
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    return-void
.end method

.method private collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector<",
            "TT;>;",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 79
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p2

    .line 81
    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collects()I

    move-result v0

    .line 82
    iget-object v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 85
    :cond_1
    iget-object v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 88
    :cond_2
    iget-wide v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-wide v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 91
    :cond_4
    iget-boolean v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    :cond_5
    if-eqz v0, :cond_7

    .line 96
    iget-object v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 97
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    iget-object v2, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 99
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 103
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v2, v1}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    invoke-direct {p0, p1, p2, v0, v2}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_7
    :goto_1
    invoke-interface {p1}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector<",
            "TT;>;",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            "I",
            "Landroid/icu/impl/ICUResourceBundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 114
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    if-ne v2, v13, :cond_0

    .line 116
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v8}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    return-void

    :cond_0
    const/4 v14, 0x0

    move v15, v14

    .line 120
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    if-ge v15, v3, :cond_9

    move-object/from16 v11, p4

    .line 121
    invoke-virtual {v11, v15}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v4, 0x0

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_2

    const-string v4, "id"

    .line 134
    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    .line 135
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    .line 136
    iget-object v5, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_4

    :cond_2
    move-object v5, v4

    and-int/lit8 v4, v2, 0x4

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v8, -0x8000000000000000L

    if-eqz v4, :cond_4

    const-string v4, "from"

    .line 142
    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    invoke-direct {v0, v4, v8, v9, v14}, Landroid/icu/impl/ICUCurrencyMetaInfo;->getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J

    move-result-wide v8

    const-string/jumbo v4, "to"

    .line 143
    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    invoke-direct {v0, v4, v6, v7, v13}, Landroid/icu/impl/ICUCurrencyMetaInfo;->getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J

    move-result-wide v6

    .line 148
    iget-wide v13, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    cmp-long v4, v13, v6

    if-lez v4, :cond_3

    goto :goto_4

    .line 151
    :cond_3
    iget-wide v13, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    cmp-long v4, v13, v8

    if-gez v4, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v16, v6

    move-wide v6, v8

    move-wide/from16 v8, v16

    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_8

    const-string/jumbo v4, "tender"

    .line 156
    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 157
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    .line 158
    :goto_2
    iget-boolean v4, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v13, v3

    goto :goto_3

    :cond_8
    const/4 v13, 0x1

    :goto_3
    move-object/from16 v3, p1

    move-object v4, v12

    move v10, v15

    move v11, v13

    .line 164
    invoke-interface/range {v3 .. v11}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J
    .locals 2

    if-nez p1, :cond_0

    return-wide p2

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object p0

    const/4 p1, 0x0

    .line 174
    aget p1, p0, p1

    int-to-long p1, p1

    const/16 p3, 0x20

    shl-long/2addr p1, p3

    const/4 p3, 0x1

    aget p0, p0, p3

    int-to-long p3, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p3, v0

    or-long p0, p1, p3

    return-wide p0
.end method


# virtual methods
.method public currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
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

    .line 44
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo$1;)V

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public currencyDigits(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 1

    .line 54
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUCurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object p0

    return-object p0
.end method

.method public currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 2

    .line 59
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 61
    iget-object p0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    const-string p1, "DEFAULT"

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object p0

    .line 64
    sget-object p1, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    if-ne p2, p1, :cond_1

    .line 65
    new-instance p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    const/4 p2, 0x2

    aget p2, p0, p2

    const/4 v0, 0x3

    aget p0, p0, v0

    invoke-direct {p1, p2, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object p1

    .line 66
    :cond_1
    sget-object p1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_2

    .line 67
    new-instance p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    aget p2, p0, v1

    aget p0, p0, v0

    invoke-direct {p1, p2, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object p1

    .line 69
    :cond_2
    new-instance p1, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    aget p2, p0, v1

    aget p0, p0, v0

    invoke-direct {p1, p2, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object p1
.end method

.method public currencyInfo(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
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

    .line 39
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo$1;)V

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public regions(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
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

    .line 49
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo$1;)V

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
