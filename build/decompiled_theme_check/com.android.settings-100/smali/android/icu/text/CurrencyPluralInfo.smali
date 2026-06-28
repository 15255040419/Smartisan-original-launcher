.class public Landroid/icu/text/CurrencyPluralInfo;
.super Ljava/lang/Object;
.source "CurrencyPluralInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final defaultCurrencyPluralPattern:Ljava/lang/String;

.field private static final defaultCurrencyPluralPatternChar:[C

.field private static final serialVersionUID:J = 0x1L

.field private static final tripleCurrencySign:[C

.field private static final tripleCurrencyStr:Ljava/lang/String;


# instance fields
.field private pluralCountToCurrencyUnitPattern:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pluralRules:Landroid/icu/text/PluralRules;

.field private ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 302
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    .line 304
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [C

    .line 307
    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    .line 309
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0xa4s
        0xa4s
        0xa4s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x0s
        0x2es
        0x23s
        0x23s
        0x20s
        0xa4s
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 322
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 325
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 47
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 322
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 325
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 63
    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 322
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 325
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 55
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public static getInstance()Landroid/icu/text/CurrencyPluralInfo;
    .locals 1

    .line 72
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>()V

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyPluralInfo;
    .locals 1

    .line 92
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/CurrencyPluralInfo;
    .locals 1

    .line 82
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private initialize(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 260
    iput-object p1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 261
    invoke-static {p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 262
    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->setupCurrencyPluralPattern(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private setupCurrencyPluralPattern(Landroid/icu/util/ULocale;)V
    .locals 11

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    const/4 v0, 0x0

    .line 268
    invoke-static {p1, v0}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 273
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 276
    :goto_0
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/4 v6, 0x1

    invoke-interface {v0, p1, v6}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getUnitPatterns()Ljava/util/Map;

    move-result-object p1

    .line 277
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "{0}"

    .line 283
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 284
    sget-object v9, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    const-string/jumbo v10, "{1}"

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    if-eq v3, v4, :cond_1

    .line 287
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 288
    sget-object v7, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 294
    :cond_1
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 182
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CurrencyPluralInfo;

    .line 184
    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    iput-object v1, v0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 189
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 190
    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    iget-object v3, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    iget-object v4, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 196
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 205
    instance-of v0, p1, Landroid/icu/text/CurrencyPluralInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Landroid/icu/text/CurrencyPluralInfo;

    .line 207
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    iget-object v2, p1, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0, v2}, Landroid/icu/text/PluralRules;->equals(Landroid/icu/text/PluralRules;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    iget-object p1, p1, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 208
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 112
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v1, "other"

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    iget-object p0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    .line 124
    sget-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 136
    iget-object p0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getPluralRules()Landroid/icu/text/PluralRules;
    .locals 0

    .line 101
    iget-object p0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    return-object p0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 224
    invoke-virtual {v1}, Landroid/icu/text/PluralRules;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 225
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method pluralPatternIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object p0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method select(D)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iget-object p0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    iget-object p0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCurrencyPluralPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 162
    iget-object p0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLocale(Landroid/icu/util/ULocale;)V
    .locals 0

    .line 172
    iput-object p1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 173
    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public setPluralRules(Ljava/lang/String;)V
    .locals 0

    .line 146
    invoke-static {p1}, Landroid/icu/text/PluralRules;->createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    return-void
.end method
