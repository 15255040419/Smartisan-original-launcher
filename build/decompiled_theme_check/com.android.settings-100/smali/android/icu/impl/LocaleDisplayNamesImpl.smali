.class public Landroid/icu/impl/LocaleDisplayNamesImpl;
.super Landroid/icu/text/LocaleDisplayNames;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    }
.end annotation


# static fields
.field private static final TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

.field private static final cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

.field private static final contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final capitalization:Landroid/icu/text/DisplayContext;

.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private capitalizationUsage:[Z

.field private final currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

.field private final dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field private final format:Ljava/lang/String;

.field private final formatCloseParen:C

.field private final formatOpenParen:C

.field private final formatReplaceCloseParen:C

.field private final formatReplaceOpenParen:C

.field private final keyTypeFormat:Ljava/lang/String;

.field private final langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

.field private final locale:Landroid/icu/util/ULocale;

.field private final nameLength:Landroid/icu/text/DisplayContext;

.field private final regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

.field private final separatorFormat:Ljava/lang/String;

.field private final substituteHandling:Landroid/icu/text/DisplayContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;-><init>(Landroid/icu/impl/LocaleDisplayNamesImpl$1;)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    .line 82
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v2, "languages"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string/jumbo v2, "script"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string/jumbo v2, "territory"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string/jumbo v2, "variant"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v2, "keyValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->wholeString()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/DisplayContext;

    .line 139
    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v1, :cond_0

    sget-object p2, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    :goto_0
    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, p2

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V
    .locals 13

    .line 143
    invoke-direct {p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    .line 92
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 144
    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 145
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 146
    sget-object v3, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    .line 147
    sget-object v4, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    .line 148
    array-length v5, p2

    const/4 v6, 0x0

    move-object v7, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v6

    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-ge v1, v5, :cond_5

    aget-object v10, p2, v1

    .line 149
    sget-object v11, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    invoke-virtual {v10}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v8, :cond_3

    if-eq v11, v9, :cond_2

    const/4 v8, 0x3

    if-eq v11, v8, :cond_1

    const/4 v8, 0x4

    if-eq v11, v8, :cond_0

    goto :goto_1

    :cond_0
    move-object v7, v10

    goto :goto_1

    :cond_1
    move-object v4, v10

    goto :goto_1

    :cond_2
    move-object v3, v10

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {v10}, Landroid/icu/text/DisplayContext;->value()I

    move-result v2

    sget-object v8, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual {v8}, Landroid/icu/text/DisplayContext;->value()I

    move-result v8

    if-ne v2, v8, :cond_4

    .line 152
    sget-object v2, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_1

    :cond_4
    sget-object v2, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_5
    iput-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 169
    iput-object v3, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    .line 170
    iput-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    .line 171
    iput-object v7, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->substituteHandling:Landroid/icu/text/DisplayContext;

    .line 172
    sget-object p2, Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    sget-object v1, Landroid/icu/text/DisplayContext;->NO_SUBSTITUTE:Landroid/icu/text/DisplayContext;

    if-ne v7, v1, :cond_6

    move v1, v8

    goto :goto_2

    :cond_6
    move v1, v6

    :goto_2
    invoke-virtual {p2, p1, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    .line 173
    sget-object p2, Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    sget-object v1, Landroid/icu/text/DisplayContext;->NO_SUBSTITUTE:Landroid/icu/text/DisplayContext;

    if-ne v7, v1, :cond_7

    goto :goto_3

    :cond_7
    move v8, v6

    :goto_3
    invoke-virtual {p2, p1, v8}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    .line 174
    sget-object p2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    move-result-object p2

    goto :goto_4

    .line 175
    :cond_8
    iget-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    move-result-object p2

    :goto_4
    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    .line 181
    iget-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v1, "separator"

    const-string v2, "localeDisplayPattern"

    invoke-virtual {p2, v2, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 182
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const-string/jumbo p2, "{0}, {1}"

    .line 185
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-static {p2, v1, v9, v9}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->separatorFormat:Ljava/lang/String;

    .line 188
    iget-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string/jumbo v4, "pattern"

    invoke-virtual {p2, v2, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 189
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const-string/jumbo p2, "{0} ({1})"

    .line 192
    :cond_c
    invoke-static {p2, v1, v9, v9}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->format:Ljava/lang/String;

    const-string/jumbo v4, "\uff08"

    .line 193
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    const p2, 0xff08

    .line 194
    iput-char p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    const p2, 0xff09

    .line 195
    iput-char p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    const p2, 0xff3b

    .line 196
    iput-char p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    const p2, 0xff3d

    .line 197
    iput-char p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    goto :goto_5

    :cond_d
    const/16 p2, 0x28

    .line 199
    iput-char p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    const/16 p2, 0x29

    .line 200
    iput-char p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    const/16 p2, 0x5b

    .line 201
    iput-char p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    const/16 p2, 0x5d

    .line 202
    iput-char p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 205
    :goto_5
    iget-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v4, "keyTypePattern"

    invoke-virtual {p2, v2, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 206
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const-string/jumbo p2, "{0}={1}"

    .line 209
    :cond_f
    invoke-static {p2, v1, v9, v9}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyTypeFormat:Ljava/lang/String;

    .line 215
    sget-object p2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-eq v3, p2, :cond_11

    sget-object p2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne v3, p2, :cond_10

    goto :goto_6

    :cond_10
    move p2, v6

    goto :goto_7

    .line 217
    :cond_11
    :goto_6
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->values()[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [Z

    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    const-string p2, "android/icu/impl/data/icudt60b"

    .line 218
    invoke-static {p2, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p2

    check-cast p2, Landroid/icu/impl/ICUResourceBundle;

    .line 219
    new-instance v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;

    invoke-direct {v1, p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;-><init>(Landroid/icu/impl/LocaleDisplayNamesImpl;Landroid/icu/impl/LocaleDisplayNamesImpl$1;)V

    :try_start_0
    const-string v0, "contextTransforms"

    .line 221
    invoke-virtual {p2, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :catch_0
    iget-boolean p2, v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->hasCapitalizationUsage:Z

    :goto_7
    if-nez p2, :cond_12

    .line 229
    sget-object p2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-ne v3, p2, :cond_13

    .line 230
    :cond_12
    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 233
    :cond_13
    sget-object p2, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    invoke-interface {p2, p1, v6}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 40
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Landroid/icu/impl/LocaleDisplayNamesImpl;)Landroid/icu/text/DisplayContext;
    .locals 0

    .line 40
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    return-object p0
.end method

.method static synthetic access$300(Landroid/icu/impl/LocaleDisplayNamesImpl;)[Z
    .locals 0

    .line 40
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    return-object p0
.end method

.method private adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_2

    .line 270
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_2

    .line 275
    :cond_0
    monitor-enter p0

    .line 276
    :try_start_0
    iget-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez p1, :cond_1

    .line 278
    iget-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 280
    :cond_1
    iget-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v1, 0x300

    invoke-static {p1, p2, v0, v1}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 282
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-object p2
.end method

.method private appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 718
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 719
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 721
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->separatorFormat:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, p2, v0, v1}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p2
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .locals 2

    .line 103
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    invoke-virtual {v1, p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->get(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 2

    .line 109
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    invoke-virtual {v1, p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->get(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static haveData(Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;)Z
    .locals 3

    .line 709
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$impl$LocaleDisplayNamesImpl$DataTableType:[I

    invoke-virtual {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 711
    sget-object p0, Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    instance-of p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;

    return p0

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_1
    sget-object p0, Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    instance-of p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;

    return p0
.end method

.method private keyDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 524
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Keys"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    sget-object p2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "currency"

    .line 536
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    invoke-static {p2}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object p2, p1

    goto :goto_1

    .line 542
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_2

    .line 543
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Types%short"

    invoke-virtual {v0, v1, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 544
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 549
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Types"

    invoke-virtual {v0, v1, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v0

    :goto_1
    if-eqz p3, :cond_4

    goto :goto_2

    .line 553
    :cond_4
    sget-object p1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    return-object p2
.end method

.method private localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 13

    .line 310
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "root"

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 323
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v5

    .line 324
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v5

    .line 327
    :goto_2
    iget-object v9, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v10, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    const/4 v11, 0x0

    if-ne v9, v10, :cond_6

    const/16 v9, 0x5f

    if-eqz v4, :cond_4

    if-eqz v7, :cond_4

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 331
    invoke-direct {p0, v10}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 332
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    move v4, v5

    move v7, v4

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 340
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 341
    invoke-direct {p0, v10}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 342
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    move v4, v5

    goto :goto_3

    :cond_5
    if-eqz v7, :cond_6

    .line 349
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 350
    invoke-direct {p0, v9}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 351
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    move v7, v5

    move-object v12, v10

    goto :goto_3

    :cond_6
    move-object v12, v11

    :goto_3
    if-nez v12, :cond_8

    .line 361
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v11

    .line 363
    :cond_7
    iget-char v9, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v10, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 364
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-char v9, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v10, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 365
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 368
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_a

    .line 371
    invoke-direct {p0, v1, v6}, Landroid/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayNameInContext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    return-object v11

    .line 373
    :cond_9
    iget-char v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v9, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 374
    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-char v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v9, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 375
    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v7, :cond_c

    .line 378
    invoke-direct {p0, v2, v6}, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v11

    .line 380
    :cond_b
    iget-char v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 381
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-char v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 382
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v8, :cond_e

    .line 385
    invoke-direct {p0, v3, v6}, Landroid/icu/impl/LocaleDisplayNamesImpl;->variantDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v11

    .line 387
    :cond_d
    iget-char v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v3, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 388
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-char v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v3, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 389
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 392
    :cond_e
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_13

    .line 394
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 396
    invoke-virtual {p1, v3}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-direct {p0, v3, v6}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_f

    return-object v11

    .line 399
    :cond_f
    iget-char v8, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v9, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 400
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    iget-char v8, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v9, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 401
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 402
    invoke-direct {p0, v3, v4, v6}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_10

    return-object v11

    .line 404
    :cond_10
    iget-char v9, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v10, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 405
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    iget-char v9, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v10, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 406
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 407
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 408
    invoke-direct {p0, v8, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 409
    :cond_11
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 410
    iget-object v3, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyTypeFormat:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/CharSequence;

    aput-object v7, v4, v5

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-direct {p0, v3, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 414
    :cond_12
    invoke-direct {p0, v7, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 422
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_14

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_14
    if-eqz v11, :cond_15

    .line 427
    iget-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->format:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/CharSequence;

    aput-object v12, v0, v5

    aput-object v11, v0, v6

    invoke-static {p1, v0}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 431
    :cond_15
    sget-object p1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private localeIdName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 435
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Languages%short"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 441
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v0, "Languages"

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;
    .locals 3

    .line 614
    sget-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    invoke-static {p1, v0}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 615
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v1}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    .line 616
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 618
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    invoke-static {p0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->toTitleWholeStringNoLowercase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    :cond_1
    invoke-virtual {p1, p1}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    .line 620
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p2, v2, :cond_2

    .line 622
    invoke-static {p1, p0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->toTitleWholeStringNoLowercase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 623
    :cond_2
    new-instance p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    invoke-direct {p2, v0, p1, v1, p0}, Landroid/icu/text/LocaleDisplayNames$UiListItem;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private regionDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 496
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1

    .line 497
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Countries%short"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    sget-object p1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 502
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Countries"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    goto :goto_1

    .line 503
    :cond_2
    sget-object p2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private scriptDisplayNameInContext(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 475
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1

    .line 476
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts%short"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    sget-object p1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 481
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    goto :goto_1

    .line 482
    :cond_2
    sget-object p2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private static toTitleWholeStringNoLowercase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 98
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

    .line 99
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .line 98
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private variantDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 513
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Variants"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    sget-object p2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 1

    .line 249
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    invoke-virtual {p1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 263
    sget-object p0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_0

    .line 260
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->substituteHandling:Landroid/icu/text/DisplayContext;

    goto :goto_0

    .line 257
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    goto :goto_0

    .line 254
    :cond_2
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    goto :goto_0

    .line 251
    :cond_3
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object p1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p0, p1, :cond_4

    sget-object p0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_0

    :cond_4
    sget-object p0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    :goto_0
    return-object p0
.end method

.method public getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 0

    .line 243
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    return-object p0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 238
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    .line 563
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v0

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 566
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 567
    new-instance v3, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v3}, Landroid/icu/util/ULocale$Builder;-><init>()V

    .line 568
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/ULocale;

    .line 569
    invoke-virtual {v3, v4}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    .line 570
    invoke-static {v4}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v4

    .line 571
    new-instance v5, Landroid/icu/util/ULocale;

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_0

    .line 574
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_0
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 578
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 579
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/ULocale;

    .line 580
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 581
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 582
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 583
    sget-object v4, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    invoke-static {v2, v4}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 585
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 586
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 588
    invoke-static {v4}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v4

    .line 589
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/util/ULocale;

    .line 592
    invoke-virtual {v8}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {v8}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 595
    :cond_4
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x0

    if-le v4, v6, :cond_5

    move v4, v6

    goto :goto_3

    :cond_5
    move v4, v5

    .line 596
    :goto_3
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-le v7, v6, :cond_6

    move v5, v6

    .line 597
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/ULocale;

    .line 598
    invoke-virtual {v3, v6}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    move-result-object v6

    const-string v7, ""

    if-nez v4, :cond_7

    .line 600
    invoke-virtual {v6, v7}, Landroid/icu/util/ULocale$Builder;->setScript(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    :cond_7
    if-nez v5, :cond_8

    .line 603
    invoke-virtual {v6, v7}, Landroid/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    .line 605
    :cond_8
    invoke-virtual {v6}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 609
    :cond_9
    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 530
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 558
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "root"

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Languages%short"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 453
    sget-object p1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 456
    :cond_1
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v2, "Languages"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 448
    :cond_2
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->substituteHandling:Landroid/icu/text/DisplayContext;

    sget-object v0, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 299
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 294
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 508
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public scriptDisplayName(I)Ljava/lang/String;
    .locals 0

    .line 492
    invoke-static {p1}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 461
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts%stand-alone"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1

    .line 464
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts%short"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    sget-object p1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 469
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    :cond_2
    sget-object p1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayNameInContext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 519
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->variantDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
