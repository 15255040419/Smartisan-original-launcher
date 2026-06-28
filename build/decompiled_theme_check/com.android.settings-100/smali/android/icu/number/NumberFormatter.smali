.class public final Landroid/icu/number/NumberFormatter;
.super Ljava/lang/Object;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;,
        Landroid/icu/number/NumberFormatter$SignDisplay;,
        Landroid/icu/number/NumberFormatter$UnitWidth;
    }
.end annotation


# static fields
.field private static final BASE:Landroid/icu/number/UnlocalizedNumberFormatter;

.field static final DEFAULT_THRESHOLD:J = 0x3L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-direct {v0}, Landroid/icu/number/UnlocalizedNumberFormatter;-><init>()V

    sput-object v0, Landroid/icu/number/NumberFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromDecimalFormat(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberPropertyMapper;->oldToNew(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/MacroProps;

    move-result-object p0

    .line 311
    invoke-static {}, Landroid/icu/number/NumberFormatter;->with()Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/number/UnlocalizedNumberFormatter;->macros(Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    check-cast p0, Landroid/icu/number/UnlocalizedNumberFormatter;

    return-object p0
.end method

.method public static with()Landroid/icu/number/UnlocalizedNumberFormatter;
    .locals 1

    .line 274
    sget-object v0, Landroid/icu/number/NumberFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberFormatter;

    return-object v0
.end method

.method public static withLocale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;
    .locals 1

    .line 300
    sget-object v0, Landroid/icu/number/NumberFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v0, p0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static withLocale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;
    .locals 1

    .line 287
    sget-object v0, Landroid/icu/number/NumberFormatter;->BASE:Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-virtual {v0, p0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method
