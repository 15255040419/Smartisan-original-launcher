.class public Landroid/icu/text/DateIntervalInfo;
.super Ljava/lang/Object;
.source "DateIntervalInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateIntervalInfo$DateIntervalSink;,
        Landroid/icu/text/DateIntervalInfo$PatternInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/DateIntervalInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

.field private static CALENDAR_KEY:Ljava/lang/String; = null

.field private static final DIICACHE:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static EARLIEST_FIRST_PREFIX:Ljava/lang/String; = null

.field private static FALLBACK_STRING:Ljava/lang/String; = null

.field private static INTERVAL_FORMATS_KEY:Ljava/lang/String; = null

.field private static LATEST_FIRST_PREFIX:Ljava/lang/String; = null

.field private static final MINIMUM_SUPPORTED_CALENDAR_FIELD:I = 0xd

.field static final currentSerialVersion:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fFallbackIntervalPattern:Ljava/lang/String;

.field private fFirstDateInPtnIsLaterDate:Z

.field private fIntervalPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient fIntervalPatternsReadOnly:Z

.field private volatile transient frozen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-string v0, "G"

    const-string/jumbo v1, "y"

    const-string v2, "M"

    const-string/jumbo v3, "w"

    const-string v4, "W"

    const-string v5, "d"

    const-string v6, "D"

    const-string v7, "E"

    const-string v8, "F"

    const-string v9, "a"

    const-string v10, "h"

    const-string v11, "H"

    const-string v12, "m"

    const-string/jumbo v13, "s"

    const-string v14, "S"

    const-string/jumbo v15, "z"

    const-string v16, " "

    const-string v17, "Y"

    const-string v18, "e"

    const-string/jumbo v19, "u"

    const-string v20, "g"

    const-string v21, "A"

    const-string v22, " "

    const-string v23, " "

    .line 280
    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const-string v0, "calendar"

    .line 298
    sput-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    const-string v0, "intervalFormats"

    .line 299
    sput-object v0, Landroid/icu/text/DateIntervalInfo;->INTERVAL_FORMATS_KEY:Ljava/lang/String;

    const-string v0, "fallback"

    .line 300
    sput-object v0, Landroid/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    const-string v0, "latestFirst:"

    .line 301
    sput-object v0, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    const-string v0, "earliestFirst:"

    .line 302
    sput-object v0, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    .line 305
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    const/4 v1, 0x0

    .line 314
    iput-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 316
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    .line 322
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const-string/jumbo v0, "{0} \u2013 {1}"

    .line 344
    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    const/4 v1, 0x0

    .line 314
    iput-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 316
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    .line 322
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 356
    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo;->initializeData(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 368
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 160
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->INTERVAL_FORMATS_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 160
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/icu/text/DateIntervalInfo;)Ljava/util/Map;
    .locals 0

    .line 160
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Landroid/icu/text/DateIntervalInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p0

    return-object p0
.end method

.method private static cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation

    .line 956
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 957
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 958
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 959
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 960
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 961
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 962
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 963
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 964
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 966
    :cond_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private cloneUnfrozenDII()Ljava/lang/Object;
    .locals 3

    .line 935
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    .line 936
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 937
    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    iput-boolean v1, v0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 938
    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 939
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iput-object p0, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const/4 p0, 0x1

    .line 940
    iput-boolean p0, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    goto :goto_0

    .line 942
    :cond_0
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-static {p0}, Landroid/icu/text/DateIntervalInfo;->cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 943
    iput-boolean v2, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 945
    :goto_0
    iput-boolean v2, v0, Landroid/icu/text/DateIntervalInfo;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 949
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string v1, "clone is not supported"

    invoke-direct {v0, v1, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 821
    invoke-static {p0}, Landroid/icu/text/DateIntervalInfo;->splitPatternInto2Part(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 823
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 825
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 826
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 829
    :goto_0
    new-instance v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    invoke-direct {v0, v1, p0, p1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private initializeData(Landroid/icu/util/ULocale;)V
    .locals 2

    .line 377
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalInfo;

    if-nez v1, :cond_0

    .line 381
    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo;->setup(Landroid/icu/util/ULocale;)V

    const/4 p1, 0x1

    .line 383
    iput-boolean p1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 385
    sget-object p1, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-direct {p0, v1}, Landroid/icu/text/DateIntervalInfo;->initializeFromReadOnlyPatterns(Landroid/icu/text/DateIntervalInfo;)V

    :goto_0
    return-void
.end method

.method private initializeFromReadOnlyPatterns(Landroid/icu/text/DateIntervalInfo;)V
    .locals 1

    .line 398
    iget-object v0, p1, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 399
    iget-boolean v0, p1, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 400
    iget-object p1, p1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iput-object p1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const/4 p1, 0x1

    .line 401
    iput-boolean p1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    return-void
.end method

.method static parseSkeleton(Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x0

    .line 1010
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1011
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x41

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V
    .locals 0

    .line 803
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 804
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .locals 6

    .line 766
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 772
    :goto_0
    iget-boolean v4, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 774
    sget-object v5, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 776
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 777
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    move v1, v2

    goto :goto_1

    .line 778
    :cond_1
    sget-object v5, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 780
    sget-object v4, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 781
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    move v1, v4

    .line 783
    :goto_1
    invoke-static {p3, v1}, Landroid/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p3

    .line 785
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v2, :cond_3

    .line 787
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p3
.end method

.method private setup(Landroid/icu/util/ULocale;)V
    .locals 5

    const-string v0, "calendar"

    const-string v1, "/"

    .line 564
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const-string/jumbo v2, "{0} \u2013 {1}"

    .line 567
    iput-object v2, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 571
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 574
    invoke-static {v0, p1, v2}, Landroid/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 575
    aget-object v2, v0, v2

    :cond_0
    if-nez v2, :cond_1

    const-string v2, "gregorian"

    .line 582
    :cond_1
    new-instance v0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;

    invoke-direct {v0, p0}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;-><init>(Landroid/icu/text/DateIntervalInfo;)V

    const-string v3, "android/icu/impl/data/icudt60b"

    .line 584
    invoke-static {v3, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/text/DateIntervalInfo;->INTERVAL_FORMATS_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 589
    invoke-virtual {p0, v3}, Landroid/icu/text/DateIntervalInfo;->setFallbackIntervalPattern(Ljava/lang/String;)V

    .line 592
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-eqz v2, :cond_3

    .line 596
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 601
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-virtual {p1, v2, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 608
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->getAndResetNextCalendarType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 597
    :cond_2
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loop in calendar type fallback: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private static splitPatternInto2Part(Ljava/lang/String;)I
    .locals 11

    const/16 v0, 0x3a

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 640
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x41

    const/4 v8, 0x1

    if-ge v2, v6, :cond_6

    .line 641
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_0

    if-lez v4, :cond_0

    add-int/lit8 v9, v3, -0x41

    .line 645
    aget v10, v0, v9

    if-nez v10, :cond_7

    .line 647
    aput v8, v0, v9

    move v4, v1

    :cond_0
    const/16 v9, 0x27

    if-ne v6, v9, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 657
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 658
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    xor-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-nez v5, :cond_5

    const/16 v9, 0x61

    if-lt v6, v9, :cond_3

    const/16 v9, 0x7a

    if-le v6, v9, :cond_4

    :cond_3
    if-lt v6, v7, :cond_5

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    :cond_5
    :goto_1
    add-int/2addr v2, v8

    goto :goto_0

    :cond_6
    move v8, v1

    :cond_7
    if-lez v4, :cond_8

    if-nez v8, :cond_8

    sub-int/2addr v3, v7

    .line 676
    aget p0, v0, v3

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v4

    :goto_2
    sub-int/2addr v2, v1

    return v2
.end method

.method private static stringNumeric(IIC)Z
    .locals 1

    const/16 v0, 0x4d

    if-ne p2, v0, :cond_2

    const/4 p2, 0x2

    if-gt p0, p2, :cond_0

    if-gt p1, p2, :cond_1

    :cond_0
    if-le p0, p2, :cond_2

    if-gt p1, p2, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 921
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 924
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/DateIntervalInfo;->cloneUnfrozenDII()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public cloneAsThawed()Landroid/icu/text/DateIntervalInfo;
    .locals 0

    .line 996
    invoke-direct {p0}, Landroid/icu/text/DateIntervalInfo;->cloneUnfrozenDII()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateIntervalInfo;

    return-object p0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->cloneAsThawed()Landroid/icu/text/DateIntervalInfo;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1129
    instance-of v0, p1, Landroid/icu/text/DateIntervalInfo;

    if-eqz v0, :cond_0

    .line 1130
    check-cast p1, Landroid/icu/text/DateIntervalInfo;

    .line 1131
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iget-object p1, p1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public freeze()Landroid/icu/text/DateIntervalInfo;
    .locals 1

    const/4 v0, 0x1

    .line 986
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 987
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    move-result-object p0

    return-object p0
.end method

.method getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    .locals 16

    move-object/from16 v0, p1

    const/16 v1, 0x3a

    new-array v2, v1, [I

    new-array v1, v1, [I

    const/16 v3, 0x7a

    .line 1068
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v4, v6, :cond_0

    const/16 v4, 0x76

    .line 1069
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v0

    move v4, v7

    .line 1073
    :goto_0
    invoke-static {v3, v2}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    const v3, 0x7fffffff

    move-object/from16 v8, p0

    .line 1080
    iget-object v8, v8, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v3

    move v3, v7

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move v11, v7

    .line 1082
    :goto_1
    array-length v12, v1

    if-ge v11, v12, :cond_2

    .line 1083
    aput v7, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1085
    :cond_2
    invoke-static {v10, v1}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    move v11, v7

    move v12, v11

    const/4 v13, 0x1

    .line 1089
    :goto_2
    array-length v14, v2

    if-ge v11, v14, :cond_7

    .line 1090
    aget v14, v2, v11

    .line 1091
    aget v15, v1, v11

    if-ne v14, v15, :cond_3

    goto :goto_4

    :cond_3
    if-nez v14, :cond_4

    :goto_3
    add-int/lit16 v12, v12, 0x1000

    move v13, v6

    goto :goto_4

    :cond_4
    if-nez v15, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v11, 0x41

    int-to-char v5, v5

    .line 1101
    invoke-static {v14, v15, v5}, Landroid/icu/text/DateIntervalInfo;->stringNumeric(IIC)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit16 v12, v12, 0x100

    goto :goto_4

    :cond_6
    sub-int/2addr v14, v15

    .line 1105
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v12, v5

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    if-ge v12, v9, :cond_8

    move-object v0, v10

    move v9, v12

    move v3, v13

    :cond_8
    if-nez v12, :cond_1

    move v3, v7

    :cond_9
    if-eqz v4, :cond_a

    if-eq v3, v6, :cond_a

    const/4 v3, 0x2

    .line 1121
    :cond_a
    new-instance v1, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    invoke-direct {v1, v0, v3}, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getDefaultOrder()Z
    .locals 0

    .line 910
    iget-boolean p0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    return p0
.end method

.method public getFallbackIntervalPattern()Ljava/lang/String;
    .locals 0

    .line 866
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .locals 1

    const/16 v0, 0xd

    if-gt p2, v0, :cond_1

    .line 847
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 849
    sget-object p1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p1, p1, p2

    .line 850
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 845
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no support for field less than SECOND"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPatterns()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1151
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1152
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRawPatterns()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1166
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1167
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 0

    .line 1141
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 978
    iget-boolean p0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    return p0
.end method

.method public setFallbackIntervalPattern(Ljava/lang/String;)V
    .locals 3

    .line 886
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "{0}"

    .line 889
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "{1}"

    .line 890
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eq v1, v2, :cond_1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 895
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 897
    :cond_0
    iput-object p1, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    return-void

    .line 892
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no pattern {0} or pattern {1} in fallbackPattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 887
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "no modification is allowed after DII is frozen"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIntervalPattern(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 721
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    if-nez v0, :cond_5

    const/16 v0, 0xd

    if-gt p2, v0, :cond_4

    .line 727
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-static {v0}, Landroid/icu/text/DateIntervalInfo;->cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    const/4 v0, 0x0

    .line 729
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 731
    :cond_0
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p3

    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    .line 735
    sget-object p2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v0, 0x9

    aget-object p2, p2, v0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    .line 738
    sget-object p2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v0, 0xa

    aget-object p2, p2, v0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/4 v1, 0x7

    if-ne p2, v1, :cond_3

    .line 743
    :cond_2
    sget-object p2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    :cond_3
    :goto_0
    return-void

    .line 725
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "calendar field is larger than MINIMUM_SUPPORTED_CALENDAR_FIELD"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 722
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "no modification is allowed after DII is frozen"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
