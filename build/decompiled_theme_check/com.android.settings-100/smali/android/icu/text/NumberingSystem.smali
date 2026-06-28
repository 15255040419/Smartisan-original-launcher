.class public Landroid/icu/text/NumberingSystem;
.super Ljava/lang/Object;
.source "NumberingSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NumberingSystem$LocaleLookupData;
    }
.end annotation


# static fields
.field public static final LATIN:Landroid/icu/text/NumberingSystem;

.field private static final OTHER_NS_KEYWORDS:[Ljava/lang/String;

.field private static cachedLocaleData:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberingSystem;",
            "Landroid/icu/text/NumberingSystem$LocaleLookupData;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedStringData:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberingSystem;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithmic:Z

.field private desc:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private radix:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "native"

    const-string/jumbo v1, "traditional"

    const-string v2, "finance"

    .line 37
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/NumberingSystem;->OTHER_NS_KEYWORDS:[Ljava/lang/String;

    const-string v0, "latn"

    .line 45
    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->lookupInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    sput-object v0, Landroid/icu/text/NumberingSystem;->LATIN:Landroid/icu/text/NumberingSystem;

    .line 324
    new-instance v0, Landroid/icu/text/NumberingSystem$1;

    invoke-direct {v0}, Landroid/icu/text/NumberingSystem$1;-><init>()V

    sput-object v0, Landroid/icu/text/NumberingSystem;->cachedLocaleData:Landroid/icu/impl/CacheBase;

    .line 335
    new-instance v0, Landroid/icu/text/NumberingSystem$2;

    invoke-direct {v0}, Landroid/icu/text/NumberingSystem$2;-><init>()V

    sput-object v0, Landroid/icu/text/NumberingSystem;->cachedStringData:Landroid/icu/impl/CacheBase;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 52
    iput v0, p0, Landroid/icu/text/NumberingSystem;->radix:I

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    const-string v0, "0123456789"

    .line 54
    iput-object v0, p0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    const-string v0, "latn"

    .line 55
    iput-object v0, p0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 0

    .line 36
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->lookupInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableNames()[Ljava/lang/String;
    .locals 3

    const-string v0, "numberingSystems"

    const-string v1, "android/icu/impl/data/icudt60b"

    .line 255
    invoke-static {v1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 256
    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 262
    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 264
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Landroid/icu/text/NumberingSystem;
    .locals 1

    .line 208
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {v0, p0, p1, p2}, Landroid/icu/text/NumberingSystem;->getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;
    .locals 7

    const-string v0, "numbers"

    .line 121
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 123
    sget-object v3, Landroid/icu/text/NumberingSystem;->OTHER_NS_KEYWORDS:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 124
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 135
    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, v1

    .line 145
    :cond_4
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@numbers="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    new-instance v2, Landroid/icu/text/NumberingSystem$LocaleLookupData;

    invoke-direct {v2, p0, v0}, Landroid/icu/text/NumberingSystem$LocaleLookupData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 152
    sget-object p0, Landroid/icu/text/NumberingSystem;->cachedLocaleData:Landroid/icu/impl/CacheBase;

    invoke-virtual {p0, v1, v2}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NumberingSystem;

    return-object p0
.end method

.method private static getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {p3}, Landroid/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid digit string for numbering system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_1
    :goto_0
    new-instance v0, Landroid/icu/text/NumberingSystem;

    invoke-direct {v0}, Landroid/icu/text/NumberingSystem;-><init>()V

    .line 101
    iput p1, v0, Landroid/icu/text/NumberingSystem;->radix:I

    .line 102
    iput-boolean p2, v0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    .line 103
    iput-object p3, v0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    .line 104
    iput-object p0, v0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-object v0

    .line 92
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid radix for numbering system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberingSystem;
    .locals 0

    .line 112
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0
.end method

.method public static getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 2

    .line 222
    sget-object v0, Landroid/icu/text/NumberingSystem;->cachedStringData:Landroid/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NumberingSystem;

    return-object p0
.end method

.method public static isValidDigitString(Ljava/lang/String;)Z
    .locals 2

    .line 276
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static lookupInstanceByLocale(Landroid/icu/text/NumberingSystem$LocaleLookupData;)Landroid/icu/text/NumberingSystem;
    .locals 4

    .line 166
    iget-object v0, p0, Landroid/icu/text/NumberingSystem$LocaleLookupData;->locale:Landroid/icu/util/ULocale;

    :try_start_0
    const-string v1, "android/icu/impl/data/icudt60b"

    .line 169
    invoke-static {v1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    const-string v1, "NumberElements"

    .line 170
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    iget-object p0, p0, Landroid/icu/text/NumberingSystem$LocaleLookupData;->numbersKeyword:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 179
    :try_start_1
    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "native"

    .line 182
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "finance"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string/jumbo v3, "traditional"

    .line 184
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, v2

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 194
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 198
    new-instance v1, Landroid/icu/text/NumberingSystem;

    invoke-direct {v1}, Landroid/icu/text/NumberingSystem;-><init>()V

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    const-string p0, "default"

    goto :goto_0

    .line 172
    :catch_1
    new-instance p0, Landroid/icu/text/NumberingSystem;

    invoke-direct {p0}, Landroid/icu/text/NumberingSystem;-><init>()V

    return-object p0
.end method

.method private static lookupInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 4

    const-string v0, "numberingSystems"

    :try_start_0
    const-string v1, "android/icu/impl/data/icudt60b"

    .line 230
    invoke-static {v1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 231
    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 232
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "desc"

    .line 234
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "radix"

    .line 235
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    const-string v3, "algorithmic"

    .line 236
    invoke-virtual {v0, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 237
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v2

    .line 238
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 246
    :goto_0
    invoke-static {p0, v2, v3, v1}, Landroid/icu/text/NumberingSystem;->getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 297
    iget-object p0, p0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 304
    iget-object p0, p0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getRadix()I
    .locals 0

    .line 284
    iget p0, p0, Landroid/icu/text/NumberingSystem;->radix:I

    return p0
.end method

.method public isAlgorithmic()Z
    .locals 0

    .line 313
    iget-boolean p0, p0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    return p0
.end method
