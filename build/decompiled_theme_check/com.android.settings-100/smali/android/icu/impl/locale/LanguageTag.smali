.class public Landroid/icu/impl/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final GRANDFATHERED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JDKIMPL:Z = false

.field public static final PRIVATEUSE:Ljava/lang/String; = "x"

.field public static final PRIVUSE_VARIANT_PREFIX:Ljava/lang/String; = "lvariant"

.field public static final SEP:Ljava/lang/String; = "-"

.field public static UNDETERMINED:Ljava/lang/String; = "und"


# instance fields
.field private _extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _extlangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _language:Ljava/lang/String;

.field private _privateuse:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    const/16 v0, 0x1a

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "art-lojban"

    const-string v2, "jbo"

    .line 82
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "cel-gaulish"

    const-string/jumbo v3, "xtg-x-cel-gaulish"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "en-GB-oed"

    const-string v4, "en-GB-x-oed"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "i-ami"

    const-string v4, "ami"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "i-bnn"

    const-string v4, "bnn"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "i-default"

    const-string v4, "en-x-i-default"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "i-enochian"

    const-string/jumbo v4, "und-x-i-enochian"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "hak"

    const-string v4, "i-hak"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string v4, "i-klingon"

    const-string/jumbo v5, "tlh"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x9

    const-string v4, "i-lux"

    const-string v5, "lb"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xa

    const-string v4, "i-mingo"

    const-string/jumbo v5, "see-x-i-mingo"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string v4, "i-navajo"

    const-string v5, "nv"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-string v4, "i-pwn"

    const-string/jumbo v5, "pwn"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v4, "i-tao"

    const-string/jumbo v5, "tao"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xe

    const-string v4, "i-tay"

    const-string/jumbo v5, "tay"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xf

    const-string v4, "i-tsu"

    const-string/jumbo v5, "tsu"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x10

    const-string v4, "no-bok"

    const-string v5, "nb"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x11

    const-string v4, "no-nyn"

    const-string v5, "nn"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v4, "sgn-BE-FR"

    const-string/jumbo v5, "sfb"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v4, "sgn-BE-NL"

    const-string/jumbo v5, "vgt"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v4, "sgn-CH-DE"

    const-string/jumbo v5, "sgg"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v4, "zh-guoyu"

    const-string v5, "cmn"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v4, "zh-hakka"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v3, "zh-min"

    const-string v4, "nan-x-zh-min"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v3, "zh-min-nan"

    const-string v4, "nan"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v3, "zh-xiang"

    const-string v4, "hsn"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 111
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 112
    sget-object v5, Landroid/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    new-instance v6, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    aget-object v7, v4, v2

    invoke-direct {v6, v7}, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    return-void
.end method

.method public static canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 680
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeExtensionSingleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 684
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeExtensionSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 688
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeExtlang(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 664
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 660
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 692
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizePrivateuseSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 696
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 672
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 668
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 676
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isExtensionSingleton(Ljava/lang/String;)Z
    .locals 2

    .line 626
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 627
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "x"

    .line 628
    invoke-static {v0, p0}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isExtensionSingletonChar(C)Z
    .locals 0

    .line 632
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isExtensionSubtag(Ljava/lang/String;)Z
    .locals 2

    .line 637
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isExtlang(Ljava/lang/String;)Z
    .locals 2

    .line 588
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLanguage(Ljava/lang/String;)Z
    .locals 2

    .line 582
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPrivateusePrefix(Ljava/lang/String;)Z
    .locals 2

    .line 642
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "x"

    .line 643
    invoke-static {v0, p0}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isPrivateusePrefixChar(C)Z
    .locals 1

    .line 647
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "x"

    invoke-static {v0, p0}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPrivateuseSubtag(Ljava/lang/String;)Z
    .locals 3

    .line 652
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRegion(Ljava/lang/String;)Z
    .locals 2

    .line 599
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isNumericString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScript(Ljava/lang/String;)Z
    .locals 2

    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVariant(Ljava/lang/String;)Z
    .locals 3

    .line 606
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 608
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 611
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 613
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 614
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public static parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;
    .locals 4

    if-nez p1, :cond_0

    .line 166
    new-instance p1, Landroid/icu/impl/locale/ParseStatus;

    invoke-direct {p1}, Landroid/icu/impl/locale/ParseStatus;-><init>()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/ParseStatus;->reset()V

    :goto_0
    const/4 v0, 0x0

    .line 175
    sget-object v1, Landroid/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    new-instance v2, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    invoke-direct {v2, p0}, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "-"

    if-eqz v1, :cond_1

    .line 178
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    aget-object v1, v1, v2

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_1
    new-instance v1, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v1, p0, v3}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    move-object v0, v1

    .line 184
    :goto_1
    new-instance v1, Landroid/icu/impl/locale/LanguageTag;

    invoke-direct {v1}, Landroid/icu/impl/locale/LanguageTag;-><init>()V

    .line 187
    invoke-direct {v1, v0, p1}, Landroid/icu/impl/locale/LanguageTag;->parseLanguage(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    invoke-direct {v1, v0, p1}, Landroid/icu/impl/locale/LanguageTag;->parseExtlangs(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 189
    invoke-direct {v1, v0, p1}, Landroid/icu/impl/locale/LanguageTag;->parseScript(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 190
    invoke-direct {v1, v0, p1}, Landroid/icu/impl/locale/LanguageTag;->parseRegion(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 191
    invoke-direct {v1, v0, p1}, Landroid/icu/impl/locale/LanguageTag;->parseVariants(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 192
    invoke-direct {v1, v0, p1}, Landroid/icu/impl/locale/LanguageTag;->parseExtensions(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 194
    :cond_2
    invoke-direct {v1, v0, p1}, Landroid/icu/impl/locale/LanguageTag;->parsePrivateuse(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    if-eqz v2, :cond_3

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    iput p0, p1, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    goto :goto_2

    .line 202
    :cond_3
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result p0

    if-nez p0, :cond_5

    .line 203
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v0

    iput v0, p1, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "Empty subtag"

    .line 206
    iput-object p0, p1, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_2

    .line 208
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subtag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    :cond_5
    :goto_2
    return-object v1
.end method

.method private parseExtensions(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 6

    .line 327
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 334
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 341
    :goto_1
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 342
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "-"

    .line 344
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    iput v4, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 349
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    .line 352
    :cond_1
    iget v4, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    if-gt v4, v2, :cond_2

    .line 353
    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 354
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Incomplete extension \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_2

    .line 358
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    .line 361
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1
.end method

.method private parseExtlangs(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 4

    .line 238
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 245
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isExtlang(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 250
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    .line 251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    .line 253
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v0

    iput v0, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 255
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 257
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    :cond_3
    :goto_0
    return v1
.end method

.method private parseLanguage(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 3

    .line 220
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 229
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result p0

    iput p0, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 231
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_1
    :goto_0
    return v1
.end method

.method public static parseLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/LanguageTag;
    .locals 11

    .line 408
    new-instance v0, Landroid/icu/impl/locale/LanguageTag;

    invoke-direct {v0}, Landroid/icu/impl/locale/LanguageTag;-><init>()V

    .line 410
    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object p0

    .line 419
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "iw"

    .line 422
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "he"

    goto :goto_0

    :cond_0
    const-string v4, "ji"

    .line 424
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v1, "yi"

    goto :goto_0

    :cond_1
    const-string v4, "in"

    .line 426
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "id"

    .line 429
    :cond_2
    :goto_0
    iput-object v1, v0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 432
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-lez v1, :cond_4

    invoke-static {v2}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    invoke-static {v2}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    move v1, v4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 437
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {v3}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 438
    invoke-static {v3}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    move v1, v4

    .line 450
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "_"

    const/4 v5, 0x0

    const-string v6, "-"

    if-lez v2, :cond_d

    .line 452
    new-instance v2, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v2, p0, v3}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v5

    .line 453
    :goto_2
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v7

    if-nez v7, :cond_8

    .line 454
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v7

    .line 455
    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    if-nez p0, :cond_7

    .line 459
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    :cond_7
    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_2

    :cond_8
    :goto_3
    if-eqz p0, :cond_9

    .line 469
    iput-object p0, v0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    move v1, v4

    .line 472
    :cond_9
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result p0

    if-nez p0, :cond_d

    .line 474
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    :goto_4
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v7

    if-nez v7, :cond_c

    .line 476
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v7

    .line 477
    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_5

    .line 481
    :cond_a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 482
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_b
    invoke-static {v7}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 487
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_4

    .line 490
    :cond_c
    :goto_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 491
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_d
    move-object p0, v5

    .line 499
    :goto_6
    invoke-virtual {p1}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v2

    .line 500
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v7, v5

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    .line 501
    invoke-virtual {p1, v8}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    move-result-object v9

    .line 502
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v10

    invoke-static {v10}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 503
    invoke-virtual {v9}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_e
    if-nez v5, :cond_f

    .line 506
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 508
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    if-eqz v5, :cond_11

    .line 513
    iput-object v5, v0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    move v1, v4

    :cond_11
    if-eqz p0, :cond_13

    if-nez v7, :cond_12

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lvariant-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 522
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lvariant"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_13
    :goto_8
    if-eqz v7, :cond_14

    .line 527
    iput-object v7, v0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    .line 530
    :cond_14
    iget-object p0, v0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_16

    if-nez v1, :cond_15

    if-nez v7, :cond_16

    .line 534
    :cond_15
    sget-object p0, Landroid/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    iput-object p0, v0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    :cond_16
    return-object v0
.end method

.method private parsePrivateuse(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 5

    .line 371
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 383
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "-"

    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v0

    iput v0, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 391
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    .line 394
    :cond_2
    :goto_1
    iget p1, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    if-gt p1, v2, :cond_3

    .line 396
    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    const-string p0, "Incomplete privateuse"

    .line 397
    iput-object p0, p2, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_2

    .line 399
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_4
    :goto_2
    return v1
.end method

.method private parseRegion(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 3

    .line 285
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 294
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result p0

    iput p0, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 296
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_1
    :goto_0
    return v1
.end method

.method private parseScript(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 3

    .line 267
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 276
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result p0

    iput p0, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 278
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_1
    :goto_0
    return v1
.end method

.method private parseVariants(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 4

    .line 303
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 309
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 310
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 315
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    .line 318
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v0

    iput v0, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 320
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public getExtensions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 565
    iget-object p0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExtlangs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object p0, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    .line 545
    iget-object p0, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    return-object p0
.end method

.method public getPrivateuse()Ljava/lang/String;
    .locals 0

    .line 569
    iget-object p0, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0

    .line 557
    iget-object p0, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    return-object p0
.end method

.method public getScript()Ljava/lang/String;
    .locals 0

    .line 553
    iget-object p0, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    return-object p0
.end method

.method public getVariants()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 561
    iget-object p0, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "-"

    if-lez v1, :cond_4

    .line 704
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 707
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 710
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 711
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 715
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 719
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 722
    :cond_3
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 723
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 726
    :cond_4
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 728
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_5
    iget-object p0, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
