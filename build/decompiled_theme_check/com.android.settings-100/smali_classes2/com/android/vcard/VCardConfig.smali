.class public Lcom/android/vcard/VCardConfig;
.super Ljava/lang/Object;
.source "VCardConfig.java"


# static fields
.field public static final DEFAULT_EXPORT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_IMPORT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_INTERMEDIATE_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final FLAG_APPEND_TYPE_PARAM:I = 0x4000000

.field public static final FLAG_CONVERT_PHONETIC_NAME_STRINGS:I = 0x8000000

.field private static final FLAG_DOCOMO:I = 0x20000000

.field public static final FLAG_REFRAIN_IMAGE_EXPORT:I = 0x800000

.field public static final FLAG_REFRAIN_PHONE_NUMBER_FORMATTING:I = 0x2000000

.field public static final FLAG_REFRAIN_QP_TO_NAME_PROPERTIES:I = 0x10000000

.field private static final FLAG_USE_ANDROID_PROPERTY:I = -0x80000000

.field private static final FLAG_USE_DEFACT_PROPERTY:I = 0x40000000

.field static final LOG_LEVEL:I = 0x0

.field static final LOG_LEVEL_NONE:I = 0x0

.field static final LOG_LEVEL_PERFORMANCE_MEASUREMENT:I = 0x1

.field static final LOG_LEVEL_SHOW_WARNING:I = 0x2

.field static final LOG_LEVEL_VERBOSE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field public static final NAME_ORDER_DEFAULT:I = 0x0

.field public static final NAME_ORDER_EUROPE:I = 0x4

.field public static final NAME_ORDER_JAPANESE:I = 0x8

.field private static final NAME_ORDER_MASK:I = 0xc

.field public static VCARD_TYPE_DEFAULT:I = -0x40000000

.field public static final VCARD_TYPE_DOCOMO:I = 0x38000008

.field static final VCARD_TYPE_DOCOMO_STR:Ljava/lang/String; = "docomo"

.field public static final VCARD_TYPE_UNKNOWN:I = 0x0

.field public static final VCARD_TYPE_V21_EUROPE:I = -0x3ffffffc

.field static final VCARD_TYPE_V21_EUROPE_STR:Ljava/lang/String; = "v21_europe"

.field public static final VCARD_TYPE_V21_GENERIC:I = -0x40000000

.field static VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String; = "v21_generic"

.field public static final VCARD_TYPE_V21_JAPANESE:I = -0x3ffffff8

.field public static final VCARD_TYPE_V21_JAPANESE_MOBILE:I = 0x18000008

.field static final VCARD_TYPE_V21_JAPANESE_MOBILE_STR:Ljava/lang/String; = "v21_japanese_mobile"

.field static final VCARD_TYPE_V21_JAPANESE_STR:Ljava/lang/String; = "v21_japanese_utf8"

.field public static final VCARD_TYPE_V30_EUROPE:I = -0x3ffffffb

.field static final VCARD_TYPE_V30_EUROPE_STR:Ljava/lang/String; = "v30_europe"

.field public static final VCARD_TYPE_V30_GENERIC:I = -0x3fffffff

.field static final VCARD_TYPE_V30_GENERIC_STR:Ljava/lang/String; = "v30_generic"

.field public static final VCARD_TYPE_V30_JAPANESE:I = -0x3ffffff7

.field static final VCARD_TYPE_V30_JAPANESE_STR:Ljava/lang/String; = "v30_japanese_utf8"

.field public static final VCARD_TYPE_V40_GENERIC:I = -0x3ffffffe

.field static final VCARD_TYPE_V40_GENERIC_STR:Ljava/lang/String; = "v40_generic"

.field public static final VERSION_21:I = 0x0

.field public static final VERSION_30:I = 0x1

.field public static final VERSION_40:I = 0x2

.field public static final VERSION_MASK:I = 0x3

.field private static final sJapaneseMobileTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVCardTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    .line 392
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const v1, -0x3fffffff    # -2.0000002f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v30_generic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const v1, -0x3ffffffc    # -2.000001f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v21_europe"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const v1, -0x3ffffffb    # -2.0000012f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v30_europe"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const v1, -0x3ffffff8    # -2.000002f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v21_japanese_utf8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const v2, -0x3ffffff7    # -2.0000021f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "v30_japanese_utf8"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const v3, 0x18000008

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "v21_japanese_mobile"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const v4, 0x38000008

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "docomo"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    .line 402
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendTypeParamName(I)Z
    .locals 1

    .line 458
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

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

.method public static getNameOrderType(I)I
    .locals 0

    and-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public static getVCardTypeFromString(Ljava/lang/String;)I
    .locals 2

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 410
    sget-object v1, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    sget-object p0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "default"

    .line 412
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    sget p0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    return p0

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown vCard type String: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "vCard"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget p0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    return p0
.end method

.method public static isDoCoMo(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJapaneseDevice(I)Z
    .locals 1

    .line 469
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isVersion21(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVersion30(I)Z
    .locals 1

    and-int/lit8 p0, p0, 0x3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVersion40(I)Z
    .locals 1

    and-int/lit8 p0, p0, 0x3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static needsToConvertPhoneticString(I)Z
    .locals 1

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onlyOneNoteFieldIsAvailable(I)Z
    .locals 1

    const v0, 0x38000008

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static refrainPhoneNumberFormatting(I)Z
    .locals 1

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldRefrainQPToNameProperties(I)Z
    .locals 1

    .line 453
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

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

.method public static shouldUseQuotedPrintable(I)Z
    .locals 0

    .line 433
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static showPerformanceLog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static usesAndroidSpecificProperty(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static usesDefactProperty(I)Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
