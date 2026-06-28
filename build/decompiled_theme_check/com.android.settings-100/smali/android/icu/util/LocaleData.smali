.class public final Landroid/icu/util/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocaleData$PaperSize;,
        Landroid/icu/util/LocaleData$MeasurementSystem;
    }
.end annotation


# static fields
.field public static final ALT_QUOTATION_END:I = 0x3

.field public static final ALT_QUOTATION_START:I = 0x2

.field public static final DELIMITER_COUNT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DELIMITER_TYPES:[Ljava/lang/String;

.field public static final ES_AUXILIARY:I = 0x1

.field public static final ES_COUNT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ES_CURRENCY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ES_INDEX:I = 0x2

.field public static final ES_PUNCTUATION:I = 0x4

.field public static final ES_STANDARD:I = 0x0

.field private static final LOCALE_DISPLAY_PATTERN:Ljava/lang/String; = "localeDisplayPattern"

.field private static final MEASUREMENT_SYSTEM:Ljava/lang/String; = "MeasurementSystem"

.field private static final PAPER_SIZE:Ljava/lang/String; = "PaperSize"

.field private static final PATTERN:Ljava/lang/String; = "pattern"

.field public static final QUOTATION_END:I = 0x1

.field public static final QUOTATION_START:I = 0x0

.field private static final SEPARATOR:Ljava/lang/String; = "separator"

.field private static gCLDRVersion:Landroid/icu/util/VersionInfo;


# instance fields
.field private bundle:Landroid/icu/impl/ICUResourceBundle;

.field private langBundle:Landroid/icu/impl/ICUResourceBundle;

.field private noSubstitute:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "quotationStart"

    const-string/jumbo v1, "quotationEnd"

    const-string v2, "alternateQuotationStart"

    const-string v3, "alternateQuotationEnd"

    .line 265
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocaleData;->DELIMITER_TYPES:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 432
    sput-object v0, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCLDRVersion()Landroid/icu/util/VersionInfo;
    .locals 3

    .line 439
    sget-object v0, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    if-nez v0, :cond_0

    .line 441
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string/jumbo v2, "supplementalData"

    invoke-static {v1, v2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "cldrVersion"

    .line 442
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    .line 445
    :cond_0
    sget-object v0, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    return-object v0
.end method

.method public static getExemplarSet(Landroid/icu/util/ULocale;I)Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 142
    invoke-static {p0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/LocaleData;->getExemplarSet(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 164
    invoke-static {p0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/LocaleData;->getExemplarSet(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Landroid/icu/util/LocaleData;
    .locals 1

    .line 238
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;
    .locals 2

    .line 224
    new-instance v0, Landroid/icu/util/LocaleData;

    invoke-direct {v0}, Landroid/icu/util/LocaleData;-><init>()V

    const-string v1, "android/icu/impl/data/icudt60b"

    .line 225
    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    iput-object v1, v0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    const-string v1, "android/icu/impl/data/icudt60b/lang"

    .line 226
    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    iput-object p0, v0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    const/4 p0, 0x0

    .line 227
    iput-boolean p0, v0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    return-object v0
.end method

.method public static final getMeasurementSystem(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData$MeasurementSystem;
    .locals 1

    const-string v0, "MeasurementSystem"

    .line 350
    invoke-static {p0, v0}, Landroid/icu/util/LocaleData;->measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 352
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 355
    :cond_0
    sget-object p0, Landroid/icu/util/LocaleData$MeasurementSystem;->UK:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-object p0

    .line 354
    :cond_1
    sget-object p0, Landroid/icu/util/LocaleData$MeasurementSystem;->US:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-object p0

    .line 353
    :cond_2
    sget-object p0, Landroid/icu/util/LocaleData$MeasurementSystem;->SI:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-object p0
.end method

.method public static final getPaperSize(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData$PaperSize;
    .locals 3

    const-string v0, "PaperSize"

    .line 398
    invoke-static {p0, v0}, Landroid/icu/util/LocaleData;->measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 399
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object p0

    .line 400
    new-instance v0, Landroid/icu/util/LocaleData$PaperSize;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget p0, p0, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/icu/util/LocaleData$PaperSize;-><init>(IILandroid/icu/util/LocaleData$1;)V

    return-object v0
.end method

.method private static measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 3

    const/4 v0, 0x1

    .line 297
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "android/icu/impl/data/icudt60b"

    const-string/jumbo v1, "supplementalData"

    .line 299
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "measurementData"

    .line 303
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    :try_start_1
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 307
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "001"

    .line 310
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 311
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getDelimiter(I)Ljava/lang/String;
    .locals 2

    .line 281
    iget-object v0, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    const-string v1, "delimiters"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 283
    sget-object v1, Landroid/icu/util/LocaleData;->DELIMITER_TYPES:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 285
    iget-boolean v0, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExemplarSet(II)Landroid/icu/text/UnicodeSet;
    .locals 5

    const-string v0, "ExemplarCharacters"

    const-string v1, "AuxExemplarCharacters"

    const-string v2, "ExemplarCharactersIndex"

    const-string v3, "ExemplarCharactersCurrency"

    const-string v4, "ExemplarCharactersPunctuation"

    .line 188
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 198
    iget-boolean p0, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    :goto_0
    return-object v1

    .line 202
    :cond_1
    :try_start_0
    aget-object p2, v0, p2

    .line 203
    iget-object v0, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0, p2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p2

    check-cast p2, Landroid/icu/impl/ICUResourceBundle;

    .line 205
    iget-boolean v0, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 208
    :cond_2
    invoke-virtual {p2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p2

    .line 209
    new-instance v0, Landroid/icu/text/UnicodeSet;

    or-int/lit8 p1, p1, 0x1

    invoke-direct {v0, p2, p1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 213
    :catch_0
    iget-boolean p0, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    :goto_1
    return-object v1

    :catch_1
    move-exception p0

    .line 211
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getLocaleDisplayPattern()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object p0, p0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    const-string v0, "localeDisplayPattern"

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v0, "pattern"

    .line 410
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocaleSeparator()Ljava/lang/String;
    .locals 2

    .line 422
    iget-object p0, p0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    const-string v0, "localeDisplayPattern"

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v0, "separator"

    .line 423
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{0}"

    .line 424
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "{1}"

    .line 425
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x3

    .line 427
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getNoSubstitute()Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    return p0
.end method

.method public setNoSubstitute(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    return-void
.end method
