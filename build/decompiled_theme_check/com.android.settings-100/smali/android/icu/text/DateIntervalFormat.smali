.class public Landroid/icu/text/DateIntervalFormat;
.super Landroid/icu/text/UFormat;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;,
        Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    }
.end annotation


# static fields
.field private static LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fDateFormat:Landroid/icu/text/SimpleDateFormat;

.field private fDatePattern:Ljava/lang/String;

.field private fDateTimeFormat:Ljava/lang/String;

.field private fFromCalendar:Landroid/icu/util/Calendar;

.field private fInfo:Landroid/icu/text/DateIntervalInfo;

.field private transient fIntervalPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fSkeleton:Ljava/lang/String;

.field private fTimePattern:Ljava/lang/String;

.field private fToCalendar:Landroid/icu/util/Calendar;

.field private isDateIntervalInfoDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 300
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 354
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 340
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    .line 345
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 347
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;Landroid/icu/text/SimpleDateFormat;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 340
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    .line 345
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 347
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 378
    iput-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    .line 380
    invoke-virtual {p2}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    .line 381
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 382
    iput-object p2, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    const/4 p1, 0x0

    .line 383
    iput-boolean p1, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    .line 384
    iget-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/Calendar;

    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    .line 385
    iget-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/Calendar;

    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    .line 386
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/SimpleDateFormat;)V
    .locals 1

    .line 391
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 340
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    .line 345
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 347
    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 392
    iput-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    .line 393
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 394
    new-instance p1, Landroid/icu/text/DateIntervalInfo;

    invoke-direct {p1, p2}, Landroid/icu/text/DateIntervalInfo;-><init>(Landroid/icu/util/ULocale;)V

    invoke-virtual {p1}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    const/4 p1, 0x1

    .line 395
    iput-boolean p1, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    .line 396
    iget-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/Calendar;

    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    .line 397
    iget-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/icu/text/SimpleDateFormat;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/Calendar;

    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    .line 398
    sget-object p1, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    return-void
.end method

.method private static adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x3a

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 1730
    invoke-static {p0, v1}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    .line 1731
    invoke-static {p1, v0}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    const/4 p0, 0x2

    const/16 p1, 0x7a

    if-ne p3, p0, :cond_1

    const/16 p0, 0x76

    .line 1733
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 1736
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 p3, 0x0

    move v2, p2

    move p2, p3

    move v3, p2

    move v4, v3

    move v5, v4

    :goto_0
    const/16 v6, 0x4d

    const/16 v7, 0x4c

    const/16 v8, 0x41

    if-ge p2, v2, :cond_b

    .line 1747
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-eq v9, v4, :cond_5

    if-lez v3, :cond_5

    if-ne v4, v7, :cond_2

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    sub-int/2addr v6, v8

    .line 1755
    aget v7, v0, v6

    .line 1756
    aget v6, v1, v6

    if-ne v7, v3, :cond_4

    if-le v6, v7, :cond_4

    sub-int/2addr v6, v7

    move v3, p3

    :goto_2
    if-ge v3, v6, :cond_3

    .line 1760
    invoke-virtual {p0, p2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr p2, v6

    add-int/2addr v2, v6

    :cond_4
    move v3, p3

    :cond_5
    const/16 v6, 0x27

    if-ne v9, v6, :cond_7

    add-int/lit8 v7, p2, 0x1

    .line 1770
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_6

    move p2, v7

    goto :goto_3

    :cond_6
    xor-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    if-nez v5, :cond_a

    const/16 v6, 0x61

    if-lt v9, v6, :cond_8

    if-le v9, p1, :cond_9

    :cond_8
    if-lt v9, v8, :cond_a

    const/16 v6, 0x5a

    if-gt v9, v6, :cond_a

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move v4, v9

    :cond_a
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_b
    if-lez v3, :cond_d

    if-ne v4, v7, :cond_c

    goto :goto_4

    :cond_c
    move v6, v4

    :goto_4
    sub-int/2addr v6, v8

    .line 1791
    aget p1, v0, v6

    .line 1792
    aget p2, v1, v6

    if-ne p1, v3, :cond_d

    if-le p2, p1, :cond_d

    sub-int/2addr p2, p1

    :goto_5
    if-ge p3, p2, :cond_d

    .line 1796
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 1800
    :cond_d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private adjustPosition(Ljava/lang/String;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/text/FieldPosition;)V
    .locals 1

    const-string/jumbo p0, "{0}"

    .line 794
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const-string/jumbo v0, "{1}"

    .line 795
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p0, :cond_4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p0, p1, :cond_2

    .line 801
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p4

    if-lez p4, :cond_1

    .line 802
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p6, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 803
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p6, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    if-lez p0, :cond_4

    .line 806
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    add-int/2addr p1, p0

    .line 807
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p6, p0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 808
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p6, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0

    .line 811
    :cond_2
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p2

    if-lez p2, :cond_3

    .line 812
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p6, p0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 813
    invoke-virtual {p5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p6, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0

    .line 814
    :cond_3
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    if-lez p1, :cond_4

    .line 816
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    add-int/2addr p0, p1

    .line 817
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p6, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 818
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p6, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)V"
        }
    .end annotation

    .line 1821
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, p0, p3

    .line 1822
    invoke-interface {p4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    if-eqz p0, :cond_0

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    .line 1826
    invoke-static {p1, v1, v1, v2}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1829
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result p0

    .line 1828
    invoke-static {p1, p0}, Landroid/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p0

    .line 1830
    sget-object p1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p1, p1, p3

    invoke-interface {p4, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz p3, :cond_0

    .line 845
    iget-object v0, v7, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    if-eqz v12, :cond_1

    .line 848
    iget-object v0, v7, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 849
    iget-object v1, v7, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v2, v7, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v13, v0

    .line 851
    new-instance v14, Ljava/text/FieldPosition;

    invoke-virtual/range {p5 .. p5}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    invoke-direct {v14, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 852
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v15, 0x40

    invoke-direct {v0, v15}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 853
    iget-object v1, v7, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v6, p5

    invoke-virtual {v1, v8, v0, v6}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 854
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v15}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 855
    iget-object v1, v7, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0, v14}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 856
    iget-object v0, v7, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo;->getFallbackIntervalPattern()Ljava/lang/String;

    move-result-object v5

    .line 857
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v3, p5

    move-object v15, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DateIntervalFormat;->adjustPosition(Ljava/lang/String;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/text/FieldPosition;)V

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/CharSequence;

    aput-object v16, v0, v11

    aput-object v17, v0, v10

    .line 858
    invoke-static {v15, v6, v6, v0}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    if-eqz v12, :cond_2

    .line 862
    iget-object v0, v7, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v1, v7, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 863
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 864
    invoke-virtual {v14, v11}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 865
    invoke-virtual {v14, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 866
    iget-object v1, v7, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v8, v0, v14}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 867
    iget-object v1, v7, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v15

    move-object/from16 v3, p5

    move-object v5, v14

    move v14, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DateIntervalFormat;->adjustPosition(Ljava/lang/String;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/lang/String;Ljava/text/FieldPosition;Ljava/text/FieldPosition;)V

    .line 869
    new-instance v0, Landroid/icu/text/MessageFormat;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 870
    iget-object v1, v7, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    sget-object v2, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V

    .line 871
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v15, v2, v11

    aput-object v8, v2, v10

    .line 872
    new-instance v3, Ljava/text/FieldPosition;

    invoke-direct {v3, v11}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 876
    :cond_2
    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v12, :cond_3

    .line 879
    iget-object v0, v7, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0, v13}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    :cond_3
    return-object v9
.end method

.method private final fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 2

    .line 908
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 909
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, p6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 910
    invoke-direct/range {p0 .. p5}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 911
    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-object p4
.end method

.method private static fieldExistsInSkeleton(ILjava/lang/String;)Z
    .locals 1

    .line 1846
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, v0, p0

    .line 1847
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ")V"
        }
    .end annotation

    .line 1286
    invoke-virtual {p4, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1291
    new-instance p4, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 1292
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result p0

    const/4 v0, 0x0

    invoke-direct {p4, v0, p2, p0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1293
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-interface {p3, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;)",
            "Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;"
        }
    .end annotation

    .line 1602
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v0, p3, p1}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1606
    invoke-static {p3, p1}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    new-instance p2, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object p3, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    .line 1608
    invoke-virtual {p3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 1610
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result p0

    invoke-direct {p2, p3, v1, p0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1611
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-interface {p5, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 1621
    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    const/16 p2, 0xa

    invoke-virtual {p0, p3, p2}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1625
    sget-object p2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p1, p2, p1

    invoke-interface {p5, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 1637
    :cond_2
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1643
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v0, p3, p1}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    .line 1647
    iget-object p4, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {p4, p2}, Landroid/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    move-result-object p4

    .line 1648
    iget-object v2, p4, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    .line 1649
    iget p4, p4, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    .line 1650
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    if-eq p4, v3, :cond_3

    .line 1651
    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {p0, v2, p1}, Landroid/icu/text/DateIntervalInfo;->getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p0

    move-object v0, p0

    move-object p3, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 1656
    new-instance v1, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    invoke-direct {v1, p2, p3}, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    .line 1662
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object p0

    .line 1661
    invoke-static {p2, p3, p0, p4}, Landroid/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1664
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v2

    .line 1663
    invoke-static {p2, p3, v2, p4}, Landroid/icu/text/DateIntervalFormat;->adjustFieldWidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1665
    new-instance p3, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 1666
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result p4

    invoke-direct {p3, p0, p2, p4}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move-object p3, v0

    .line 1671
    :goto_0
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-interface {p5, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v1
.end method

.method private genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ")Z"
        }
    .end annotation

    .line 1514
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v6, p2

    goto :goto_0

    :cond_0
    move-object v6, p1

    .line 1529
    :goto_0
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v1, v6}, Landroid/icu/text/DateIntervalInfo;->getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    move-result-object v1

    .line 1530
    iget-object v7, v1, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    .line 1531
    iget v8, v1, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    .line 1535
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1536
    invoke-virtual {p4, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 1538
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1539
    invoke-virtual {p4, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    :cond_2
    const/4 v0, -0x1

    if-ne v8, v0, :cond_3

    const/4 v0, 0x0

    return v0

    .line 1554
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    move-object v5, p3

    .line 1556
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    const/4 v1, 0x2

    .line 1557
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1562
    iget-object v1, v0, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->skeleton:Ljava/lang/String;

    .line 1563
    iget-object v0, v0, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->bestMatchSkeleton:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    goto :goto_1

    :cond_4
    move-object v2, v6

    move-object v3, v7

    :goto_1
    const/4 v1, 0x1

    move-object v0, p0

    move v4, v8

    move-object v5, p3

    .line 1565
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    goto :goto_2

    :cond_5
    const/16 v1, 0xc

    move-object v0, p0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    move-object v5, p3

    .line 1567
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    const/16 v1, 0xa

    .line 1568
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    const/16 v1, 0x9

    .line 1569
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateIntervalFormat;->genIntervalPattern(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;

    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method private getConcatenationPattern(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    const-string p0, "android/icu/impl/data/icudt60b"

    .line 1265
    invoke-static {p0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    const-string p1, "calendar/gregorian/DateTimePatterns"

    .line 1266
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    const/16 p1, 0x8

    .line 1267
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    .line 1268
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result p1

    if-nez p1, :cond_0

    .line 1269
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1271
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1357
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v5, v15, :cond_0

    move-object/from16 v15, p0

    .line 1358
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    add-int/lit8 v14, v14, 0x1

    .line 1413
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1373
    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v13, v13, 0x1

    .line 1417
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1408
    :pswitch_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1400
    :pswitch_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1365
    :pswitch_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1397
    :pswitch_7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1369
    :pswitch_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1404
    :pswitch_9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1361
    :pswitch_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1392
    :pswitch_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1393
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1427
    :pswitch_c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1428
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_1

    const/16 v2, 0x79

    .line 1436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x5

    const/4 v2, 0x3

    if-eqz v9, :cond_3

    const/16 v4, 0x4d

    if-ge v9, v2, :cond_2

    .line 1441
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_3

    if-ge v5, v0, :cond_3

    .line 1444
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-eqz v7, :cond_5

    const/16 v4, 0x45

    if-gt v7, v2, :cond_4

    .line 1450
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v7, :cond_5

    if-ge v2, v0, :cond_5

    .line 1453
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    if-eqz v10, :cond_6

    const/16 v0, 0x64

    .line 1458
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v8, :cond_7

    const/16 v0, 0x48

    .line 1463
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_7
    if-eqz v11, :cond_8

    const/16 v0, 0x68

    .line 1466
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    :goto_7
    if-eqz v12, :cond_9

    const/16 v0, 0x6d

    .line 1469
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v14, :cond_a

    const/16 v0, 0x7a

    .line 1472
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v13, :cond_b

    const/16 v0, 0x76

    .line 1475
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_b
        :pswitch_6
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final getInstance(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat;
    .locals 1

    .line 417
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .locals 1

    .line 492
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;
    .locals 3

    .line 470
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 471
    new-instance v1, Landroid/icu/text/DateIntervalFormat;

    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    invoke-direct {v1, p0, p1, v2}, Landroid/icu/text/DateIntervalFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/SimpleDateFormat;)V

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .locals 3

    .line 560
    invoke-virtual {p2}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/text/DateIntervalInfo;

    .line 561
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 562
    new-instance v1, Landroid/icu/text/DateIntervalFormat;

    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    invoke-direct {v1, p0, p2, v2}, Landroid/icu/text/DateIntervalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateIntervalInfo;Landroid/icu/text/SimpleDateFormat;)V

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateIntervalFormat;
    .locals 0

    .line 435
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;
    .locals 0

    .line 514
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/DateIntervalInfo;)Landroid/icu/text/DateIntervalFormat;

    move-result-object p0

    return-object p0
.end method

.method private initializeIntervalPattern(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation

    .line 1093
    invoke-static {p2}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 1094
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1097
    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getSkeleton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 1099
    :cond_0
    iget-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    .line 1101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1122
    invoke-static {p1, v2, v3, v4, v5}, Landroid/icu/text/DateIntervalFormat;->getDateTimeSkeleton(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 1125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 1136
    invoke-direct {p0, p2}, Landroid/icu/text/DateIntervalFormat;->getConcatenationPattern(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 1139
    :cond_1
    invoke-direct {p0, v3, v5, v1, v0}, Landroid/icu/text/DateIntervalFormat;->genSeparateDateTimePtn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)Z

    move-result p2

    const/4 v3, 0x0

    const-string/jumbo v5, "yMd"

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x5

    if-nez p2, :cond_3

    .line 1148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 1154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1155
    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1160
    new-instance p2, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 1161
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result p0

    invoke-direct {p2, v3, p1, p0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1162
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, p0, v10

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, p0, v9

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, p0, v8

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1

    .line 1183
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    .line 1185
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_5

    .line 1198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1199
    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1204
    new-instance p2, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 1205
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->getDefaultOrder()Z

    move-result p0

    invoke-direct {p2, v3, p1, p0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1206
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, p0, v10

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, p0, v9

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p0, p0, v8

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1224
    :cond_5
    invoke-static {v10, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1228
    invoke-direct {p0, v10, p1, v1, v0}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    .line 1230
    :cond_6
    invoke-static {v9, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1234
    invoke-direct {p0, v9, p1, v1, v0}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    .line 1236
    :cond_7
    invoke-static {v8, v6}, Landroid/icu/text/DateIntervalFormat;->fieldExistsInSkeleton(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1240
    invoke-direct {p0, v8, p1, v1, v0}, Landroid/icu/text/DateIntervalFormat;->genFallbackPattern(ILjava/lang/String;Ljava/util/Map;Landroid/icu/text/DateTimePatternGenerator;)V

    .line 1247
    :cond_8
    iget-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    if-nez p1, :cond_9

    const-string/jumbo p1, "{1} {0}"

    .line 1248
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    .line 1250
    :cond_9
    invoke-virtual {v0, v6}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1251
    iget-object p2, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 1252
    iget-object p2, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 1253
    iget-object p2, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/icu/text/DateIntervalFormat;->concatSingleDate2TimeInterval(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    :goto_0
    return-object v1
.end method

.method private initializePattern(Landroid/icu/impl/ICUCache;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 1033
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1037
    iget-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    const-string v3, "+"

    if-eqz v2, :cond_0

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/DateIntervalFormat;->fSkeleton:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1040
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1042
    :goto_0
    invoke-interface {p1, v2}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-nez v2, :cond_2

    .line 1045
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DateIntervalFormat;->initializeIntervalPattern(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/util/Map;

    move-result-object v0

    .line 1046
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 1048
    invoke-interface {p1, v3, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1051
    :cond_2
    iput-object v2, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1856
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1857
    iget-boolean p1, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    if-eqz p1, :cond_0

    sget-object p1, Landroid/icu/text/DateIntervalFormat;->LOCAL_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    .line 572
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalFormat;

    .line 573
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Landroid/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/SimpleDateFormat;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    .line 574
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalInfo;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    .line 575
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    .line 576
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    .line 577
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDatePattern:Ljava/lang/String;

    .line 578
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fTimePattern:Ljava/lang/String;

    .line 579
    iget-object v1, p0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalFormat;->fDateTimeFormat:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    monitor-enter p0

    .line 701
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    .line 708
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    const/4 v7, 0x5

    const/4 v9, 0x2

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/4 v14, 0x1

    if-eq v2, v4, :cond_0

    move v7, v1

    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 711
    invoke-virtual {v3, v14}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_1

    move v7, v14

    goto :goto_0

    .line 713
    :cond_1
    invoke-virtual {v0, v9}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 714
    invoke-virtual {v3, v9}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_2

    move v7, v9

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {v0, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 717
    invoke-virtual {v3, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_3

    goto :goto_0

    .line 719
    :cond_3
    invoke-virtual {v0, v13}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 720
    invoke-virtual {v3, v13}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_4

    move v7, v13

    goto :goto_0

    .line 722
    :cond_4
    invoke-virtual {v0, v12}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 723
    invoke-virtual {v3, v12}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_5

    move v7, v12

    goto :goto_0

    .line 725
    :cond_5
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 726
    invoke-virtual {v3, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_6

    move v7, v11

    goto :goto_0

    .line 728
    :cond_6
    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 729
    invoke-virtual {v3, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_e

    move v7, v10

    :goto_0
    if-eq v7, v13, :cond_8

    if-eq v7, v12, :cond_8

    if-eq v7, v11, :cond_8

    if-ne v7, v10, :cond_7

    goto :goto_1

    :cond_7
    move v4, v1

    goto :goto_2

    :cond_8
    :goto_1
    move v4, v14

    .line 740
    :goto_2
    iget-object v1, v8, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    if-nez v1, :cond_a

    .line 744
    iget-object v1, v8, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v7}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 749
    iget-object v1, v8, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v0, v5, v6}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_9
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 752
    :try_start_1
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 758
    :cond_a
    :try_start_2
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    .line 761
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 760
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/DateIntervalFormat;->fallbackFormat(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 765
    :cond_b
    :try_start_3
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->firstDateInPtnIsLaterDate()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v15, v3

    move-object v3, v0

    move-object v0, v15

    .line 774
    :cond_c
    iget-object v2, v8, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v2}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 775
    iget-object v4, v8, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 776
    iget-object v4, v8, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v4, v0, v5, v6}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 777
    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 778
    iget-object v0, v8, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 779
    new-instance v0, Ljava/text/FieldPosition;

    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    .line 780
    iget-object v1, v8, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v3, v5, v0}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 781
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    if-lez v1, :cond_d

    .line 782
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 783
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 786
    :cond_d
    iget-object v0, v8, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 787
    monitor-exit p0

    return-object v5

    .line 735
    :cond_e
    :try_start_4
    iget-object v1, v8, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v0, v5, v6}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 702
    :cond_f
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not format on two different calendars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized format(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    monitor-enter p0

    .line 631
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/DateInterval;->getFromDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 632
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/DateInterval;->getToDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 633
    iget-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 606
    instance-of v0, p1, Landroid/icu/util/DateInterval;

    if-eqz v0, :cond_0

    .line 607
    check-cast p1, Landroid/icu/util/DateInterval;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/DateInterval;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 610
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot format given Object ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") as a DateInterval"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized getDateFormat()Landroid/icu/text/DateFormat;
    .locals 1

    monitor-enter p0

    .line 1020
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDateIntervalInfo()Landroid/icu/text/DateIntervalInfo;
    .locals 0

    .line 955
    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateIntervalInfo;

    return-object p0
.end method

.method public getPatterns(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 647
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {p1, v9}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 650
    invoke-virtual {p2, v9}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    move v0, v9

    goto :goto_0

    .line 652
    :cond_1
    invoke-virtual {p1, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 653
    invoke-virtual {p2, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v8

    goto :goto_0

    .line 655
    :cond_2
    invoke-virtual {p1, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 656
    invoke-virtual {p2, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    move v0, v7

    goto :goto_0

    .line 658
    :cond_3
    invoke-virtual {p1, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 659
    invoke-virtual {p2, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_4

    move v0, v6

    goto :goto_0

    .line 661
    :cond_4
    invoke-virtual {p1, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 662
    invoke-virtual {p2, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_5

    move v0, v5

    goto :goto_0

    .line 664
    :cond_5
    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 665
    invoke-virtual {p2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_6

    move v0, v4

    goto :goto_0

    .line 667
    :cond_6
    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    .line 668
    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    if-eq p1, p2, :cond_7

    move v0, v3

    .line 673
    :goto_0
    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    sget-object p1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 675
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getSecondPart()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 676
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo$PatternInfo;->getFirstPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRawPatterns()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1869
    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fIntervalPatterns:Ljava/util/Map;

    return-object p0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 0

    .line 981
    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz p0, :cond_0

    .line 985
    invoke-virtual {p0}, Landroid/icu/text/SimpleDateFormat;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/TimeZone;

    return-object p0

    .line 988
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 944
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "parsing is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDateIntervalInfo(Landroid/icu/text/DateIntervalInfo;)V
    .locals 0

    .line 967
    invoke-virtual {p1}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DateIntervalInfo;

    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    const/4 p1, 0x0

    .line 968
    iput-boolean p1, p0, Landroid/icu/text/DateIntervalFormat;->isDateIntervalInfoDefault:Z

    .line 969
    iget-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fInfo:Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {p1}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    .line 970
    iget-object p1, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 971
    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalFormat;->initializePattern(Landroid/icu/impl/ICUCache;)V

    :cond_0
    return-void
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)V
    .locals 1

    .line 999
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/TimeZone;

    .line 1000
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fDateFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {v0, p1}, Landroid/icu/text/SimpleDateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1005
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateIntervalFormat;->fFromCalendar:Landroid/icu/util/Calendar;

    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1008
    :cond_1
    iget-object p0, p0, Landroid/icu/text/DateIntervalFormat;->fToCalendar:Landroid/icu/util/Calendar;

    if-eqz p0, :cond_2

    .line 1009
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_2
    return-void
.end method
