.class public final Landroid/icu/text/ScientificNumberFormatter;
.super Ljava/lang/Object;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;,
        Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;,
        Landroid/icu/text/ScientificNumberFormatter$Style;
    }
.end annotation


# static fields
.field private static final SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;


# instance fields
.field private final fmt:Landroid/icu/text/DecimalFormat;

.field private final preExponent:Ljava/lang/String;

.field private final style:Landroid/icu/text/ScientificNumberFormatter$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 316
    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;-><init>(Landroid/icu/text/ScientificNumberFormatter$1;)V

    sput-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    return-void
.end method

.method private constructor <init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    .line 321
    iput-object p2, p0, Landroid/icu/text/ScientificNumberFormatter;->preExponent:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Landroid/icu/text/ScientificNumberFormatter;->style:Landroid/icu/text/ScientificNumberFormatter$Style;

    return-void
.end method

.method private static getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 2

    .line 301
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/icu/text/ScientificNumberFormatter;

    .line 303
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DecimalFormat;

    invoke-static {v0}, Landroid/icu/text/ScientificNumberFormatter;->getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Landroid/icu/text/ScientificNumberFormatter;-><init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V

    return-object v1
.end method

.method private static getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 2

    .line 309
    invoke-static {p0}, Landroid/icu/text/DecimalFormat;->getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DecimalFormat;

    .line 310
    new-instance v0, Landroid/icu/text/ScientificNumberFormatter;

    .line 312
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/ScientificNumberFormatter;->getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/icu/text/ScientificNumberFormatter;-><init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V

    return-object v0
.end method

.method public static getMarkupInstance(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1

    .line 97
    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getMarkupInstance(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1

    .line 79
    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentMultiplicationSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object p0

    const/4 v1, 0x1

    .line 295
    aget-char v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperscriptInstance(Landroid/icu/text/DecimalFormat;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1

    .line 64
    sget-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperscriptInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1

    .line 51
    sget-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 108
    iget-object v0, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/ScientificNumberFormatter;->style:Landroid/icu/text/ScientificNumberFormatter$Style;

    iget-object v2, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    .line 110
    invoke-virtual {v2, p1}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    iget-object p0, p0, Landroid/icu/text/ScientificNumberFormatter;->preExponent:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, p1, p0}, Landroid/icu/text/ScientificNumberFormatter$Style;->format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
