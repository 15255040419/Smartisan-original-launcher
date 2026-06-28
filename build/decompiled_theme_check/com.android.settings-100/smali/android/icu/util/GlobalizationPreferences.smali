.class public Landroid/icu/util/GlobalizationPreferences;
.super Ljava/lang/Object;
.source "GlobalizationPreferences.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/util/GlobalizationPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final BI_CHARACTER:I = 0x0

.field private static final BI_LIMIT:I = 0x5

.field public static final BI_LINE:I = 0x2

.field public static final BI_SENTENCE:I = 0x3

.field public static final BI_TITLE:I = 0x4

.field public static final BI_WORD:I = 0x1

.field public static final DF_FULL:I = 0x0

.field private static final DF_LIMIT:I = 0x5

.field public static final DF_LONG:I = 0x1

.field public static final DF_MEDIUM:I = 0x2

.field public static final DF_NONE:I = 0x4

.field public static final DF_SHORT:I = 0x3

.field public static final ID_CURRENCY:I = 0x7

.field public static final ID_CURRENCY_SYMBOL:I = 0x8

.field public static final ID_KEYWORD:I = 0x5

.field public static final ID_KEYWORD_VALUE:I = 0x6

.field public static final ID_LANGUAGE:I = 0x1

.field public static final ID_LOCALE:I = 0x0

.field public static final ID_SCRIPT:I = 0x2

.field public static final ID_TERRITORY:I = 0x3

.field public static final ID_TIMEZONE:I = 0x9

.field public static final ID_VARIANT:I = 0x4

.field public static final NF_CURRENCY:I = 0x1

.field public static final NF_INTEGER:I = 0x4

.field private static final NF_LIMIT:I = 0x5

.field public static final NF_NUMBER:I = 0x0

.field public static final NF_PERCENT:I = 0x2

.field public static final NF_SCIENTIFIC:I = 0x3

.field private static final TYPE_BREAKITERATOR:I = 0x5

.field private static final TYPE_CALENDAR:I = 0x1

.field private static final TYPE_COLLATOR:I = 0x4

.field private static final TYPE_DATEFORMAT:I = 0x2

.field private static final TYPE_GENERIC:I = 0x0

.field private static final TYPE_LIMIT:I = 0x6

.field private static final TYPE_NUMBERFORMAT:I = 0x3

.field private static final available_locales:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final language_territory_hack:[[Ljava/lang/String;

.field private static final language_territory_hack_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final territory_tzid_hack:[[Ljava/lang/String;

.field static final territory_tzid_hack_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private breakIterators:[Landroid/icu/text/BreakIterator;

.field private calendar:Landroid/icu/util/Calendar;

.field private collator:Landroid/icu/text/Collator;

.field private currency:Landroid/icu/util/Currency;

.field private dateFormats:[[Landroid/icu/text/DateFormat;

.field private volatile frozen:Z

.field private implicitLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private numberFormats:[Landroid/icu/text/NumberFormat;

.field private territory:Ljava/lang/String;

.field private timezone:Landroid/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    .line 1180
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1181
    :goto_0
    array-length v3, v0

    const/4 v4, 0x6

    if-ge v2, v3, :cond_0

    .line 1182
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1183
    sget-object v4, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1187
    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v2

    move v3, v1

    .line 1188
    :goto_1
    array-length v5, v2

    const/4 v6, 0x1

    if-ge v3, v5, :cond_2

    .line 1189
    sget-object v5, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v7, v2, v3

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    if-nez v5, :cond_1

    .line 1191
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1192
    sget-object v7, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v8, v0, v3

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1197
    :cond_2
    invoke-static {}, Landroid/icu/text/DateFormat;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v2

    move v3, v1

    .line 1198
    :goto_2
    array-length v5, v2

    const/4 v7, 0x2

    if-ge v3, v5, :cond_4

    .line 1199
    sget-object v5, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v8, v2, v3

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    if-nez v5, :cond_3

    .line 1201
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1202
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v0, v3

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    :cond_3
    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1207
    :cond_4
    invoke-static {}, Landroid/icu/text/NumberFormat;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v2

    move v3, v1

    .line 1208
    :goto_3
    array-length v5, v2

    const/4 v8, 0x3

    if-ge v3, v5, :cond_6

    .line 1209
    sget-object v5, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v2, v3

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    if-nez v5, :cond_5

    .line 1211
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1212
    sget-object v9, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v10, v0, v3

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    :cond_5
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1217
    :cond_6
    invoke-static {}, Landroid/icu/text/Collator;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v2

    move v3, v1

    .line 1218
    :goto_4
    array-length v5, v2

    const/4 v9, 0x4

    if-ge v3, v5, :cond_8

    .line 1219
    sget-object v5, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v10, v2, v3

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    if-nez v5, :cond_7

    .line 1221
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1222
    sget-object v10, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v11, v0, v3

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    :cond_7
    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1227
    :cond_8
    invoke-static {}, Landroid/icu/text/BreakIterator;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    move v2, v1

    .line 1228
    :goto_5
    array-length v3, v0

    const/4 v5, 0x5

    if-ge v2, v3, :cond_9

    .line 1229
    sget-object v3, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v10, v0, v2

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    .line 1230
    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1237
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    const/16 v0, 0x9a

    new-array v0, v0, [[Ljava/lang/String;

    const-string v2, "ZA"

    const-string v3, "af"

    .line 1238
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "ET"

    const-string v10, "am"

    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v6

    const-string v10, "ar"

    const-string v11, "SA"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v7

    const-string v10, "IN"

    const-string v11, "as"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v8

    const-string v11, "ay"

    const-string v12, "PE"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v9

    const-string v11, "az"

    const-string v12, "AZ"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v5

    const-string v11, "bal"

    const-string v12, "PK"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/4 v11, 0x7

    const-string v12, "be"

    const-string v13, "BY"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11

    const/16 v11, 0x8

    const-string v12, "bg"

    const-string v13, "BG"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11

    const/16 v11, 0x9

    const-string v12, "bn"

    filled-new-array {v12, v10}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11

    const/16 v11, 0xa

    const-string v12, "bs"

    const-string v13, "BA"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11

    const/16 v11, 0xb

    const-string v12, "ES"

    const-string v13, "ca"

    filled-new-array {v13, v12}, [Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v11

    const/16 v11, 0xc

    const-string v13, "ch"

    const-string v14, "MP"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v11

    const/16 v11, 0xd

    const-string v13, "cpe"

    const-string v14, "SL"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v11

    const/16 v11, 0xe

    const-string v13, "cs"

    const-string v14, "CZ"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v11

    const/16 v11, 0xf

    const-string v13, "GB"

    const-string v14, "cy"

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v11

    const/16 v11, 0x10

    const-string v14, "da"

    const-string v15, "DK"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v11

    const/16 v11, 0x11

    const-string v14, "de"

    const-string v15, "DE"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v11

    const/16 v11, 0x12

    const-string v14, "dv"

    const-string v15, "MV"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v11

    const/16 v11, 0x13

    const-string v14, "dz"

    const-string v15, "BT"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v11

    const/16 v11, 0x14

    const-string v14, "el"

    const-string v15, "GR"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v11

    const/16 v11, 0x15

    const-string v14, "US"

    const-string v15, "en"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v11

    const/16 v11, 0x16

    const-string v15, "es"

    filled-new-array {v15, v12}, [Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v11

    const/16 v11, 0x17

    const-string v15, "et"

    const-string v4, "EE"

    filled-new-array {v15, v4}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v11

    const/16 v4, 0x18

    const-string v11, "eu"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x19

    const-string v11, "fa"

    const-string v15, "IR"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x1a

    const-string v11, "fi"

    const-string v15, "FI"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x1b

    const-string v11, "fil"

    const-string v15, "PH"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x1c

    const-string v11, "fj"

    const-string v15, "FJ"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x1d

    const-string v11, "fo"

    const-string v15, "FO"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x1e

    const-string v11, "fr"

    const-string v15, "FR"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x1f

    const-string v11, "ga"

    const-string v15, "IE"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x20

    const-string v11, "gd"

    filled-new-array {v11, v13}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x21

    const-string v11, "gl"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x22

    const-string v11, "gn"

    const-string v15, "PY"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x23

    const-string v11, "gu"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x24

    const-string v11, "gv"

    filled-new-array {v11, v13}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x25

    const-string v11, "ha"

    const-string v15, "NG"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x26

    const-string v11, "he"

    const-string v15, "IL"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x27

    const-string v11, "hi"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x28

    const-string v11, "ho"

    const-string v15, "PG"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x29

    const-string v11, "hr"

    const-string v15, "HR"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x2a

    const-string v11, "ht"

    const-string v15, "HT"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x2b

    const-string v11, "hu"

    const-string v15, "HU"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x2c

    const-string v11, "hy"

    const-string v15, "AM"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x2d

    const-string v11, "id"

    const-string v15, "ID"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x2e

    const-string v11, "is"

    const-string v15, "IS"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x2f

    const-string v11, "it"

    const-string v15, "IT"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x30

    const-string v11, "ja"

    const-string v15, "JP"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x31

    const-string v11, "ka"

    const-string v15, "GE"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x32

    const-string v11, "kk"

    const-string v15, "KZ"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x33

    const-string v11, "kl"

    const-string v15, "GL"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x34

    const-string v11, "km"

    const-string v15, "KH"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x35

    const-string v11, "kn"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x36

    const-string v11, "ko"

    const-string v15, "KR"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x37

    const-string v11, "kok"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x38

    const-string v11, "ks"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x39

    const-string v11, "ku"

    const-string v15, "TR"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x3a

    const-string v11, "ky"

    const-string v15, "KG"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x3b

    const-string v11, "la"

    const-string v15, "VA"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x3c

    const-string v11, "lb"

    const-string v15, "LU"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x3d

    const-string v11, "ln"

    const-string v15, "CG"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x3e

    const-string v11, "lo"

    const-string v15, "LA"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x3f

    const-string v11, "lt"

    const-string v15, "LT"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x40

    const-string v11, "lv"

    const-string v15, "LV"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x41

    const-string v11, "mai"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x42

    const-string v11, "men"

    const-string v15, "GN"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x43

    const-string v11, "mg"

    const-string v15, "MG"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x44

    const-string v11, "mh"

    const-string v15, "MH"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x45

    const-string v11, "mk"

    const-string v15, "MK"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x46

    const-string v11, "ml"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x47

    const-string v11, "mn"

    const-string v15, "MN"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x48

    const-string v11, "mni"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x49

    const-string v11, "mo"

    const-string v15, "MD"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x4a

    const-string v11, "mr"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x4b

    const-string v11, "ms"

    const-string v15, "MY"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x4c

    const-string v11, "mt"

    const-string v15, "MT"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x4d

    const-string v11, "my"

    const-string v15, "MM"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x4e

    const-string v11, "na"

    const-string v15, "NR"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x4f

    const-string v11, "NO"

    const-string v15, "nb"

    filled-new-array {v15, v11}, [Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v4

    const/16 v4, 0x50

    const-string v15, "nd"

    filled-new-array {v15, v2}, [Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v4

    const/16 v4, 0x51

    const-string v15, "ne"

    const-string v5, "NP"

    filled-new-array {v15, v5}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x52

    const-string v5, "niu"

    const-string v15, "NU"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x53

    const-string v5, "nl"

    const-string v15, "NL"

    filled-new-array {v5, v15}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x54

    const-string v5, "nn"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x55

    const-string v5, "no"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x56

    const-string v5, "nr"

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x57

    const-string v5, "nso"

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x58

    const-string v5, "ny"

    const-string v11, "MW"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x59

    const-string v5, "om"

    const-string v11, "KE"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x5a

    const-string/jumbo v5, "or"

    filled-new-array {v5, v10}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x5b

    const-string/jumbo v5, "pa"

    filled-new-array {v5, v10}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x5c

    const-string/jumbo v5, "pau"

    const-string v11, "PW"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x5d

    const-string/jumbo v5, "pl"

    const-string v11, "PL"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x5e

    const-string/jumbo v5, "ps"

    const-string v11, "PK"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x5f

    const-string/jumbo v5, "pt"

    const-string v11, "BR"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x60

    const-string/jumbo v5, "qu"

    const-string v11, "PE"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x61

    const-string/jumbo v5, "rn"

    const-string v11, "BI"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x62

    const-string/jumbo v5, "ro"

    const-string v11, "RO"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x63

    const-string v5, "RU"

    const-string/jumbo v11, "ru"

    filled-new-array {v11, v5}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x64

    const-string/jumbo v11, "rw"

    const-string v15, "RW"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x65

    const-string/jumbo v11, "sd"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x66

    const-string/jumbo v11, "sg"

    const-string v15, "CF"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x67

    const-string/jumbo v11, "si"

    const-string v15, "LK"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x68

    const-string/jumbo v11, "sk"

    const-string v15, "SK"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x69

    const-string/jumbo v11, "sl"

    const-string v15, "SI"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x6a

    const-string/jumbo v11, "sm"

    const-string v15, "WS"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x6b

    const-string/jumbo v11, "so"

    const-string v15, "DJ"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x6c

    const-string/jumbo v11, "sq"

    const-string v15, "CS"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x6d

    const-string/jumbo v11, "sr"

    const-string v15, "CS"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x6e

    const-string/jumbo v11, "ss"

    filled-new-array {v11, v2}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x6f

    const-string/jumbo v11, "st"

    filled-new-array {v11, v2}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x70

    const-string/jumbo v11, "sv"

    const-string v15, "SE"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x71

    const-string/jumbo v11, "sw"

    const-string v15, "KE"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x72

    const-string/jumbo v11, "ta"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x73

    const-string/jumbo v11, "te"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x74

    const-string/jumbo v11, "tem"

    const-string v15, "SL"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x75

    const-string/jumbo v11, "tet"

    const-string v15, "TL"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x76

    const-string/jumbo v11, "th"

    const-string v15, "TH"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x77

    const-string/jumbo v11, "ti"

    filled-new-array {v11, v3}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x78

    const-string/jumbo v11, "tg"

    const-string v15, "TJ"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x79

    const-string/jumbo v11, "tk"

    const-string v15, "TM"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x7a

    const-string/jumbo v11, "tkl"

    const-string v15, "TK"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x7b

    const-string/jumbo v11, "tvl"

    const-string v15, "TV"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x7c

    const-string/jumbo v11, "tl"

    const-string v15, "PH"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x7d

    const-string/jumbo v11, "tn"

    filled-new-array {v11, v2}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x7e

    const-string/jumbo v11, "to"

    const-string v15, "TO"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x7f

    const-string/jumbo v11, "tpi"

    const-string v15, "PG"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x80

    const-string/jumbo v11, "tr"

    const-string v15, "TR"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x81

    const-string/jumbo v11, "ts"

    filled-new-array {v11, v2}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x82

    const-string/jumbo v11, "uk"

    const-string v15, "UA"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x83

    const-string/jumbo v11, "ur"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x84

    const-string/jumbo v11, "uz"

    const-string v15, "UZ"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x85

    const-string/jumbo v11, "ve"

    filled-new-array {v11, v2}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x86

    const-string/jumbo v11, "vi"

    const-string v15, "VN"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x87

    const-string/jumbo v11, "wo"

    const-string v15, "SN"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x88

    const-string/jumbo v11, "xh"

    filled-new-array {v11, v2}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x89

    const-string/jumbo v11, "zh"

    const-string v15, "CN"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x8a

    const-string/jumbo v11, "zh_Hant"

    const-string v15, "TW"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    const/16 v4, 0x8b

    const-string/jumbo v11, "zu"

    filled-new-array {v11, v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/16 v2, 0x8c

    const-string v4, "aa"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x8d

    const-string v4, "byn"

    const-string v11, "ER"

    filled-new-array {v4, v11}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x8e

    const-string v4, "eo"

    const-string v11, "DE"

    filled-new-array {v4, v11}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x8f

    const-string v4, "gez"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x90

    const-string v4, "haw"

    filled-new-array {v4, v14}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x91

    const-string v4, "iu"

    const-string v11, "CA"

    filled-new-array {v4, v11}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x92

    const-string v4, "kw"

    filled-new-array {v4, v13}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x93

    const-string/jumbo v4, "sa"

    filled-new-array {v4, v10}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x94

    const-string/jumbo v4, "sh"

    const-string v10, "HR"

    filled-new-array {v4, v10}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x95

    const-string/jumbo v4, "sid"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x96

    const-string/jumbo v4, "syr"

    const-string v10, "SY"

    filled-new-array {v4, v10}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x97

    const-string/jumbo v4, "tig"

    const-string v10, "ER"

    filled-new-array {v4, v10}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x98

    const-string/jumbo v4, "tt"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x99

    const-string/jumbo v4, "wal"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sput-object v0, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    move v0, v1

    .line 1394
    :goto_6
    sget-object v2, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_a

    .line 1395
    sget-object v3, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    aget-object v4, v2, v0

    aget-object v4, v4, v1

    aget-object v2, v2, v0

    aget-object v2, v2, v6

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1399
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    const/16 v0, 0x1e

    new-array v0, v0, [[Ljava/lang/String;

    const-string v2, "AQ"

    const-string v3, "Antarctica/McMurdo"

    .line 1400
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "AR"

    const-string v3, "America/Buenos_Aires"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    const-string v2, "AU"

    const-string v3, "Australia/Sydney"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    const-string v2, "BR"

    const-string v3, "America/Sao_Paulo"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const-string v2, "CA"

    const-string v3, "America/Toronto"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    const-string v2, "CD"

    const-string v3, "Africa/Kinshasa"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "CL"

    const-string v3, "America/Santiago"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const/4 v2, 0x7

    const-string v3, "CN"

    const-string v4, "Asia/Shanghai"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "EC"

    const-string v4, "America/Guayaquil"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Europe/Madrid"

    filled-new-array {v12, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "Europe/London"

    filled-new-array {v13, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "GL"

    const-string v4, "America/Godthab"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "ID"

    const-string v4, "Asia/Jakarta"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "ML"

    const-string v4, "Africa/Bamako"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "MX"

    const-string v4, "America/Mexico_City"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "MY"

    const-string v4, "Asia/Kuala_Lumpur"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "NZ"

    const-string v4, "Pacific/Auckland"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "PT"

    const-string v4, "Europe/Lisbon"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "Europe/Moscow"

    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "UA"

    const-string v4, "Europe/Kiev"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "America/New_York"

    filled-new-array {v14, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "UZ"

    const-string v4, "Asia/Tashkent"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "PF"

    const-string v4, "Pacific/Tahiti"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "FM"

    const-string v4, "Pacific/Kosrae"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "KI"

    const-string v4, "Pacific/Tarawa"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "KZ"

    const-string v4, "Asia/Almaty"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "MH"

    const-string v4, "Pacific/Majuro"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "MN"

    const-string v4, "Asia/Ulaanbaatar"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "SJ"

    const-string v4, "Arctic/Longyearbyen"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "UM"

    const-string v4, "Pacific/Midway"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sput-object v0, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    move v0, v1

    .line 1433
    :goto_7
    sget-object v2, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 1434
    sget-object v3, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    aget-object v4, v2, v0

    aget-object v4, v4, v1

    aget-object v2, v2, v0

    aget-object v2, v2, v6

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->reset()Landroid/icu/util/GlobalizationPreferences;

    return-void
.end method

.method private getAvailableLocale(I)Landroid/icu/util/ULocale;
    .locals 4

    .line 1145
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1147
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1148
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 1149
    invoke-direct {p0, v2, p1}, Landroid/icu/util/GlobalizationPreferences;->isAvailableLocale(Landroid/icu/util/ULocale;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private isAvailableLocale(Landroid/icu/util/ULocale;I)Z
    .locals 0

    .line 1158
    sget-object p0, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/BitSet;

    if-eqz p0, :cond_0

    .line 1159
    invoke-virtual {p0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    .line 1465
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/GlobalizationPreferences;

    const/4 v0, 0x0

    .line 1466
    iput-boolean v0, p0, Landroid/icu/util/GlobalizationPreferences;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->cloneAsThawed()Landroid/icu/util/GlobalizationPreferences;

    move-result-object p0

    return-object p0
.end method

.method public freeze()Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    const/4 v0, 0x1

    .line 1455
    iput-boolean v0, p0, Landroid/icu/util/GlobalizationPreferences;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->freeze()Landroid/icu/util/GlobalizationPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getBreakIterator(I)Landroid/icu/text/BreakIterator;
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 500
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    if-eqz v0, :cond_1

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    aget-object p0, v0, p1

    invoke-virtual {p0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/BreakIterator;

    return-object p0

    .line 501
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->guessBreakIterator(I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0

    .line 498
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal break iterator type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCalendar()Landroid/icu/util/Calendar;
    .locals 3

    .line 415
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCalendar()Landroid/icu/util/Calendar;

    move-result-object p0

    return-object p0

    .line 418
    :cond_0
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 419
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public getCollator()Landroid/icu/text/Collator;
    .locals 2

    .line 460
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCollator()Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0

    .line 464
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 466
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string v1, "Error in cloning collator"

    invoke-direct {v0, v1, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 1

    .line 387
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCurrency()Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getDateFormat(II)Landroid/icu/text/DateFormat;
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    if-eq p2, v0, :cond_3

    :cond_0
    if-ltz p1, :cond_3

    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    if-ltz p2, :cond_3

    if-ge p2, v0, :cond_3

    const/4 v0, 0x0

    .line 669
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    if-eqz v1, :cond_1

    .line 670
    aget-object v0, v1, p1

    aget-object v0, v0, p2

    :cond_1
    if-eqz v0, :cond_2

    .line 673
    invoke-virtual {v0}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DateFormat;

    .line 675
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/GlobalizationPreferences;->guessDateFormat(II)Landroid/icu/text/DateFormat;

    move-result-object p1

    :goto_0
    return-object p1

    .line 666
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal date format style arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 538
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    const/4 v3, 0x0

    .line 539
    invoke-direct {p0, v2, v3}, Landroid/icu/util/GlobalizationPreferences;->isAvailableLocale(Landroid/icu/util/ULocale;I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "und-"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch p2, :pswitch_data_0

    .line 615
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 584
    :pswitch_0
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v6, "vvvv"

    invoke-direct {v1, v6, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 585
    invoke-static {p1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 586
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v6, 0x29

    .line 596
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    if-eq v6, v7, :cond_2

    sub-int v7, v6, v2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 598
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 600
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_5

    move v6, v3

    :goto_2
    if-ge v6, v4, :cond_4

    .line 603
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x41

    if-lt v7, v8, :cond_5

    const/16 v8, 0x5a

    if-ge v8, v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v3, v5

    :cond_5
    :goto_3
    if-eqz v3, :cond_8

    goto/16 :goto_0

    .line 573
    :pswitch_1
    new-instance v1, Landroid/icu/util/Currency;

    invoke-direct {v1, p1}, Landroid/icu/util/Currency;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x7

    if-ne p2, v4, :cond_6

    move v3, v5

    :cond_6
    new-array v4, v5, [Z

    .line 574
    invoke-virtual {v1, v2, v3, v4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_2
    new-array v1, v4, [Ljava/lang/String;

    const/16 v4, 0x3d

    .line 564
    invoke-static {p1, v4, v1}, Landroid/icu/impl/Utility;->split(Ljava/lang/String;C[Ljava/lang/String;)V

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "und@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v3, v1, v3

    invoke-static {v4, v3, v2}, Landroid/icu/util/ULocale;->getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v2

    .line 567
    aget-object v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, v2

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_4

    .line 560
    :pswitch_3
    invoke-static {p1, v2}, Landroid/icu/util/ULocale;->getDisplayKeyword(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 557
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "und-QQ-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/icu/util/ULocale;->getDisplayVariant(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 553
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 550
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/icu/util/ULocale;->getDisplayScript(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 547
    :pswitch_7
    invoke-static {p1, v2}, Landroid/icu/util/ULocale;->getDisplayLanguage(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 544
    :pswitch_8
    invoke-static {p1, v2}, Landroid/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    .line 620
    :cond_8
    :goto_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_9
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLocale(I)Landroid/icu/util/ULocale;
    .locals 1

    .line 197
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;

    move-result-object v0

    :cond_0
    if-ltz p1, :cond_1

    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_1

    .line 202
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/ULocale;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object p0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getNumberFormat(I)Landroid/icu/text/NumberFormat;
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    const/4 v0, 0x0

    .line 696
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    if-eqz v1, :cond_0

    .line 697
    aget-object v0, v1, p1

    :cond_0
    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NumberFormat;

    goto :goto_0

    .line 702
    :cond_1
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->guessNumberFormat(I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    :goto_0
    return-object p0

    .line 693
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal number format type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/GlobalizationPreferences;->getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 7

    .line 293
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    .line 294
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 295
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/ULocale;

    invoke-virtual {v5}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    if-nez p2, :cond_1

    .line 304
    :try_start_0
    invoke-static {p1, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    goto :goto_1

    .line 307
    :cond_1
    invoke-static {p1, v5, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    .line 310
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    if-nez v4, :cond_3

    move-object v4, v3

    goto :goto_2

    :catch_0
    move-object v2, v0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_5

    return-object v3

    .line 326
    :cond_5
    new-instance p0, Ljava/util/MissingResourceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find bundle for base name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-direct {p0, p2, p1, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public getTerritory()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessTerritory()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    .line 447
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 450
    :cond_0
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method protected guessBreakIterator(I)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x5

    .line 1052
    invoke-direct {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1054
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1061
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p0

    goto :goto_0

    .line 1073
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown break iterator type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1070
    :cond_2
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p0

    goto :goto_0

    .line 1067
    :cond_3
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p0

    goto :goto_0

    .line 1064
    :cond_4
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p0

    goto :goto_0

    .line 1058
    :cond_5
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected guessCalendar()Landroid/icu/util/Calendar;
    .locals 1

    const/4 v0, 0x1

    .line 1119
    invoke-direct {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1121
    sget-object v0, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    .line 1123
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method protected guessCollator()Landroid/icu/text/Collator;
    .locals 1

    const/4 v0, 0x4

    .line 1035
    invoke-direct {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1037
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 1039
    :cond_0
    invoke-static {p0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method protected guessCurrency()Landroid/icu/util/Currency;
    .locals 3

    .line 1008
    new-instance v0, Landroid/icu/util/ULocale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "und-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method protected guessDateFormat(II)Landroid/icu/text/DateFormat;
    .locals 2

    const/4 v0, 0x2

    .line 917
    invoke-direct {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 919
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 922
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/icu/text/DateFormat;->getDateInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 924
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object p0

    invoke-static {p0, p2, v0}, Landroid/icu/text/DateFormat;->getTimeInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    goto :goto_0

    .line 926
    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object p0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected guessLocales()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1020
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1021
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    .line 1024
    :cond_0
    iget-object p0, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    return-object p0
.end method

.method protected guessNumberFormat(I)Landroid/icu/text/NumberFormat;
    .locals 3

    const/4 v0, 0x3

    .line 941
    invoke-direct {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v1

    if-nez v1, :cond_0

    .line 943
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_0
    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    .line 953
    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    goto :goto_0

    .line 963
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown number format style"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 950
    :cond_2
    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    goto :goto_0

    .line 956
    :cond_3
    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    goto :goto_0

    .line 959
    :cond_4
    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    .line 960
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCurrency()Landroid/icu/util/Currency;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    move-object p0, p1

    goto :goto_0

    .line 947
    :cond_5
    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected guessTerritory()Ljava/lang/String;
    .locals 4

    .line 976
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 977
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 978
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 986
    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->getLocale(I)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 987
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 988
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 990
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 991
    sget-object v1, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_2
    if-nez v1, :cond_3

    .line 994
    sget-object p0, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_3
    if-nez v1, :cond_4

    const-string v1, "US"

    :cond_4
    return-object v1
.end method

.method protected guessTimeZone()Landroid/icu/util/TimeZone;
    .locals 4

    .line 1093
    sget-object v0, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1095
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/TimeZone;->getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1096
    array-length v0, p0

    if-nez v0, :cond_0

    const-string v0, "Etc/GMT"

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1101
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1102
    aget-object v2, p0, v1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1104
    :cond_2
    :goto_1
    array-length v2, p0

    if-le v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1105
    :goto_2
    aget-object v0, p0, v0

    .line 1108
    :cond_4
    :goto_3
    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 1447
    iget-boolean p0, p0, Landroid/icu/util/GlobalizationPreferences;->frozen:Z

    return p0
.end method

.method protected processLocales(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 787
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 796
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_8

    .line 797
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 799
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 800
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v5

    .line 801
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 802
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    move v8, v0

    .line 805
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 809
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/util/ULocale;

    .line 810
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_2

    .line 813
    :cond_0
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v10

    .line 814
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 815
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v9

    .line 816
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 817
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 818
    invoke-interface {p0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 821
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 823
    invoke-interface {p0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 826
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 828
    invoke-interface {p0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 834
    :cond_3
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 835
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 836
    invoke-interface {p0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 841
    :cond_4
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 842
    invoke-interface {p0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_6
    move v3, v0

    :goto_3
    if-nez v3, :cond_7

    .line 849
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    move p1, v0

    .line 865
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_b

    .line 866
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 867
    :goto_5
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 868
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 p1, p1, 0x1

    .line 872
    invoke-interface {p0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_a
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_b
    move p1, v0

    .line 887
    :cond_c
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_f

    .line 888
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    add-int/lit8 v2, p1, 0x1

    move v4, v2

    .line 890
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 891
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 893
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v3

    goto :goto_9

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    move v1, v0

    :goto_9
    if-nez v1, :cond_c

    move p1, v2

    goto :goto_7

    :cond_f
    return-object p0
.end method

.method public reset()Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    .line 733
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 736
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    .line 737
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    .line 738
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    .line 739
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    .line 740
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    .line 741
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    .line 742
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    .line 743
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    .line 744
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    .line 745
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    return-object p0

    .line 734
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify immutable object"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBreakIterator(ILandroid/icu/text/BreakIterator;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 518
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    if-nez v1, :cond_0

    new-array v0, v0, [Landroid/icu/text/BreakIterator;

    .line 522
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    .line 523
    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    invoke-virtual {p2}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/text/BreakIterator;

    aput-object p2, v0, p1

    return-object p0

    .line 519
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 516
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal break iterator type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCalendar(Landroid/icu/util/Calendar;)Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    .line 401
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/Calendar;

    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    return-object p0

    .line 402
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCollator(Landroid/icu/text/Collator;)Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    .line 477
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/Collator;

    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 483
    new-instance p1, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string v0, "Error in cloning collator"

    invoke-direct {p1, v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 478
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrency(Landroid/icu/util/Currency;)Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    .line 373
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    return-object p0

    .line 374
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDateFormat(IILandroid/icu/text/DateFormat;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    .line 640
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 644
    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, Landroid/icu/text/DateFormat;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/icu/text/DateFormat;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    .line 646
    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    aget-object p1, v0, p1

    invoke-virtual {p3}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/icu/text/DateFormat;

    aput-object p3, p1, p2

    return-object p0

    .line 641
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    .line 233
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/icu/util/ULocale;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 236
    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;

    move-result-object p0

    return-object p0

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLocales(Ljava/lang/String;)Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    .line 249
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 254
    :try_start_0
    invoke-static {p1, v0}, Landroid/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;

    move-result-object p0

    return-object p0

    .line 257
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Accept-Language string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLocales(Ljava/util/List;)Landroid/icu/util/GlobalizationPreferences;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/GlobalizationPreferences;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    return-object p0

    .line 167
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    .line 217
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->setLocales(Ljava/util/List;)Landroid/icu/util/GlobalizationPreferences;

    move-result-object p0

    return-object p0

    .line 218
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNumberFormat(ILandroid/icu/text/NumberFormat;)Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    .line 716
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/text/NumberFormat;

    .line 720
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    .line 722
    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    invoke-virtual {p2}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/text/NumberFormat;

    aput-object p2, v0, p1

    return-object p0

    .line 717
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTerritory(Ljava/lang/String;)Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    .line 344
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    return-object p0

    .line 345
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    .line 432
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/TimeZone;

    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    return-object p0

    .line 433
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify immutable object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
