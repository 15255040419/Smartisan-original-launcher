.class public Landroid/icu/text/MeasureFormat;
.super Landroid/icu/text/UFormat;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MeasureFormat$MeasureProxy;,
        Landroid/icu/text/MeasureFormat$PatternData;,
        Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;,
        Landroid/icu/text/MeasureFormat$MeasureFormatData;,
        Landroid/icu/text/MeasureFormat$UnitDataSink;,
        Landroid/icu/text/MeasureFormat$NumericFormatters;,
        Landroid/icu/text/MeasureFormat$FormatWidth;
    }
.end annotation


# static fields
.field private static final CURRENCY_FORMAT:I = 0x2

.field private static final MEASURE_FORMAT:I = 0x0

.field private static final TIME_UNIT_FORMAT:I = 0x1

.field private static final hmsTo012:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeIdToRangeFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeMeasureFormatData:Landroid/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/MeasureFormat$MeasureFormatData;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/MeasureFormat$NumericFormatters;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = -0x63abaa69b1b00340L


# instance fields
.field private final transient cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

.field private final transient currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

.field private final transient integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

.field private final transient rules:Landroid/icu/text/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 135
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    .line 138
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    .line 145
    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 694
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 696
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    .line 697
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 698
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 699
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    .line 700
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    .line 701
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 702
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$MeasureFormatData;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)V
    .locals 0

    .line 683
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 684
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/MeasureFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 685
    iput-object p2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    .line 686
    iput-object p3, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 687
    iput-object p4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 688
    iput-object p5, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    .line 689
    iput-object p6, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    .line 690
    iput-object p7, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 691
    iput-object p8, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    return-void
.end method

.method static synthetic access$200(I)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 0

    .line 114
    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->fromFormatWidthOrdinal(I)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p0

    return-object p0
.end method

.method private appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/impl/StandardPlural;Ljava/lang/StringBuilder;)V
    .locals 5

    const-string/jumbo v0, "\u00a4"

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v0, "XXX"

    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-gez v1, :cond_1

    .line 452
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 455
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v3}, Landroid/icu/text/MeasureFormat$FormatWidth;->getCurrencyStyle()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 459
    invoke-virtual {p2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 461
    :cond_2
    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-static {p0}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->access$000(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    sget-object v4, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v4}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    .line 463
    :goto_0
    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x0

    .line 461
    invoke-virtual {p2, p0, v2, p3, v3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method private formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;
    .locals 2

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1044
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 3

    .line 1052
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v0

    .line 1053
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object p1

    .line 1054
    instance-of v1, p1, Landroid/icu/util/Currency;

    if-eqz v1, :cond_0

    .line 1055
    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance p2, Landroid/icu/util/CurrencyAmount;

    check-cast p1, Landroid/icu/util/Currency;

    invoke-direct {p2, v0, p1}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1056
    invoke-virtual {p0, p2, p1, p4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 1055
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    return-object p3

    .line 1062
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1064
    invoke-static {p2}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->access$000(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    move-result-object p2

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    .line 1063
    invoke-static {v0, p2, v2, v1, p4}, Landroid/icu/text/QuantityFormatter;->selectPlural(Ljava/lang/Number;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Landroid/icu/impl/StandardPlural;

    move-result-object p2

    .line 1065
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/MeasureFormat;->getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object p0

    .line 1066
    invoke-static {p0, v1, p3, p4}, Landroid/icu/text/QuantityFormatter;->format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private varargs formatMeasuresSlowTrack(Landroid/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 8

    .line 1169
    array-length v0, p4

    new-array v0, v0, [Ljava/lang/String;

    .line 1172
    new-instance v1, Ljava/text/FieldPosition;

    .line 1173
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    .line 1176
    :goto_0
    array-length v5, p4

    if-ge v3, v5, :cond_4

    .line 1177
    array-length v5, p4

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    goto :goto_1

    :cond_0
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    :goto_1
    if-ne v4, v2, :cond_2

    .line 1179
    aget-object v6, p4, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6, v5, v7, v1}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 1180
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move v4, v3

    goto :goto_2

    .line 1184
    :cond_2
    aget-object v6, p4, v3

    invoke-direct {p0, v6, v5}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1188
    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0, v4}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p0

    .line 1191
    invoke-virtual {p0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result p1

    if-eq p1, v2, :cond_5

    .line 1192
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p1

    invoke-virtual {p0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1193
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    invoke-virtual {p0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    add-int/2addr p1, p4

    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1195
    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p2
.end method

.method private formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 1311
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1312
    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p4, v2, v0}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 1313
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1315
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 1316
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 1320
    :cond_1
    :goto_0
    new-instance p4, Ljava/text/FieldPosition;

    invoke-direct {p4, p3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 1321
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1, p3, p4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 1322
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1325
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p2

    if-nez p2, :cond_3

    .line 1326
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 1348
    :cond_2
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1328
    :cond_3
    :goto_1
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p2

    invoke-virtual {p5, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1331
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p2

    invoke-virtual {p5, p0, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1337
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p2

    .line 1338
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p3

    .line 1335
    invoke-virtual {p5, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1343
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p2

    .line 1344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    .line 1341
    invoke-virtual {p5, p0, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1345
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p5, p1, p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_2
    return-object p5
.end method

.method private formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    move v4, v3

    .line 1243
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 1244
    aget-object v5, p1, v2

    if-eqz v5, :cond_1

    if-ne v3, v1, :cond_0

    move v3, v2

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_1

    .line 1251
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1255
    :cond_2
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v5

    const/4 v2, 0x1

    aget-object v7, p1, v2

    .line 1256
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    add-double/2addr v0, v7

    mul-double/2addr v0, v5

    const/4 v5, 0x2

    aget-object v6, p1, v5

    .line 1257
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double/2addr v0, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    .line 1258
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    if-nez v3, :cond_3

    if-ne v4, v5, :cond_3

    .line 1261
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    .line 1263
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getHourMinuteSecond()Landroid/icu/text/DateFormat;

    move-result-object v8

    sget-object v9, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    aget-object v10, p1, v4

    move-object v6, p0

    move-object v11, p2

    .line 1261
    invoke-direct/range {v6 .. v11}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne v3, v2, :cond_4

    if-ne v4, v5, :cond_4

    .line 1270
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    .line 1272
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getMinuteSecond()Landroid/icu/text/DateFormat;

    move-result-object v8

    sget-object v9, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    aget-object v10, p1, v4

    move-object v6, p0

    move-object v11, p2

    .line 1270
    invoke-direct/range {v6 .. v11}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez v3, :cond_5

    if-ne v4, v2, :cond_5

    .line 1279
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    .line 1281
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getHourMinute()Landroid/icu/text/DateFormat;

    move-result-object v8

    sget-object v9, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    aget-object v10, p1, v4

    move-object v6, p0

    move-object v11, p2

    .line 1279
    invoke-direct/range {v6 .. v11}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 1286
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static fromFormatWidthOrdinal(I)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    .line 1442
    invoke-static {}, Landroid/icu/text/MeasureFormat$FormatWidth;->values()[Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    if-ltz p0, :cond_1

    .line 1443
    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 1446
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 1444
    :cond_1
    :goto_0
    sget-object p0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object p0
.end method

.method public static getCurrencyFormat()Landroid/icu/text/MeasureFormat;
    .locals 1

    .line 655
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;
    .locals 1

    .line 635
    new-instance v0, Landroid/icu/text/CurrencyFormat;

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getCurrencyFormat(Ljava/util/Locale;)Landroid/icu/text/MeasureFormat;
    .locals 0

    .line 645
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method private getFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 2

    .line 984
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 986
    :cond_0
    new-instance p0, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no formatting pattern for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", width "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method private getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 2

    .line 967
    invoke-static {p2}, Landroid/icu/text/MeasureFormat;->getRegularWidth(Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p2

    .line 968
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 969
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 970
    aget-object v1, v0, p3

    if-eqz v1, :cond_0

    .line 971
    aget-object p0, v0, p3

    return-object p0

    .line 973
    :cond_0
    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p2}, Landroid/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result p2

    aget-object p0, p0, p2

    if-eqz p0, :cond_1

    .line 975
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 976
    aget-object p1, p0, p3

    if-eqz p1, :cond_1

    .line 977
    aget-object p0, p0, p3

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .locals 1

    .line 213
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .locals 10

    .line 236
    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v5

    .line 238
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v0, p0}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;

    if-nez v0, :cond_0

    .line 240
    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->loadLocaleData(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$MeasureFormatData;

    move-result-object v0

    .line 241
    sget-object v1, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v1, p0, v0}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v2, v0

    .line 243
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne p1, v0, :cond_1

    .line 244
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v0, p0}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MeasureFormat$NumericFormatters;

    if-nez v0, :cond_2

    .line 246
    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->loadNumericFormatters(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$NumericFormatters;

    move-result-object v0

    .line 247
    sget-object v1, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v1, p0, v0}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    move-object v6, v0

    .line 250
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 252
    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/4 v1, 0x1

    .line 253
    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    .line 254
    new-instance v9, Landroid/icu/text/MeasureFormat;

    new-instance v4, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v4, p2}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    new-instance v7, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 261
    invoke-virtual {p1}, Landroid/icu/text/MeasureFormat$FormatWidth;->getCurrencyStyle()I

    move-result p2

    invoke-static {p0, p2}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p2

    invoke-direct {v7, p2}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    new-instance v8, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v8, v0}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$MeasureFormatData;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)V

    return-object v9
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .locals 0

    .line 224
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .locals 0

    .line 274
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method private getPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;
    .locals 2

    .line 1009
    invoke-static {p1}, Landroid/icu/text/MeasureFormat;->getRegularWidth(Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p1

    .line 1010
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1014
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p1}, Landroid/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 1016
    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    return-object p0

    .line 1021
    :cond_1
    new-instance p0, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no x-per-y pattern for width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1464
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-static {p0, p1}, Landroid/icu/text/MeasureFormat;->getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1467
    :cond_0
    sget-object p1, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "android/icu/impl/data/icudt60b"

    .line 1470
    invoke-static {p1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    .line 1471
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 1472
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1473
    sget-object v1, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1475
    sget-object p1, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 1481
    :cond_1
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v1

    .line 1485
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberElements/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/miscPatterns/range"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "NumberElements/latn/patterns/range"

    .line 1487
    invoke-virtual {p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1489
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-static {p1, v1, v2, v2}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p1

    .line 1491
    sget-object v1, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1493
    sget-object p0, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method private static final getRegularWidth(Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 960
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne p0, v0, :cond_0

    .line 961
    sget-object p0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    :cond_0
    return-object p0
.end method

.method private static loadLocaleData(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$MeasureFormatData;
    .locals 3

    const-string v0, "android/icu/impl/data/icudt60b/unit"

    .line 952
    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    .line 953
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/MeasureFormat$MeasureFormatData;-><init>(Landroid/icu/text/MeasureFormat$1;)V

    .line 954
    new-instance v1, Landroid/icu/text/MeasureFormat$UnitDataSink;

    invoke-direct {v1, v0}, Landroid/icu/text/MeasureFormat$UnitDataSink;-><init>(Landroid/icu/text/MeasureFormat$MeasureFormatData;)V

    const-string v2, ""

    .line 955
    invoke-virtual {p0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    return-object v0
.end method

.method private static loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "durationUnits/%s"

    .line 1201
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    .line 1203
    new-instance p1, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "h"

    const-string v1, "H"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1204
    sget-object p0, Landroid/icu/util/TimeZone;->GMT_ZONE:Landroid/icu/util/TimeZone;

    invoke-virtual {p1, p0}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    return-object p1
.end method

.method private static loadNumericFormatters(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$NumericFormatters;
    .locals 4

    const-string v0, "android/icu/impl/data/icudt60b/unit"

    .line 727
    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    .line 728
    new-instance v0, Landroid/icu/text/MeasureFormat$NumericFormatters;

    const-string v1, "hm"

    .line 729
    invoke-static {p0, v1}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v1

    const-string v2, "ms"

    .line 730
    invoke-static {p0, v2}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v2

    const-string v3, "hms"

    .line 731
    invoke-static {p0, v3}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/icu/text/MeasureFormat$NumericFormatters;-><init>(Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat;)V

    return-object v0
.end method

.method private static toHMS([Landroid/icu/util/Measure;)[Ljava/lang/Number;
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Number;

    .line 1216
    array-length v1, p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 1217
    invoke-virtual {v4}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    const/4 v6, 0x0

    if-gez v5, :cond_0

    return-object v6

    .line 1220
    :cond_0
    sget-object v5, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_1

    return-object v6

    .line 1224
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v2, :cond_2

    return-object v6

    .line 1230
    :cond_2
    invoke-virtual {v4}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v2

    aput-object v2, v0, v5

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private withPerUnitAndAppend(Ljava/lang/CharSequence;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;)I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1027
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget v3, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    .line 1028
    invoke-direct {p0, p2, v2, v3}, Landroid/icu/text/MeasureFormat;->getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-array p0, v0, [Ljava/lang/CharSequence;

    aput-object p1, p0, v3

    .line 1030
    invoke-static {v2, p3, v1, p0}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1031
    aget p0, v1, v3

    return p0

    .line 1033
    :cond_0
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {p0, v2}, Landroid/icu/text/MeasureFormat;->getPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    move-result-object v2

    .line 1034
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v5, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v5}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v5

    invoke-virtual {p0, p2, v4, v5}, Landroid/icu/text/MeasureFormat;->getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object p0

    .line 1035
    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getTextWithNoArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    aput-object p1, p2, v3

    aput-object p0, p2, v0

    .line 1036
    invoke-static {v2, p3, v1, p2}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1038
    aget p0, v1, v3

    return p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1354
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    .line 1355
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 587
    :cond_0
    instance-of v1, p1, Landroid/icu/text/MeasureFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 590
    :cond_1
    check-cast p1, Landroid/icu/text/MeasureFormat;

    .line 592
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 593
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    move-result-object p0

    invoke-virtual {p1}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    .line 295
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 296
    new-instance v1, Ljava/text/FieldPosition;

    .line 297
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 298
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_2

    .line 299
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    .line 300
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Landroid/icu/util/Measure;

    const/4 v4, 0x0

    .line 302
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 303
    instance-of v6, v5, Landroid/icu/util/Measure;

    if-eqz v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 306
    check-cast v5, Landroid/icu/util/Measure;

    aput-object v5, v3, v4

    move v4, v6

    goto :goto_0

    .line 304
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1, v3}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 309
    :cond_2
    instance-of v2, p1, [Landroid/icu/util/Measure;

    if-eqz v2, :cond_3

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, [Landroid/icu/util/Measure;

    invoke-virtual {p0, v2, v1, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 311
    :cond_3
    instance-of v2, p1, Landroid/icu/util/Measure;

    if-eqz v2, :cond_6

    .line 312
    check-cast p1, Landroid/icu/util/Measure;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 316
    :goto_1
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    if-eqz p0, :cond_5

    .line 317
    :cond_4
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p3, p0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 318
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p3, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_5
    return-object p2

    .line 314
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public formatMeasurePerUnit(Landroid/icu/util/Measure;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 3

    .line 486
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v0

    .line 485
    invoke-static {v0, p2}, Landroid/icu/util/MeasureUnit;->resolveUnitPerUnit(Landroid/icu/util/MeasureUnit;Landroid/icu/util/MeasureUnit;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    new-instance p2, Landroid/icu/util/Measure;

    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 489
    iget-object p1, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {p0, p2, p1, p3, p4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 491
    :cond_0
    new-instance v0, Ljava/text/FieldPosition;

    .line 492
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 493
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 493
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->withPerUnitAndAppend(Ljava/lang/CharSequence;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;)I

    move-result p0

    .line 497
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    if-eqz p1, :cond_2

    .line 498
    :cond_1
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 499
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    return-object p3
.end method

.method public final formatMeasureRange(Landroid/icu/util/Measure;Landroid/icu/util/Measure;)Ljava/lang/String;
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v1

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v2

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v3

    .line 376
    instance-of v4, v1, Landroid/icu/util/Currency;

    .line 378
    new-instance v5, Landroid/icu/text/UFieldPosition;

    invoke-direct {v5}, Landroid/icu/text/UFieldPosition;-><init>()V

    .line 379
    new-instance v6, Landroid/icu/text/UFieldPosition;

    invoke-direct {v6}, Landroid/icu/text/UFieldPosition;-><init>()V

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    .line 384
    move-object v8, v1

    check-cast v8, Landroid/icu/util/Currency;

    .line 385
    invoke-virtual {v8}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    move-result v8

    .line 386
    iget-object v9, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-static {v9}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->access$000(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v9

    .line 387
    iget-object v10, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-static {v10}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->access$000(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v10

    if-ne v8, v9, :cond_0

    if-eq v8, v10, :cond_1

    .line 389
    :cond_0
    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v7}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    move-result-object v7

    check-cast v7, Landroid/icu/text/DecimalFormat;

    .line 390
    invoke-virtual {v7, v8}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 391
    invoke-virtual {v7, v8}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 392
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2, v8, v5}, Landroid/icu/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 393
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v3, v9, v6}, Landroid/icu/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object/from16 v19, v8

    move-object v8, v7

    move-object/from16 v7, v19

    goto :goto_0

    :cond_1
    move-object v8, v7

    :goto_0
    if-nez v7, :cond_2

    .line 397
    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2, v8, v5}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 398
    iget-object v8, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v3, v9, v6}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 401
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    .line 402
    iget-object v2, v0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    new-instance v13, Landroid/icu/text/PluralRules$FixedDecimal;

    .line 403
    invoke-virtual {v5}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    move-result v12

    invoke-virtual {v5}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    move-result-wide v17

    move-object v9, v13

    move-wide v10, v15

    move-object v5, v13

    move-wide/from16 v13, v17

    invoke-direct/range {v9 .. v14}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    .line 402
    invoke-virtual {v2, v5}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    .line 406
    iget-object v3, v0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    .line 407
    invoke-virtual {v6}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    move-result v12

    invoke-virtual {v6}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    move-result-wide v13

    move-object v9, v5

    move-wide/from16 v10, v17

    invoke-direct/range {v9 .. v14}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    .line 406
    invoke-virtual {v3, v5}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/impl/PluralRulesLoader;->getPluralRanges(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRanges;

    move-result-object v5

    .line 411
    invoke-static {v2}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v2

    .line 412
    invoke-static {v3}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v3

    .line 410
    invoke-virtual {v5, v2, v3}, Landroid/icu/text/PluralRanges;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v2

    .line 414
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    iget-object v5, v0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v3, v5}, Landroid/icu/text/MeasureFormat;->getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    const/4 v7, 0x1

    aput-object v8, v5, v7

    .line 415
    invoke-static {v3, v5}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_5

    .line 420
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    .line 422
    check-cast v1, Landroid/icu/util/Currency;

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    iget-object v5, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    const-wide/16 v8, 0x0

    cmpl-double v10, v15, v8

    if-ltz v10, :cond_3

    move v10, v7

    goto :goto_1

    :cond_3
    move v10, v6

    :goto_1
    invoke-virtual {v5, v10}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->getPrefix(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v1, v2, v4}, Landroid/icu/text/MeasureFormat;->appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/impl/StandardPlural;Ljava/lang/StringBuilder;)V

    .line 425
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v3, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    cmpl-double v5, v17, v8

    if-ltz v5, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {v3, v6}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->getSuffix(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/icu/text/MeasureFormat;->appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/impl/StandardPlural;Ljava/lang/StringBuilder;)V

    .line 427
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 439
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v1

    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/icu/text/MeasureFormat;->getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/CharSequence;

    aput-object v3, v1, v6

    .line 440
    invoke-static {v0, v1}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 372
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Units must match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \u2260 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;
    .locals 2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    invoke-virtual {p0, v0, v1, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 350
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 5

    .line 520
    array-length v0, p3

    if-nez v0, :cond_0

    return-object p1

    .line 523
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 524
    aget-object p3, p3, v1

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {p0, p3, v0, p1, p2}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 527
    :cond_1
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v3, :cond_2

    .line 530
    invoke-static {p3}, Landroid/icu/text/MeasureFormat;->toHMS([Landroid/icu/util/Measure;)[Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 532
    invoke-direct {p0, v0, p1}, Landroid/icu/text/MeasureFormat;->formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 537
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v3}, Landroid/icu/text/MeasureFormat$FormatWidth;->getListFormatterStyle()Landroid/icu/text/ListFormatter$Style;

    move-result-object v3

    .line 536
    invoke-static {v0, v3}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    .line 538
    sget-object v3, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    if-eq p2, v3, :cond_3

    .line 539
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasuresSlowTrack(Landroid/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 542
    :cond_3
    array-length p2, p3

    new-array p2, p2, [Ljava/lang/String;

    .line 543
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_5

    .line 544
    aget-object v3, p3, v1

    .line 546
    array-length v4, p3

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 544
    :goto_1
    invoke-direct {p0, v3, v4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    :cond_5
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {v0, p2}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final getLocale()Landroid/icu/util/ULocale;
    .locals 1

    .line 618
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/MeasureFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 0

    .line 625
    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 999
    sget v0, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    if-eq p3, v0, :cond_0

    .line 1000
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    .line 1005
    :cond_0
    sget p3, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->getFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnitDisplayName(Landroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 2

    .line 561
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->getRegularWidth(Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    .line 562
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToDnam:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 567
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 571
    :cond_1
    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    if-eqz p0, :cond_2

    .line 573
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method public getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 0

    .line 611
    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 603
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 604
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat$FormatWidth;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .locals 0

    .line 331
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MeasureFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;

    move-result-object p0

    return-object p0
.end method

.method toCurrencyProxy()Ljava/lang/Object;
    .locals 4

    .line 1161
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    move-result-object p0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method toTimeUnitProxy()Ljava/lang/Object;
    .locals 4

    .line 1157
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    move-result-object p0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method withLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;
    .locals 0

    .line 660
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method withNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .locals 10

    .line 664
    new-instance v9, Landroid/icu/text/MeasureFormat;

    .line 665
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    new-instance v4, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v4, p1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    iget-object v6, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    iget-object v7, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    iget-object v8, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$MeasureFormatData;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)V

    return-object v9
.end method
