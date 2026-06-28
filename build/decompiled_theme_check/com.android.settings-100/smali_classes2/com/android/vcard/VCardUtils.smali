.class public Lcom/android/vcard/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardUtils$TextUtilsPort;,
        Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;,
        Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;,
        Lcom/android/vcard/VCardUtils$DecoderException;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final sEscapeIndicatorsV30:[I

.field private static final sEscapeIndicatorsV40:[I

.field private static final sKnownImPropNameMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypeMap_StoI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypesMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMobilePhoneLabelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneTypesUnknownToContactsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 132
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PAGER"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ISDN"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "HOME"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "WORK"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "CELL"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "OTHER"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v11, 0x8

    .line 145
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "CALLBACK"

    .line 144
    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v12, 0xa

    .line 147
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "COMPANY-MAIN"

    .line 146
    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v12, 0xe

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "RADIO"

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v12, 0x10

    .line 150
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "TTY-TDD"

    .line 149
    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v12, 0x13

    .line 152
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "ASSISTANT"

    .line 151
    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v12, "VOICE"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    .line 157
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v12, "MODEM"

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v12, "MSG"

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v12, "BBS"

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v12, "VIDEO"

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    .line 163
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "X-AIM"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const-string v13, "X-MSN"

    invoke-interface {v0, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const-string v4, "X-YAHOO"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const-string v4, "X-SKYPE-USERNAME"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "X-GOOGLE-TALK"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const-string v6, "X-ICQ"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const-string v2, "X-JABBER"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "X-QQ"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "X-NETMEETING"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    const-string v6, "MOBILE"

    const-string v8, "\u643a\u5e2f\u96fb\u8a71"

    const-string v10, "\u643a\u5e2f"

    const-string v11, "\u30b1\u30a4\u30bf\u30a4"

    const-string v13, "\uff79\uff72\uff80\uff72"

    filled-new-array {v6, v8, v10, v11, v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    .line 479
    new-instance v0, Ljava/util/HashSet;

    new-array v6, v9, [Ljava/lang/Character;

    const/16 v8, 0x5b

    .line 480
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v6, v12

    const/16 v8, 0x5d

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v6, v3

    const/16 v3, 0x3d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v6, v7

    const/16 v3, 0x3a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v6, v5

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v6, v2

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v6, v4

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    new-array v0, v2, [I

    .line 581
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    new-array v0, v7, [I

    .line 585
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    return-void

    :array_0
    .array-data 4
        0x3a
        0x3b
        0x2c
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x3b
        0x3a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z
    .locals 5

    .line 716
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    .line 717
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 720
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 721
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public static varargs areAllEmpty([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 696
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 697
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static constructListFromValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 387
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_4

    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 389
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 391
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 392
    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 393
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 394
    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 396
    :cond_1
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "vCard"

    const-string v8, "Unknown vCard type"

    .line 398
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2
    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_3

    .line 404
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_2

    .line 407
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v5, 0x3b

    if-ne v4, v5, :cond_5

    .line 410
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 413
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 343
    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-static {p0, p1, p2, p3}, Lcom/android/vcard/VCardUtils;->sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 353
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 355
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 357
    :goto_0
    array-length p3, p0

    move p4, p1

    move p1, p2

    :goto_1
    const/16 v1, 0x20

    if-ge p1, p3, :cond_3

    aget-object v2, p0, p1

    .line 358
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p4, :cond_1

    move p4, p2

    goto :goto_2

    .line 362
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 367
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    if-nez p4, :cond_4

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    :cond_4
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 512
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 513
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    .line 518
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    const/16 v6, 0x61

    if-gt v6, v5, :cond_3

    const/16 v6, 0x7b

    if-lt v5, v6, :cond_6

    :cond_3
    const/16 v6, 0x41

    if-gt v6, v5, :cond_4

    const/16 v6, 0x5b

    if-lt v5, v6, :cond_6

    :cond_4
    const/16 v6, 0x30

    if-gt v6, v5, :cond_5

    const/16 v6, 0x3a

    if-lt v5, v6, :cond_6

    :cond_5
    const/16 v6, 0x2d

    if-eq v5, v6, :cond_6

    return v3

    .line 517
    :cond_6
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_1

    :cond_7
    return v0
.end method

.method public static varargs containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 498
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 464
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 465
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    .line 470
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    const/16 v6, 0x20

    if-gt v6, v5, :cond_4

    const/16 v6, 0x7e

    if-le v5, v6, :cond_3

    goto :goto_2

    .line 469
    :cond_3
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_1

    :cond_4
    :goto_2
    return v3

    :cond_5
    return v0
.end method

.method public static varargs containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 455
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static containsOnlyPrintableAscii(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 431
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 432
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 435
    :cond_2
    invoke-static {v1}, Lcom/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method public static varargs containsOnlyPrintableAscii([Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 424
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static containsOnlyWhiteSpaces(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 541
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    .line 547
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_3

    return v3

    .line 546
    :cond_3
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_1

    :cond_4
    return v0
.end method

.method public static varargs containsOnlyWhiteSpaces([Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 534
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyWhiteSpaces(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 841
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 844
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 845
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 848
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 849
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 851
    :try_start_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 853
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to encode: charset="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "vCard"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getAppropriateParser(I)Lcom/android/vcard/VCardParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 828
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    new-instance p0, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {p0}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    return-object p0

    .line 830
    :cond_0
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    new-instance p0, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {p0}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    return-object p0

    .line 832
    :cond_1
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 833
    new-instance p0, Lcom/android/vcard/VCardParser_V40;

    invoke-direct {p0}, Lcom/android/vcard/VCardParser_V40;-><init>()V

    return-object p0

    .line 835
    :cond_2
    new-instance p0, Lcom/android/vcard/exception/VCardException;

    const-string v0, "Version is not specified"

    invoke-direct {p0, v0}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPhoneNumberFormat(I)I
    .locals 0

    .line 334
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_b

    .line 202
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v5, v0

    move-object v6, v1

    move v0, v3

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_2

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PREF"

    .line 207
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v9, "FAX"

    .line 209
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    const-string v9, "X-"

    .line 213
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-gez v5, :cond_5

    const/4 v8, 0x2

    .line 214
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 218
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    goto :goto_0

    .line 222
    :cond_6
    sget-object v8, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_9

    .line 224
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v9, "@"

    .line 237
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x6

    if-ne v7, v10, :cond_7

    if-lez v9, :cond_7

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    if-lt v9, v7, :cond_8

    :cond_7
    if-ltz v5, :cond_8

    if-eqz v5, :cond_8

    if-ne v5, v2, :cond_1

    .line 243
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_9
    if-gez v5, :cond_1

    move v5, v3

    move-object v6, v7

    goto :goto_0

    :cond_a
    move v3, v0

    move v0, v5

    goto :goto_1

    :cond_b
    move-object v6, v1

    move v1, v3

    :goto_1
    if-gez v0, :cond_d

    if-eqz v1, :cond_c

    const/16 p0, 0xc

    goto :goto_2

    :cond_c
    move p0, v4

    goto :goto_2

    :cond_d
    move p0, v0

    :goto_2
    if-eqz v3, :cond_10

    if-ne p0, v4, :cond_e

    const/4 p0, 0x5

    goto :goto_3

    :cond_e
    const/4 p1, 0x3

    if-ne p0, p1, :cond_f

    const/4 p0, 0x4

    goto :goto_3

    :cond_f
    if-ne p0, v2, :cond_10

    const/16 p0, 0xd

    :cond_10
    :goto_3
    if-nez p0, :cond_11

    return-object v6

    .line 272
    :cond_11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 184
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getPropertyNameForIm(I)Ljava/lang/String;
    .locals 1

    .line 289
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static guessImageType([B)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 672
    :cond_0
    array-length v1, p0

    const/16 v2, 0x47

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-lt v1, v3, :cond_1

    aget-byte v1, p0, v6

    if-ne v1, v2, :cond_1

    aget-byte v1, p0, v4

    const/16 v7, 0x49

    if-ne v1, v7, :cond_1

    aget-byte v1, p0, v5

    const/16 v7, 0x46

    if-ne v1, v7, :cond_1

    const-string p0, "GIF"

    return-object p0

    .line 674
    :cond_1
    array-length v1, p0

    const/4 v7, 0x4

    if-lt v1, v7, :cond_2

    aget-byte v1, p0, v6

    const/16 v7, -0x77

    if-ne v1, v7, :cond_2

    aget-byte v1, p0, v4

    const/16 v7, 0x50

    if-ne v1, v7, :cond_2

    aget-byte v1, p0, v5

    const/16 v7, 0x4e

    if-ne v1, v7, :cond_2

    aget-byte v1, p0, v3

    if-ne v1, v2, :cond_2

    const-string p0, "PNG"

    return-object p0

    .line 680
    :cond_2
    array-length v1, p0

    if-lt v1, v5, :cond_3

    aget-byte v1, p0, v6

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    aget-byte p0, p0, v4

    const/16 v1, -0x28

    if-ne p0, v1, :cond_3

    const-string p0, "JPEG"

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static isMobilePhoneLabel(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "_AUTO_CELL"

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

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

.method public static isV21Word(Ljava/lang/String;)Z
    .locals 6

    .line 565
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 570
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 572
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v5, 0x20

    if-gt v5, v4, :cond_2

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_2

    .line 573
    sget-object v5, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    int-to-char v4, v4

    .line 574
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 571
    :cond_1
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v1
.end method

.method public static isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z
    .locals 1

    .line 285
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 743
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v1, -0x1

    if-ge v3, v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 745
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_0

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    .line 747
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_1

    .line 752
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_3

    const-string p1, "\r\n"

    .line 759
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 761
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 763
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p1

    move p1, v2

    :goto_2
    if-ge p1, v0, :cond_7

    .line 765
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 767
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_4
    const/16 v6, 0xd

    if-ne v4, v6, :cond_5

    .line 770
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, -0x1

    if-ge p1, v4, :cond_6

    add-int/lit8 v4, p1, 0x1

    .line 773
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_6

    move p1, v4

    goto :goto_3

    .line 779
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 782
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 783
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 784
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    new-array p0, v2, [Ljava/lang/String;

    .line 786
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 789
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    array-length v0, p0

    move v1, v2

    :goto_5
    if-ge v1, v0, :cond_a

    aget-object v3, p0, v1

    const-string v4, "="

    .line 791
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 792
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 794
    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 797
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 798
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "vCard"

    if-eqz p1, :cond_b

    const-string p1, "Given raw string is empty."

    .line 799
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_b
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 806
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to decode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 812
    :goto_6
    :try_start_1
    invoke-static {p0}, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->decodeQuotedPrintable([B)[B

    move-result-object p0
    :try_end_1
    .catch Lcom/android/vcard/VCardUtils$DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    const-string p1, "DecoderException is thrown."

    .line 814
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_7
    :try_start_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 821
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to encode: charset="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 295
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result p0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p0, v1, :cond_3

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    new-array p0, v4, [Ljava/lang/String;

    aput-object p1, p0, v3

    .line 317
    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-array p0, v4, [Ljava/lang/String;

    aput-object p3, p0, v3

    .line 318
    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    aput-object p3, v0, v3

    aput-object p2, v0, v4

    aput-object p1, v0, v2

    goto :goto_0

    :cond_0
    aput-object p1, v0, v3

    aput-object p2, v0, v4

    aput-object p3, v0, v2

    goto :goto_0

    :cond_1
    new-array p0, v4, [Ljava/lang/String;

    aput-object p1, p0, v3

    .line 298
    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-array p0, v4, [Ljava/lang/String;

    aput-object p3, p0, v3

    .line 299
    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    aput-object p3, v0, v3

    aput-object p2, v0, v4

    aput-object p1, v0, v2

    goto :goto_0

    :cond_2
    aput-object p1, v0, v3

    aput-object p2, v0, v4

    aput-object p3, v0, v2

    goto :goto_0

    :cond_3
    aput-object p2, v0, v3

    aput-object p3, v0, v4

    aput-object p1, v0, v2

    :goto_0
    return-object v0
.end method

.method public static toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 642
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 650
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 651
    invoke-static {v3}, Lcom/android/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 653
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 655
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v3, 0x1

    .line 647
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    goto :goto_0

    .line 658
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 11

    .line 611
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p0, v1

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/16 v6, 0x22

    const/4 v7, 0x1

    if-ge v4, v2, :cond_4

    .line 620
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    const/16 v9, 0x20

    if-lt v8, v9, :cond_3

    if-ne v8, v6, :cond_1

    goto :goto_2

    .line 625
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 626
    array-length v6, p1

    move v9, v3

    :goto_1
    if-ge v9, v6, :cond_3

    aget v10, p1, v9

    if-ne v8, v10, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 619
    :cond_3
    :goto_2
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_0

    .line 634
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 635
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    new-array p1, v7, [Ljava/lang/String;

    aput-object p0, p1, v3

    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyWhiteSpaces([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    .line 637
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, p0

    :cond_7
    :goto_3
    return-object v1
.end method

.method public static toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 603
    sget-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 607
    sget-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
