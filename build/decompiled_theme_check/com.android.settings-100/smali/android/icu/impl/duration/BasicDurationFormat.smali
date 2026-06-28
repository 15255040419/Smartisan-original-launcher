.class public Landroid/icu/impl/duration/BasicDurationFormat;
.super Landroid/icu/text/DurationFormat;
.source "BasicDurationFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x2bac5567544cfb24L


# instance fields
.field transient formatter:Landroid/icu/impl/duration/DurationFormatter;

.field transient pformatter:Landroid/icu/impl/duration/PeriodFormatter;

.field transient pfs:Landroid/icu/impl/duration/PeriodFormatterService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/icu/text/DurationFormat;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    .line 53
    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    .line 54
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/DurationFormatterFactory;->getFormatter()Landroid/icu/impl/duration/DurationFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    .line 55
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Landroid/icu/text/DurationFormat;-><init>(Landroid/icu/util/ULocale;)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    .line 62
    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    .line 63
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DurationFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/DurationFormatterFactory;->getFormatter()Landroid/icu/impl/duration/DurationFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    .line 64
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object p1

    invoke-interface {p1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/duration/BasicDurationFormat;
    .locals 1

    .line 34
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormat;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicDurationFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 38
    instance-of p3, p1, Ljava/lang/Long;

    if-eqz p3, :cond_0

    .line 39
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 41
    :cond_0
    instance-of p3, p1, Ljava/util/Date;

    if-eqz p3, :cond_1

    .line 42
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 44
    :cond_1
    instance-of p3, p1, Ljavax/xml/datatype/Duration;

    if-eqz p3, :cond_2

    .line 45
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDuration(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot format given Object as a Duration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public formatDuration(Ljava/lang/Object;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x6

    new-array v2, v1, [Ljavax/xml/datatype/DatatypeConstants$Field;

    .line 95
    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-array v1, v1, [Landroid/icu/impl/duration/TimeUnit;

    .line 103
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v4

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v5

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v6

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v7

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v8

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v9

    .line 112
    move-object/from16 v3, p1

    check-cast v3, Ljavax/xml/datatype/Duration;

    .line 116
    invoke-virtual {v3}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v6

    if-gez v6, :cond_0

    .line 117
    invoke-virtual {v3}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    move-result-object v3

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    const/4 v7, 0x0

    move v9, v4

    move-object v8, v7

    .line 122
    :goto_1
    array-length v10, v2

    if-ge v4, v10, :cond_6

    .line 123
    aget-object v10, v2, v4

    invoke-virtual {v3, v10}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 124
    aget-object v10, v2, v4

    invoke-virtual {v3, v10}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v10

    .line 125
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-nez v11, :cond_1

    if-nez v9, :cond_1

    goto :goto_4

    .line 130
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v9

    const/4 v10, 0x0

    .line 136
    aget-object v11, v1, v4

    sget-object v12, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    if-ne v11, v12, :cond_2

    float-to-double v11, v9

    .line 138
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    sub-double/2addr v11, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v15

    const-wide/16 v15, 0x0

    cmpl-double v15, v11, v15

    if-lez v15, :cond_2

    .line 141
    sget-object v9, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    double-to-float v10, v11

    double-to-float v11, v13

    move/from16 v17, v10

    move-object v10, v9

    move v9, v11

    move/from16 v11, v17

    goto :goto_2

    :cond_2
    move v11, v10

    move-object v10, v7

    :goto_2
    if-nez v8, :cond_3

    .line 148
    aget-object v8, v1, v4

    invoke-static {v9, v8}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v8

    goto :goto_3

    .line 150
    :cond_3
    aget-object v12, v1, v4

    invoke-virtual {v8, v9, v12}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v8

    :goto_3
    if-eqz v10, :cond_4

    .line 154
    invoke-virtual {v8, v11, v10}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v8

    :cond_4
    move v9, v5

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    if-nez v8, :cond_7

    const-wide/16 v1, 0x0

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    if-eqz v6, :cond_8

    .line 164
    invoke-virtual {v8}, Landroid/icu/impl/duration/Period;->inPast()Landroid/icu/impl/duration/Period;

    move-result-object v1

    goto :goto_5

    .line 166
    :cond_8
    invoke-virtual {v8}, Landroid/icu/impl/duration/Period;->inFuture()Landroid/icu/impl/duration/Period;

    move-result-object v1

    .line 171
    :goto_5
    iget-object v0, v0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatter;->format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationFrom(JJ)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatDurationFromNow(J)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    invoke-interface {p0, p1, p2}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    invoke-interface {p0, p1}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
