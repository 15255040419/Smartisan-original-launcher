.class public final Landroid/icu/util/ULocale;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/ULocale$JDKLocaleHelper;,
        Landroid/icu/util/ULocale$Builder;,
        Landroid/icu/util/ULocale$Minimize;,
        Landroid/icu/util/ULocale$Type;,
        Landroid/icu/util/ULocale$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field public static ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type; = null

.field private static final CACHE:Landroid/icu/impl/SoftCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SoftCache<",
            "Ljava/util/Locale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final CANADA:Landroid/icu/util/ULocale;

.field public static final CANADA_FRENCH:Landroid/icu/util/ULocale;

.field private static CANONICALIZE_MAP:[[Ljava/lang/String; = null

.field public static final CHINA:Landroid/icu/util/ULocale;

.field public static final CHINESE:Landroid/icu/util/ULocale;

.field private static final EMPTY_LOCALE:Ljava/util/Locale;

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final ENGLISH:Landroid/icu/util/ULocale;

.field public static final FRANCE:Landroid/icu/util/ULocale;

.field public static final FRENCH:Landroid/icu/util/ULocale;

.field public static final GERMAN:Landroid/icu/util/ULocale;

.field public static final GERMANY:Landroid/icu/util/ULocale;

.field public static final ITALIAN:Landroid/icu/util/ULocale;

.field public static final ITALY:Landroid/icu/util/ULocale;

.field public static final JAPAN:Landroid/icu/util/ULocale;

.field public static final JAPANESE:Landroid/icu/util/ULocale;

.field public static final KOREA:Landroid/icu/util/ULocale;

.field public static final KOREAN:Landroid/icu/util/ULocale;

.field private static final LANG_DIR_STRING:Ljava/lang/String; = "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

.field private static final LOCALE_ATTRIBUTE_KEY:Ljava/lang/String; = "attribute"

.field public static final PRC:Landroid/icu/util/ULocale;

.field public static final PRIVATE_USE_EXTENSION:C = 'x'

.field public static final ROOT:Landroid/icu/util/ULocale;

.field public static final SIMPLIFIED_CHINESE:Landroid/icu/util/ULocale;

.field public static final TAIWAN:Landroid/icu/util/ULocale;

.field public static final TRADITIONAL_CHINESE:Landroid/icu/util/ULocale;

.field public static final UK:Landroid/icu/util/ULocale;

.field private static final UNDEFINED_LANGUAGE:Ljava/lang/String; = "und"

.field private static final UNDEFINED_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNDEFINED_SCRIPT:Ljava/lang/String; = "Zzzz"

.field private static final UNDERSCORE:C = '_'

.field public static final UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final US:Landroid/icu/util/ULocale;

.field public static VALID_LOCALE:Landroid/icu/util/ULocale$Type; = null

.field private static defaultCategoryLocales:[Ljava/util/Locale; = null

.field private static defaultCategoryULocales:[Landroid/icu/util/ULocale; = null

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static defaultULocale:Landroid/icu/util/ULocale; = null

.field private static nameCache:Landroid/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x338ef66846d00be1L

.field private static variantsToKeywords:[[Ljava/lang/String;


# instance fields
.field private volatile transient baseLocale:Landroid/icu/impl/locale/BaseLocale;

.field private volatile transient extensions:Landroid/icu/impl/locale/LocaleExtensions;

.field private volatile transient locale:Ljava/util/Locale;

.field private localeID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 107
    new-instance v0, Landroid/icu/util/ULocale$1;

    invoke-direct {v0}, Landroid/icu/util/ULocale$1;-><init>()V

    sput-object v0, Landroid/icu/util/ULocale;->nameCache:Landroid/icu/impl/CacheBase;

    .line 117
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v0, v2, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->ENGLISH:Landroid/icu/util/ULocale;

    .line 122
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    const-string v2, "fr"

    invoke-direct {v0, v2, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->FRENCH:Landroid/icu/util/ULocale;

    .line 127
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v2, "de"

    invoke-direct {v0, v2, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->GERMAN:Landroid/icu/util/ULocale;

    .line 132
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    const-string v3, "it"

    invoke-direct {v0, v3, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->ITALIAN:Landroid/icu/util/ULocale;

    .line 137
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const-string v3, "ja"

    invoke-direct {v0, v3, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->JAPANESE:Landroid/icu/util/ULocale;

    .line 142
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const-string v3, "ko"

    invoke-direct {v0, v3, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->KOREAN:Landroid/icu/util/ULocale;

    .line 147
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string/jumbo v3, "zh"

    invoke-direct {v0, v3, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->CHINESE:Landroid/icu/util/ULocale;

    .line 175
    new-instance v0, Landroid/icu/util/ULocale;

    const-string/jumbo v1, "zh_Hans"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/ULocale;->SIMPLIFIED_CHINESE:Landroid/icu/util/ULocale;

    .line 181
    new-instance v0, Landroid/icu/util/ULocale;

    const-string/jumbo v4, "zh_Hant"

    invoke-direct {v0, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/ULocale;->TRADITIONAL_CHINESE:Landroid/icu/util/ULocale;

    .line 186
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    const-string v6, "fr_FR"

    invoke-direct {v0, v6, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->FRANCE:Landroid/icu/util/ULocale;

    .line 191
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    const-string v7, "de_DE"

    invoke-direct {v0, v7, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->GERMANY:Landroid/icu/util/ULocale;

    .line 196
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    const-string v8, "it_IT"

    invoke-direct {v0, v8, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->ITALY:Landroid/icu/util/ULocale;

    .line 201
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    const-string v9, "ja_JP"

    invoke-direct {v0, v9, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->JAPAN:Landroid/icu/util/ULocale;

    .line 206
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    const-string v9, "ko_KR"

    invoke-direct {v0, v9, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->KOREA:Landroid/icu/util/ULocale;

    .line 211
    new-instance v0, Landroid/icu/util/ULocale;

    const-string/jumbo v5, "zh_Hans_CN"

    invoke-direct {v0, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/ULocale;->CHINA:Landroid/icu/util/ULocale;

    .line 216
    sget-object v0, Landroid/icu/util/ULocale;->CHINA:Landroid/icu/util/ULocale;

    sput-object v0, Landroid/icu/util/ULocale;->PRC:Landroid/icu/util/ULocale;

    .line 221
    new-instance v0, Landroid/icu/util/ULocale;

    const-string/jumbo v5, "zh_Hant_TW"

    invoke-direct {v0, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/ULocale;->TAIWAN:Landroid/icu/util/ULocale;

    .line 226
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v9, "en_GB"

    invoke-direct {v0, v9, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->UK:Landroid/icu/util/ULocale;

    .line 231
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "en_US"

    invoke-direct {v0, v9, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    .line 236
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    const-string v9, "en_CA"

    invoke-direct {v0, v9, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->CANADA:Landroid/icu/util/ULocale;

    .line 241
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v5, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    const-string v9, "fr_CA"

    invoke-direct {v0, v9, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->CANADA_FRENCH:Landroid/icu/util/ULocale;

    .line 252
    new-instance v0, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v0, v5, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    .line 260
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v9, Landroid/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v5, v9}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 277
    new-instance v0, Landroid/icu/util/ULocale$2;

    invoke-direct {v0}, Landroid/icu/util/ULocale$2;-><init>()V

    sput-object v0, Landroid/icu/util/ULocale;->CACHE:Landroid/icu/impl/SoftCache;

    const/16 v0, 0x32

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "C"

    const-string v10, "en_US_POSIX"

    .line 306
    filled-new-array {v9, v10, v5, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v0, v10

    const-string v9, "art_LOJBAN"

    const-string v11, "jbo"

    filled-new-array {v9, v11, v5, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v0, v11

    const-string v9, "az_AZ_CYRL"

    const-string v12, "az_Cyrl_AZ"

    filled-new-array {v9, v12, v5, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v0, v12

    const-string v9, "az_AZ_LATN"

    const-string v12, "az_Latn_AZ"

    filled-new-array {v9, v12, v5, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v0, v12

    const-string v9, "ESP"

    const-string v12, "currency"

    const-string v13, "ca_ES_PREEURO"

    const-string v14, "ca_ES"

    filled-new-array {v13, v14, v12, v9}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    aput-object v13, v0, v14

    const-string v13, "cel_GAULISH"

    const-string v14, "cel__GAULISH"

    filled-new-array {v13, v14, v5, v5}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    aput-object v13, v0, v14

    const-string v13, "de_1901"

    const-string v14, "de__1901"

    filled-new-array {v13, v14, v5, v5}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v0, v14

    const-string v13, "de_1906"

    const-string v14, "de__1906"

    filled-new-array {v13, v14, v5, v5}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v0, v14

    const-string v13, "collation"

    const-string v14, "de__PHONEBOOK"

    const-string/jumbo v15, "phonebook"

    filled-new-array {v14, v2, v13, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0x8

    aput-object v2, v0, v14

    const-string v2, "de_AT_PREEURO"

    const-string v14, "de_AT"

    const-string v15, "ATS"

    filled-new-array {v2, v14, v12, v15}, [Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0x9

    aput-object v2, v0, v14

    const-string v2, "de_DE_PREEURO"

    const-string v14, "DEM"

    filled-new-array {v2, v7, v12, v14}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xa

    aput-object v2, v0, v7

    const-string v2, "de_LU_PREEURO"

    const-string v7, "de_LU"

    const-string v14, "EUR"

    filled-new-array {v2, v7, v12, v14}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xb

    aput-object v2, v0, v7

    const-string v2, "el_GR_PREEURO"

    const-string v7, "el_GR"

    const-string v14, "GRD"

    filled-new-array {v2, v7, v12, v14}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xc

    aput-object v2, v0, v7

    const-string v2, "en_BOONT"

    const-string v7, "en__BOONT"

    filled-new-array {v2, v7, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xd

    aput-object v2, v0, v7

    const-string v2, "en_SCOUSE"

    const-string v7, "en__SCOUSE"

    filled-new-array {v2, v7, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xe

    aput-object v2, v0, v7

    const-string v2, "BEF"

    const-string v7, "en_BE_PREEURO"

    const-string v14, "en_BE"

    filled-new-array {v7, v14, v12, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0xf

    aput-object v7, v0, v14

    const-string v7, "en_IE_PREEURO"

    const-string v14, "en_IE"

    const-string v15, "IEP"

    filled-new-array {v7, v14, v12, v15}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x10

    aput-object v7, v0, v14

    const-string v7, "es__TRADITIONAL"

    const-string v14, "es"

    const-string/jumbo v15, "traditional"

    filled-new-array {v7, v14, v13, v15}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x11

    aput-object v7, v0, v14

    const-string v7, "es_ES_PREEURO"

    const-string v14, "es_ES"

    filled-new-array {v7, v14, v12, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x12

    aput-object v7, v0, v14

    const-string v7, "eu_ES_PREEURO"

    const-string v14, "eu_ES"

    filled-new-array {v7, v14, v12, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x13

    aput-object v7, v0, v14

    const-string v7, "fi_FI_PREEURO"

    const-string v14, "fi_FI"

    const-string v15, "FIM"

    filled-new-array {v7, v14, v12, v15}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x14

    aput-object v7, v0, v14

    const-string v7, "fr_BE_PREEURO"

    const-string v14, "fr_BE"

    filled-new-array {v7, v14, v12, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x15

    aput-object v7, v0, v14

    const-string v7, "fr_FR_PREEURO"

    const-string v14, "FRF"

    filled-new-array {v7, v6, v12, v14}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x16

    aput-object v6, v0, v7

    const-string v6, "fr_LU_PREEURO"

    const-string v7, "fr_LU"

    const-string v14, "LUF"

    filled-new-array {v6, v7, v12, v14}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x17

    aput-object v6, v0, v7

    const-string v6, "ga_IE_PREEURO"

    const-string v7, "ga_IE"

    const-string v14, "IEP"

    filled-new-array {v6, v7, v12, v14}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x18

    aput-object v6, v0, v7

    const-string v6, "gl_ES_PREEURO"

    const-string v7, "gl_ES"

    filled-new-array {v6, v7, v12, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x19

    aput-object v6, v0, v7

    const-string v6, "hi__DIRECT"

    const-string v7, "hi"

    const-string v9, "direct"

    filled-new-array {v6, v7, v13, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1a

    aput-object v6, v0, v7

    const-string v6, "it_IT_PREEURO"

    const-string v7, "ITL"

    filled-new-array {v6, v8, v12, v7}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b

    aput-object v6, v0, v7

    const-string v6, "ja_JP_TRADITIONAL"

    const-string v7, "ja_JP"

    const-string v8, "calendar"

    const-string v9, "japanese"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1c

    aput-object v6, v0, v7

    const-string v6, "nl_BE_PREEURO"

    const-string v7, "nl_BE"

    filled-new-array {v6, v7, v12, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1d

    aput-object v2, v0, v6

    const-string v2, "nl_NL_PREEURO"

    const-string v6, "nl_NL"

    const-string v7, "NLG"

    filled-new-array {v2, v6, v12, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1e

    aput-object v2, v0, v6

    const-string/jumbo v2, "pt_PT_PREEURO"

    const-string/jumbo v6, "pt_PT"

    const-string v7, "PTE"

    filled-new-array {v2, v6, v12, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x1f

    aput-object v2, v0, v6

    const-string/jumbo v2, "sl_ROZAJ"

    const-string/jumbo v6, "sl__ROZAJ"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x20

    aput-object v2, v0, v6

    const-string/jumbo v2, "sr_SP_CYRL"

    const-string/jumbo v6, "sr_Cyrl_RS"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x21

    aput-object v2, v0, v6

    const-string/jumbo v2, "sr_SP_LATN"

    const-string/jumbo v6, "sr_Latn_RS"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x22

    aput-object v2, v0, v6

    const-string/jumbo v2, "sr_YU_CYRILLIC"

    const-string/jumbo v6, "sr_Cyrl_RS"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x23

    aput-object v2, v0, v6

    const-string/jumbo v2, "th_TH_TRADITIONAL"

    const-string/jumbo v6, "th_TH"

    const-string v7, "calendar"

    const-string v8, "buddhist"

    filled-new-array {v2, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x24

    aput-object v2, v0, v6

    const-string/jumbo v2, "uz_UZ_CYRILLIC"

    const-string/jumbo v6, "uz_Cyrl_UZ"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x25

    aput-object v2, v0, v6

    const-string/jumbo v2, "uz_UZ_CYRL"

    const-string/jumbo v6, "uz_Cyrl_UZ"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x26

    aput-object v2, v0, v6

    const-string/jumbo v2, "uz_UZ_LATN"

    const-string/jumbo v6, "uz_Latn_UZ"

    filled-new-array {v2, v6, v5, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x27

    aput-object v2, v0, v6

    const-string/jumbo v2, "zh_CHS"

    filled-new-array {v2, v1, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_CHT"

    filled-new-array {v1, v4, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_GAN"

    const-string/jumbo v2, "zh__GAN"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_GUOYU"

    filled-new-array {v1, v3, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_HAKKA"

    const-string/jumbo v2, "zh__HAKKA"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_MIN"

    const-string/jumbo v2, "zh__MIN"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_MIN_NAN"

    const-string/jumbo v2, "zh__MINNAN"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_WUU"

    const-string/jumbo v2, "zh__WUU"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_XIANG"

    const-string/jumbo v2, "zh__XIANG"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_YUE"

    const-string/jumbo v2, "zh__YUE"

    filled-new-array {v1, v2, v5, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "EURO"

    const-string v2, "EUR"

    .line 364
    filled-new-array {v1, v12, v2}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "PINYIN"

    const-string/jumbo v2, "pinyin"

    filled-new-array {v1, v13, v2}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "STROKE"

    const-string/jumbo v2, "stroke"

    filled-new-array {v1, v13, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    .line 503
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 506
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/util/Locale;

    sput-object v0, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    .line 507
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Landroid/icu/util/ULocale;

    sput-object v0, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    .line 510
    sget-object v0, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    .line 520
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v10, v1, :cond_2

    aget-object v2, v0, v10

    .line 522
    invoke-virtual {v2}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v3

    .line 523
    sget-object v4, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v4, v3

    .line 524
    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    sget-object v4, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 531
    :cond_0
    sget-object v0, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->isOriginalDefaultLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "user.script"

    .line 533
    invoke-static {v0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    sget-object v1, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    invoke-direct {v1}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-virtual {v1}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v2, v0, v3, v1}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    .line 540
    sget-object v1, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    invoke-direct {v1}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    .line 546
    :cond_1
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v10, v1, :cond_2

    aget-object v2, v0, v10

    .line 547
    invoke-virtual {v2}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v2

    .line 548
    sget-object v3, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    sget-object v4, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    aput-object v4, v3, v2

    .line 549
    sget-object v3, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    sget-object v4, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    aput-object v4, v3, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1849
    :cond_2
    new-instance v0, Landroid/icu/util/ULocale$Type;

    invoke-direct {v0, v5}, Landroid/icu/util/ULocale$Type;-><init>(Landroid/icu/util/ULocale$1;)V

    sput-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    .line 1864
    new-instance v0, Landroid/icu/util/ULocale$Type;

    invoke-direct {v0, v5}, Landroid/icu/util/ULocale$Type;-><init>(Landroid/icu/util/ULocale$1;)V

    sput-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    invoke-static {p1}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 452
    invoke-static {p1, p2, p3, v0}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    .line 376
    iput-object p2, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    .line 385
    iput-object p1, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static acceptLanguage(Ljava/lang/String;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1899
    :try_start_0
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    return-object v1

    .line 1906
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/icu/util/ULocale;->acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0

    .line 1895
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static acceptLanguage(Ljava/lang/String;[Z)Landroid/icu/util/ULocale;
    .locals 1

    .line 1988
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/icu/util/ULocale;->acceptLanguage(Ljava/lang/String;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 1929
    aput-boolean v1, p2, v0

    :cond_0
    move v1, v0

    .line 1931
    :goto_0
    array-length v2, p0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_8

    .line 1932
    aget-object v2, p0, v1

    move-object v4, p2

    :goto_1
    move v5, v0

    .line 1935
    :goto_2
    array-length v6, p1

    if-ge v5, v6, :cond_5

    .line 1936
    aget-object v6, p1, v5

    invoke-virtual {v6, v2}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v4, :cond_1

    .line 1938
    aput-boolean v0, v4, v0

    .line 1940
    :cond_1
    aget-object p0, p1, v5

    return-object p0

    .line 1944
    :cond_2
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    aget-object v6, p1, v5

    .line 1945
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    aget-object v6, p1, v5

    .line 1946
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, p1, v5

    .line 1947
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, p1, v5

    .line 1948
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1949
    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v6

    .line 1950
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    if-eqz v4, :cond_3

    .line 1952
    aput-boolean v0, v4, v0

    :cond_3
    return-object v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1958
    :cond_5
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v2

    .line 1959
    invoke-static {v2}, Landroid/icu/impl/LocaleUtility;->fallback(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1961
    new-instance v4, Landroid/icu/util/ULocale;

    invoke-direct {v4, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/util/Locale;)V

    move-object v2, v4

    goto :goto_3

    :cond_6
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    move-object v4, v3

    goto/16 :goto_1

    :cond_8
    return-object v3
.end method

.method public static acceptLanguage([Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 1

    .line 2008
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/icu/util/ULocale;->acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/BaseLocale;
    .locals 0

    .line 103
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LocaleExtensions;
    .locals 0

    .line 103
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;
    .locals 0

    .line 103
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2304
    iget-object v1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2308
    iget-object v2, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2309
    iget-object v2, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 2312
    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    .line 2313
    invoke-static {v2, v3, v0, v1}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2319
    :cond_1
    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private static appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 2574
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    .line 2575
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2578
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private base()Landroid/icu/impl/locale/BaseLocale;
    .locals 5

    .line 3796
    iget-object v0, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 3799
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3800
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    iget-object v1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 3801
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 3802
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 3803
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 3804
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 3806
    :goto_0
    invoke-static {v0, v2, v3, v1}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    .line 3808
    :cond_1
    iget-object p0, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    return-object p0
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1132
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    .line 1133
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 1140
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v3

    :cond_0
    const/4 p0, 0x0

    move v3, p0

    .line 1148
    :goto_0
    sget-object v4, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x2

    if-ge v3, v5, :cond_3

    .line 1149
    aget-object v4, v4, v3

    .line 1150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, p0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-le v5, v8, :cond_2

    .line 1154
    invoke-virtual {v2, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1155
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/2addr v5, v8

    .line 1156
    invoke-virtual {v2, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1158
    :cond_1
    invoke-virtual {v0, v2}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1159
    aget-object v3, v4, v1

    aget-object v4, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/LocaleIDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, p0

    :goto_1
    move v4, p0

    .line 1165
    :goto_2
    sget-object v5, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    array-length v7, v5

    if-ge v4, v7, :cond_5

    .line 1166
    aget-object v5, v5, v4

    aget-object v5, v5, p0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1169
    sget-object p0, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    aget-object p0, p0, v4

    .line 1170
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1171
    aget-object v2, p0, v6

    if-eqz v2, :cond_6

    .line 1172
    aget-object v2, p0, v6

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-virtual {v0, v2, p0}, Landroid/icu/impl/LocaleIDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v1, v3

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    .line 1180
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "nb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1181
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "nn"

    invoke-static {v3, p0, v1, v2}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1185
    :cond_7
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 2

    .line 461
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    check-cast v1, Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2823
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2826
    invoke-static {p0, p1, p2, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2832
    invoke-static {v0}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2852
    invoke-static {v1, v1, v1, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2864
    :cond_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2867
    invoke-static {p0, p1, v1, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2873
    invoke-static {v0}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2878
    invoke-static {v1, v1, p2, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2890
    :cond_1
    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2893
    invoke-static {p0, v1, p2, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2899
    invoke-static {v0}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2905
    invoke-static {v1, p1, v1, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2919
    :cond_2
    invoke-static {p0, v1, v1, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2925
    invoke-static {p0}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2931
    invoke-static {v1, p1, p2, p3, p0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2737
    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2605
    invoke-static {p0}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2606
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 2610
    :cond_0
    invoke-static {p4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p0

    const-string/jumbo v1, "und"

    if-eqz p0, :cond_1

    .line 2615
    invoke-static {v1, v0}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 2620
    :cond_1
    new-instance p0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {p0, p4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 2629
    invoke-static {v2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v2

    .line 2628
    :cond_2
    invoke-static {v1, v0}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2633
    :goto_1
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2634
    invoke-static {p1, v0}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 2638
    :cond_3
    invoke-static {p4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    if-nez p0, :cond_4

    .line 2643
    new-instance p0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {p0, p4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2646
    :cond_4
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object p1

    .line 2648
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2649
    invoke-static {p1, v0}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2655
    :cond_5
    :goto_2
    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_6

    .line 2656
    invoke-static {p2, v0}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_3
    move p0, v2

    goto :goto_4

    .line 2662
    :cond_6
    invoke-static {p4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    if-nez p0, :cond_7

    .line 2667
    new-instance p0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {p0, p4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2670
    :cond_7
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 2672
    invoke-static {p0}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 2673
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_8
    move p0, v1

    :goto_4
    if-eqz p3, :cond_e

    .line 2681
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_e

    .line 2689
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/4 p2, 0x2

    const/16 p4, 0x5f

    if-ne p1, p4, :cond_9

    .line 2690
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p4, :cond_a

    move v1, p2

    goto :goto_5

    :cond_9
    move v1, v2

    :cond_a
    :goto_5
    if-eqz p0, :cond_c

    if-ne v1, p2, :cond_b

    .line 2704
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2707
    :cond_b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    if-ne v1, v2, :cond_d

    .line 2716
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2718
    :cond_d
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2722
    :cond_e
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private extensions()Landroid/icu/impl/locale/LocaleExtensions;
    .locals 6

    .line 3812
    iget-object v0, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    if-nez v0, :cond_5

    .line 3813
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3815
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    iput-object v0, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    goto/16 :goto_2

    .line 3817
    :cond_0
    new-instance v1, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3818
    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3819
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "attribute"

    .line 3820
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 3822
    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[-_]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3823
    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 3825
    :try_start_0
    invoke-virtual {v1, v5}, Landroid/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3830
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_3

    .line 3831
    invoke-static {v2}, Landroid/icu/util/ULocale;->toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3832
    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/icu/util/ULocale;->toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 3835
    :try_start_1
    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_1
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3840
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-eq v3, v5, :cond_1

    .line 3842
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "_"

    const-string v5, "-"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_2
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3849
    :cond_4
    invoke-virtual {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    .line 3852
    :cond_5
    :goto_2
    iget-object p0, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    return-object p0
.end method

.method public static forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 1

    const/4 v0, 0x0

    .line 3263
    invoke-static {p0, v0}, Landroid/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;

    move-result-object p0

    .line 3264
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3265
    invoke-virtual {v0, p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 3266
    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Landroid/icu/impl/locale/BaseLocale;

    move-result-object p0

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 397
    :cond_0
    sget-object v1, Landroid/icu/util/ULocale;->CACHE:Landroid/icu/impl/SoftCache;

    invoke-virtual {v1, p0, v0}, Landroid/icu/impl/SoftCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public static getAvailableLocales()[Landroid/icu/util/ULocale;
    .locals 1

    .line 814
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    .line 1013
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 1016
    :cond_0
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 894
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault()Landroid/icu/util/ULocale;
    .locals 8

    .line 563
    const-class v0, Landroid/icu/util/ULocale;

    monitor-enter v0

    .line 564
    :try_start_0
    sget-object v1, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    if-nez v1, :cond_0

    .line 573
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    monitor-exit v0

    return-object v1

    .line 575
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 576
    sget-object v2, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 577
    sput-object v1, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 578
    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    sput-object v2, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    .line 580
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v2

    if-nez v2, :cond_1

    .line 584
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 585
    invoke-virtual {v5}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v5

    .line 586
    sget-object v6, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v1, v6, v5

    .line 587
    sget-object v6, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 591
    :cond_1
    sget-object v1, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 592
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;
    .locals 8

    .line 629
    const-class v0, Landroid/icu/util/ULocale;

    monitor-enter v0

    .line 630
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    .line 631
    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 635
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    monitor-exit v0

    return-object p0

    .line 637
    :cond_0
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object p0

    .line 639
    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 640
    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object p0, v2, v1

    .line 641
    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    aput-object p0, v2, v1

    goto :goto_1

    .line 656
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 657
    sget-object v2, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 658
    sput-object p0, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 659
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    sput-object v2, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    .line 661
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 662
    invoke-virtual {v5}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v5

    .line 663
    sget-object v6, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object p0, v6, v5

    .line 664
    sget-object v6, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 671
    :cond_2
    :goto_1
    sget-object p0, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    aget-object p0, p0, v1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 672
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1577
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1564
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1582
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 1583
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1639
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1661
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1650
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1665
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/LocaleDisplayNames;->keyDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1712
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1698
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p0}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1718
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1719
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1720
    invoke-static {p2}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Landroid/icu/text/LocaleDisplayNames;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayLanguage(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1376
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v0, p1, p0}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1364
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 1425
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 1426
    :goto_0
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/LocaleDisplayNames;->languageDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayLanguageWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1420
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {v0, p1, p0}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayLanguageWithDialect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1407
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p0, p1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1760
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1749
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1764
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayNameWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1809
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayNameWithDialect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1796
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1813
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {p1, v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 1814
    invoke-virtual {p1, p0}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayScript(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1505
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1481
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayScriptInContext(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1518
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayScriptInContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1495
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1528
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 1529
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1523
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 1524
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayVariant(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1623
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayVariant(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1612
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1627
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 1628
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/icu/text/LocaleDisplayNames;->variantDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 958
    invoke-static {p0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x40

    .line 976
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 978
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/16 v2, 0x5f

    .line 980
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    if-lez v3, :cond_3

    add-int/lit8 v1, v3, -0x1

    .line 986
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 992
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getISO3Country(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1285
    invoke-static {p0}, Landroid/icu/util/ULocale;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/LocaleIDs;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getISO3Language(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1263
    invoke-static {p0}, Landroid/icu/util/ULocale;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/LocaleIDs;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    .line 822
    invoke-static {}, Landroid/icu/impl/LocaleIDs;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    .line 833
    invoke-static {}, Landroid/icu/impl/LocaleIDs;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;
    .locals 9

    .line 3729
    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 3730
    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 3729
    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3732
    invoke-virtual {p1}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v1

    .line 3733
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 3738
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 3739
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 3740
    invoke-virtual {p1, v3}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    move-result-object v4

    .line 3741
    instance-of v5, v4, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    if-eqz v5, :cond_6

    .line 3742
    check-cast v4, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    .line 3743
    invoke-virtual {v4}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v3

    .line 3744
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3745
    invoke-virtual {v4, v5}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3747
    invoke-static {v5}, Landroid/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3748
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v6, "yes"

    :cond_1
    invoke-static {v5, v6}, Landroid/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "va"

    .line 3750
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "posix"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 3751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_POSIX"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3753
    :cond_2
    invoke-virtual {v2, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3757
    :cond_3
    invoke-virtual {v4}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v3

    .line 3758
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 3759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3760
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3761
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    const/16 v6, 0x2d

    .line 3762
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3764
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3766
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attribute"

    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3769
    :cond_6
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3773
    :cond_7
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    .line 3774
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "@"

    .line 3775
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3776
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    .line 3778
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_8

    const-string v2, ";"

    .line 3780
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    .line 3784
    :goto_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 3785
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3786
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3789
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3792
    :cond_a
    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1122
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/icu/impl/LocaleIDParser;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKeywords(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1102
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getKeywords()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 854
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "@"

    .line 1067
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/icu/util/ULocale;->getShortestSubtagLength(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1068
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 1075
    :cond_1
    :goto_0
    sget-object v0, Landroid/icu/util/ULocale;->nameCache:Landroid/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "rg"

    .line 920
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 922
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZZZZ"

    .line 923
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x2

    .line 924
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 927
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 929
    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 930
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 873
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getShortestSubtagLength(Ljava/lang/String;)I
    .locals 9

    .line 1035
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v0

    move v3, v1

    move v5, v3

    move v6, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1041
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5f

    if-eq v7, v8, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_1

    if-eqz v6, :cond_0

    move v5, v1

    move v6, v5

    :cond_0
    add-int/2addr v5, v2

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    if-ge v5, v4, :cond_2

    move v4, v5

    :cond_2
    move v6, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public static getVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 950
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isEmptyString(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 2563
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "android/icu/impl/data/icudt60b"

    const-string v1, "likelySubtags"

    .line 2807
    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 2810
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 467
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 468
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p0, 0x5f

    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 471
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    .line 474
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 475
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_5

    .line 478
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    if-eqz p2, :cond_3

    .line 479
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 480
    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static minimizeSubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1

    .line 2349
    sget-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2411
    iget-object v1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 2415
    aget-object v2, v0, v2

    const/4 v3, 0x1

    .line 2416
    aget-object v3, v0, v3

    const/4 v4, 0x2

    .line 2417
    aget-object v0, v0, v4

    .line 2420
    iget-object v4, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v1, v4, :cond_0

    .line 2425
    iget-object v4, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v5

    .line 2433
    :goto_0
    invoke-static {v2, v3, v0, v5}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2443
    invoke-static {v4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object p0

    .line 2451
    :cond_1
    invoke-static {v2, v5, v5, v5}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2457
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2459
    invoke-static {v2, v5, v5, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2465
    new-instance p1, Landroid/icu/util/ULocale;

    invoke-direct {p1, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2472
    :cond_2
    sget-object v6, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    if-ne p1, v6, :cond_4

    .line 2473
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2475
    invoke-static {v2, v5, v0, v5}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2481
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2483
    invoke-static {v2, v5, v0, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2489
    new-instance p1, Landroid/icu/util/ULocale;

    invoke-direct {p1, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2492
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_6

    .line 2494
    invoke-static {v2, v3, v5, v5}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2500
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2502
    invoke-static {v2, v3, v5, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2508
    new-instance p1, Landroid/icu/util/ULocale;

    invoke-direct {p1, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2512
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    .line 2514
    invoke-static {v2, v3, v5, v5}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2520
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2522
    invoke-static {v2, v3, v5, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2528
    new-instance p1, Landroid/icu/util/ULocale;

    invoke-direct {p1, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2531
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_6

    .line 2533
    invoke-static {v2, v5, v0, v5}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2539
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2541
    invoke-static {v2, v5, v0, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2547
    new-instance p1, Landroid/icu/util/ULocale;

    invoke-direct {p1, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    return-object p0
.end method

.method static parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2042
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2051
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_23

    .line 2053
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x2e

    const/16 v14, 0x39

    const/16 v15, 0x3b

    const/16 v13, 0x30

    const/16 v4, 0x2c

    const/16 v16, 0x1

    const/16 v10, 0x20

    const/16 v9, 0x9

    const/4 v12, -0x1

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    if-ne v8, v4, :cond_0

    goto/16 :goto_9

    :cond_0
    if-eq v8, v10, :cond_1d

    if-eq v8, v9, :cond_1d

    goto :goto_1

    :pswitch_1
    if-gt v13, v8, :cond_1

    if-gt v8, v14, :cond_1

    .line 2207
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_1
    if-ne v8, v4, :cond_2

    goto/16 :goto_9

    :cond_2
    if-eq v8, v10, :cond_6

    if-ne v8, v9, :cond_3

    goto :goto_3

    :pswitch_2
    if-gt v13, v8, :cond_3

    if-gt v8, v14, :cond_3

    .line 2193
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v9

    goto/16 :goto_8

    :cond_3
    :goto_1
    move v6, v12

    goto/16 :goto_8

    :pswitch_3
    if-ne v8, v11, :cond_4

    .line 2173
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v6, 0x8

    goto/16 :goto_8

    :cond_4
    if-ne v8, v4, :cond_5

    goto/16 :goto_9

    :cond_5
    if-eq v8, v10, :cond_6

    if-ne v8, v9, :cond_3

    :cond_6
    :goto_3
    const/16 v6, 0xa

    goto/16 :goto_8

    :pswitch_4
    if-ne v8, v13, :cond_7

    .line 2152
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v6, 0x7

    goto/16 :goto_8

    :cond_7
    const/16 v4, 0x31

    if-ne v8, v4, :cond_8

    .line 2156
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    if-ne v8, v11, :cond_9

    if-eqz p1, :cond_3

    .line 2160
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    if-eq v8, v10, :cond_1d

    if-eq v8, v9, :cond_1d

    goto :goto_1

    :pswitch_5
    const/16 v4, 0x3d

    if-ne v8, v4, :cond_a

    const/4 v6, 0x6

    goto/16 :goto_8

    :cond_a
    if-eq v8, v10, :cond_1d

    if-eq v8, v9, :cond_1d

    goto :goto_1

    :pswitch_6
    const/16 v4, 0x71

    if-ne v8, v4, :cond_b

    const/4 v6, 0x5

    goto/16 :goto_8

    :cond_b
    if-eq v8, v10, :cond_1d

    if-eq v8, v9, :cond_1d

    goto :goto_1

    :pswitch_7
    if-ne v8, v4, :cond_c

    goto/16 :goto_9

    :cond_c
    if-ne v8, v15, :cond_d

    :goto_5
    const/4 v6, 0x4

    goto/16 :goto_8

    :cond_d
    if-eq v8, v10, :cond_1d

    if-eq v8, v9, :cond_1d

    goto :goto_1

    :pswitch_8
    if-ne v8, v4, :cond_e

    goto/16 :goto_9

    :cond_e
    if-eq v8, v10, :cond_10

    if-ne v8, v9, :cond_f

    goto :goto_6

    :cond_f
    if-ne v8, v15, :cond_3

    goto :goto_5

    :cond_10
    :goto_6
    const/4 v6, 0x3

    goto/16 :goto_8

    :pswitch_9
    const/16 v11, 0x41

    if-gt v11, v8, :cond_11

    const/16 v11, 0x5a

    if-le v8, v11, :cond_12

    :cond_11
    const/16 v11, 0x61

    if-gt v11, v8, :cond_13

    const/16 v11, 0x7a

    if-gt v8, v11, :cond_13

    .line 2071
    :cond_12
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_13
    const/16 v11, 0x2d

    if-ne v8, v11, :cond_14

    .line 2074
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    move/from16 v7, v16

    goto :goto_8

    :cond_14
    const/16 v11, 0x5f

    if-ne v8, v11, :cond_15

    if-eqz p1, :cond_3

    .line 2078
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_15
    if-gt v13, v8, :cond_16

    if-gt v8, v14, :cond_16

    if-eqz v7, :cond_3

    .line 2084
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_16
    if-ne v8, v4, :cond_17

    goto :goto_9

    :cond_17
    if-eq v8, v10, :cond_10

    if-ne v8, v9, :cond_18

    goto :goto_6

    :cond_18
    if-ne v8, v15, :cond_3

    goto :goto_5

    :pswitch_a
    const/16 v4, 0x41

    if-gt v4, v8, :cond_19

    const/16 v4, 0x5a

    if-le v8, v4, :cond_1a

    :cond_19
    const/16 v4, 0x61

    if-gt v4, v8, :cond_1b

    const/16 v4, 0x7a

    if-gt v8, v4, :cond_1b

    .line 2058
    :cond_1a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v6, v16

    const/4 v7, 0x0

    goto :goto_8

    :cond_1b
    const/16 v4, 0x2a

    if-ne v8, v4, :cond_1c

    .line 2062
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    goto :goto_8

    :cond_1c
    if-eq v8, v10, :cond_1d

    if-eq v8, v9, :cond_1d

    goto/16 :goto_1

    :cond_1d
    :goto_8
    const/16 v16, 0x0

    :goto_9
    if-eq v6, v12, :cond_22

    if-eqz v16, :cond_21

    .line 2236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_1f

    .line 2238
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-wide v10, v8

    :goto_a
    cmpl-double v4, v10, v8

    if-lez v4, :cond_1e

    goto :goto_b

    :cond_1e
    move-wide v8, v10

    :cond_1f
    :goto_b
    const/4 v4, 0x0

    .line 2247
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v4, 0x2a

    if-eq v6, v4, :cond_20

    .line 2248
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v4

    .line 2249
    new-instance v6, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;

    invoke-direct {v6, v8, v9, v4}, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;-><init>(DI)V

    .line 2251
    new-instance v4, Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    const/4 v4, 0x0

    .line 2255
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2256
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v6, v4

    goto :goto_c

    :cond_21
    const/4 v4, 0x0

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2232
    :cond_22
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Invalid Accept-Language"

    invoke-direct {v0, v1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_23
    if-nez v6, :cond_24

    .line 2266
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/icu/util/ULocale;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/ULocale;

    return-object v0

    .line 2262
    :cond_24
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Invalid AcceptlLanguage"

    invoke-direct {v0, v1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTagString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 2750
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2753
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 2754
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 2756
    invoke-static {v1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string/jumbo v1, "und"

    .line 2757
    aput-object v1, p1, v5

    goto :goto_0

    .line 2760
    :cond_0
    aput-object v1, p1, v5

    :goto_0
    const-string v1, "Zzzz"

    .line 2763
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 2764
    aput-object v4, p1, v5

    goto :goto_1

    .line 2767
    :cond_1
    aput-object v2, p1, v5

    :goto_1
    const-string v1, "ZZ"

    .line 2770
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 2771
    aput-object v4, p1, v2

    goto :goto_2

    .line 2774
    :cond_2
    aput-object v3, p1, v2

    .line 2789
    :goto_2
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 2791
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2792
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_3

    add-int/lit8 p0, p0, -0x1

    :cond_3
    return p0

    :cond_4
    const/16 p1, 0x40

    .line 2799
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 2801
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_5
    return p1
.end method

.method public static declared-synchronized setDefault(Landroid/icu/util/ULocale$Category;Landroid/icu/util/ULocale;)V
    .locals 4

    const-class v0, Landroid/icu/util/ULocale;

    monitor-enter v0

    .line 689
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    .line 690
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v2

    .line 691
    sget-object v3, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    aput-object p1, v3, v2

    .line 692
    sget-object p1, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v1, p1, v2

    .line 693
    invoke-static {p0, v1}, Landroid/icu/util/ULocale$JDKLocaleHelper;->setDefault(Landroid/icu/util/ULocale$Category;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefault(Landroid/icu/util/ULocale;)V
    .locals 5

    const-class v0, Landroid/icu/util/ULocale;

    monitor-enter v0

    .line 613
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 614
    sget-object v1, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 615
    sput-object p0, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    .line 617
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 618
    invoke-static {v4, p0}, Landroid/icu/util/ULocale;->setDefault(Landroid/icu/util/ULocale$Category;Landroid/icu/util/ULocale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1220
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3344
    invoke-static {p0}, Landroid/icu/impl/locale/KeyTypeData;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "[0-9a-zA-Z]+"

    .line 3354
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3355
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3387
    invoke-static {p0, p1, v0, v0}, Landroid/icu/impl/locale/KeyTypeData;->toLegacyType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "[0-9a-zA-Z]+([_/\\-][0-9a-zA-Z]+)*"

    .line 3398
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3399
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3289
    invoke-static {p0}, Landroid/icu/impl/locale/KeyTypeData;->toBcpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3290
    invoke-static {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3292
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3324
    invoke-static {p0, p1, v0, v0}, Landroid/icu/impl/locale/KeyTypeData;->toBcpType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3325
    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3327
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public compareTo(Landroid/icu/util/ULocale;)I
    .locals 8

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 750
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez v1, :cond_a

    .line 753
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 756
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 759
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 762
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v4

    .line 763
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v5

    if-nez v4, :cond_1

    if-nez v5, :cond_9

    move v1, v0

    goto :goto_2

    :cond_1
    if-nez v5, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    :goto_0
    if-nez v1, :cond_8

    .line 771
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 772
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    .line 777
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 778
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 779
    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 782
    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    invoke-virtual {p1, v6}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_5

    if-nez v6, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    if-nez v6, :cond_6

    move v1, v2

    goto :goto_0

    .line 789
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_7
    move v1, v7

    goto :goto_0

    :cond_8
    :goto_1
    if-nez v1, :cond_a

    .line 793
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    move v1, v3

    :cond_a
    :goto_2
    if-gez v1, :cond_b

    move v0, v3

    goto :goto_3

    :cond_b
    if-lez v1, :cond_c

    move v0, v2

    :cond_c
    :goto_3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 102
    check-cast p1, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->compareTo(Landroid/icu/util/ULocale;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 726
    :cond_0
    instance-of v0, p1, Landroid/icu/util/ULocale;

    if-eqz v0, :cond_1

    .line 727
    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    check-cast p1, Landroid/icu/util/ULocale;

    iget-object p1, p1, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 0

    .line 1002
    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCharacterOrientation()Ljava/lang/String;
    .locals 3

    const-string v0, "characters"

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string v2, "layout"

    .line 1824
    invoke-static {v1, p0, v2, v0, v0}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 0

    .line 883
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayCountry()Ljava/lang/String;
    .locals 1

    .line 1540
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayCountry(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1551
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1675
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayKeywordValue(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1685
    invoke-static {p0, p1, p2}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLanguage()Ljava/lang/String;
    .locals 2

    .line 1344
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLanguage(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1353
    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLanguageWithDialect()Ljava/lang/String;
    .locals 2

    .line 1385
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLanguageWithDialect(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1395
    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1729
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1738
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayNameWithDialect()Ljava/lang/String;
    .locals 1

    .line 1774
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayNameWithDialect(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1784
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayScript()Ljava/lang/String;
    .locals 1

    .line 1435
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayScript(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1457
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayScriptInContext()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1448
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayScriptInContext(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1470
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayVariant()Ljava/lang/String;
    .locals 1

    .line 1592
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayVariant(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 1601
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExtension(C)Ljava/lang/String;
    .locals 2

    .line 2978
    invoke-static {p1}, Landroid/icu/impl/locale/LocaleExtensions;->isValidKey(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2981
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2979
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid extension key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExtensionKeys()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 2993
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getFallback()Landroid/icu/util/ULocale;
    .locals 3

    .line 966
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 969
    :cond_0
    new-instance v0, Landroid/icu/util/ULocale;

    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast v1, Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 0

    .line 1274
    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/util/ULocale;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 0

    .line 1250
    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/util/ULocale;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1112
    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeywords()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1092
    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/util/ULocale;->getKeywords(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    .line 843
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineOrientation()Ljava/lang/String;
    .locals 3

    const-string v0, "lines"

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string v2, "layout"

    .line 1835
    invoke-static {v1, p0, v2, v0, v0}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1025
    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object p0
.end method

.method public getScript()Ljava/lang/String;
    .locals 0

    .line 863
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3004
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3035
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3021
    invoke-static {p1}, Landroid/icu/impl/locale/LocaleExtensions;->isValidUnicodeLocaleKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3024
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3022
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Unicode locale key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 0

    .line 941
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 710
    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isRightToLeft()Z
    .locals 4

    .line 1309
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1310
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1313
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1314
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v1, "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

    .line 1317
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 1319
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 1326
    :cond_3
    :goto_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 1327
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_4

    return v2

    .line 1332
    :cond_4
    invoke-static {v0}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result p0

    .line 1333
    invoke-static {p0}, Landroid/icu/lang/UScript;->isRightToLeft(I)Z

    move-result p0

    return p0
.end method

.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 1

    .line 1202
    new-instance v0, Landroid/icu/util/ULocale;

    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    check-cast p1, Ljava/util/Locale;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 4

    .line 3092
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    .line 3093
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p0

    .line 3095
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POSIX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3097
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {v1, v2, v0, v3}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    const-string/jumbo v1, "va"

    .line 3098
    invoke-virtual {p0, v1}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3100
    new-instance v2, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v2}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3102
    :try_start_0
    sget-object v3, Landroid/icu/impl/locale/BaseLocale;->ROOT:Landroid/icu/impl/locale/BaseLocale;

    invoke-virtual {v2, v3, p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    const-string/jumbo p0, "posix"

    .line 3103
    invoke-virtual {v2, v1, p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 3104
    invoke-virtual {v2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p0
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3107
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3112
    :cond_0
    :goto_0
    invoke-static {v0, p0}, Landroid/icu/impl/locale/LanguageTag;->parseLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/LanguageTag;

    move-result-object p0

    .line 3114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3115
    invoke-virtual {p0}, Landroid/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 3116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 3117
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3120
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 3121
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "-"

    if-lez v2, :cond_2

    .line 3122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3126
    :cond_2
    invoke-virtual {p0}, Landroid/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 3127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 3128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    :cond_3
    invoke-virtual {p0}, Landroid/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v1

    .line 3133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3135
    invoke-static {v2}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3138
    :cond_4
    invoke-virtual {p0}, Landroid/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v1

    .line 3139
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3141
    invoke-static {v2}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3144
    :cond_5
    invoke-virtual {p0}, Landroid/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object p0

    .line 3145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 3146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 3147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v1, "x"

    .line 3149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3150
    invoke-static {p0}, Landroid/icu/impl/locale/LanguageTag;->canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3153
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toLocale()Ljava/util/Locale;
    .locals 1

    .line 494
    iget-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 495
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toLocale(Landroid/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    .line 497
    :cond_0
    iget-object p0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1083
    iget-object p0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object p0
.end method
