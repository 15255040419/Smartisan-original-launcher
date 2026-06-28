.class public Lcom/android/vcard/VCardBuilder;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardBuilder$PostalStruct;
    }
.end annotation


# static fields
.field public static final DEFAULT_EMAIL_TYPE:I = 0x3

.field public static final DEFAULT_PHONE_TYPE:I = 0x1

.field public static final DEFAULT_POSTAL_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field public static final VCARD_END_OF_LINE:Ljava/lang/String; = "\r\n"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PARAM_ENCODING_BASE64_AS_B:Ljava/lang/String; = "ENCODING=B"

.field private static final VCARD_PARAM_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_PARAM_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field private static final sAllowedAndroidPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPostalTypePriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppendTypeParamName:Z

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mCharset:Ljava/lang/String;

.field private mEndAppended:Z

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30OrV40:Z

.field private final mNeedsToConvertPhoneticString:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mRefrainsQPToNameProperties:Z

.field private final mShouldAppendCharsetParam:Z

.field private final mShouldUseQuotedPrintable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mVCardCharsetParameter:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/nickname"

    const-string v2, "vnd.android.cursor.item/contact_event"

    const-string v3, "vnd.android.cursor.item/relation"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    .line 987
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    .line 988
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 5

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 137
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    const-string v1, "vCard"

    if-eqz v0, :cond_0

    const-string v0, "Should not use vCard 4.0 when building vCard. It is not officially published yet."

    .line 138
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    .line 143
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    .line 144
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    .line 145
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    .line 146
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    .line 147
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    .line 148
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    .line 149
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    .line 150
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->appendTypeParamName(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    .line 151
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    .line 158
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    const-string v4, "UTF-8"

    if-eqz v0, :cond_3

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    .line 160
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "SHIFT_JIS"

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iput-object p1, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 168
    :cond_5
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 171
    :cond_6
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    :goto_2
    const-string p1, "CHARSET=SHIFT_JIS"

    .line 173
    iput-object p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_3

    .line 175
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Use the charset \"UTF-8\" for export."

    .line 176
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-object v4, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    const-string p1, "CHARSET=UTF-8"

    .line 180
    iput-object p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_3

    .line 182
    :cond_8
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CHARSET="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    .line 186
    :goto_3
    invoke-virtual {p0}, Lcom/android/vcard/VCardBuilder;->clear()V

    return-void
.end method

.method private appendNamePropertiesV40(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 272
    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    const-string v2, "vCard"

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "Invalid flag is used in vCard 4.0 construction. Ignored."

    .line 277
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, ""

    const-string v3, "FN"

    if-eqz p1, :cond_8

    .line 280
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 291
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "data3"

    .line 292
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data5"

    .line 293
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "data2"

    .line 294
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "data4"

    .line 295
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "data6"

    .line 296
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "data1"

    .line 297
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 299
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 300
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 301
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 302
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 303
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 304
    invoke-virtual {v0, v3, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    move-object v8, v6

    goto :goto_0

    :cond_4
    move-object v8, v5

    :goto_0
    const-string v1, "data9"

    .line 311
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "data8"

    .line 313
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "data7"

    .line 315
    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 316
    invoke-direct {v0, v8}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 317
    invoke-direct {v0, v10}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 318
    invoke-direct {v0, v9}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v4

    .line 319
    invoke-direct {v0, v11}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v3

    .line 320
    invoke-direct {v0, v12}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v12

    .line 322
    iget-object v12, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    const-string v11, "N"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, ";"

    if-eqz v11, :cond_5

    .line 325
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 326
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 327
    :cond_5
    iget-object v11, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    iget-object v5, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v7, "SORT-AS="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_6
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "DISPLAY_NAME is empty."

    .line 352
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v1, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 355
    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v7

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    .line 354
    invoke-static/range {v7 .. v12}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    .line 357
    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object/from16 v2, v16

    .line 359
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    iget-object v4, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move-object/from16 v1, p1

    .line 367
    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    return-object v0

    :cond_8
    :goto_2
    move-object v2, v3

    .line 281
    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private appendPhoneticNameFields(Landroid/content/ContentValues;)V
    .locals 12

    const-string v0, "data9"

    .line 562
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data8"

    .line 564
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data7"

    .line 566
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 567
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v2, :cond_0

    .line 568
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 578
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "X-IRMC-N"

    const-string v4, "SOUND"

    const-string v5, "\r\n"

    const-string v6, ":"

    const-string v7, ";"

    if-eqz v2, :cond_2

    .line 579
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p1, :cond_1

    .line 582
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void

    .line 595
    :cond_2
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    goto/16 :goto_4

    .line 597
    :cond_3
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 598
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 599
    invoke-static {v2, v0, v1, p1}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "SORT-STRING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget v3, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_4

    new-array v3, v8, [Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 607
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_4
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 613
    :cond_5
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    if-eqz v2, :cond_f

    .line 627
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_7

    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 633
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-array v2, v8, [Ljava/lang/String;

    aput-object v1, v2, v9

    .line 635
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-array v2, v8, [Ljava/lang/String;

    aput-object p1, v2, v9

    .line 637
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v2, v8

    goto :goto_0

    :cond_7
    move v2, v9

    :goto_0
    if-eqz v2, :cond_8

    .line 644
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 645
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 648
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 650
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    aput-object v2, v10, v9

    aput-object v3, v10, v8

    const/4 v11, 0x2

    aput-object v4, v10, v11

    .line 653
    invoke-direct {p0, v10}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 655
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_9
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 662
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v9

    goto :goto_2

    :cond_a
    move v2, v8

    .line 665
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/16 v11, 0x20

    if-nez v10, :cond_c

    if-eqz v2, :cond_b

    move v2, v9

    goto :goto_3

    .line 669
    :cond_b
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    :goto_3
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    if-nez v2, :cond_d

    .line 675
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 677
    :cond_d
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_e
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_f
    :goto_4
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v2, :cond_1e

    .line 688
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    if-nez v2, :cond_14

    .line 689
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v2, :cond_10

    new-array v2, v8, [Ljava/lang/String;

    aput-object p1, v2, v9

    .line 691
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    move v2, v8

    goto :goto_5

    :cond_10
    move v2, v9

    :goto_5
    if-eqz v2, :cond_11

    .line 694
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 696
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 698
    :goto_6
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v11, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v8, [Ljava/lang/String;

    aput-object p1, v10, v9

    .line 699
    invoke-direct {p0, v10}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 700
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-eqz v2, :cond_13

    .line 704
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_13
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    :cond_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 712
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz p1, :cond_15

    new-array p1, v8, [Ljava/lang/String;

    aput-object v1, p1, v9

    .line 714
    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    move p1, v8

    goto :goto_7

    :cond_15
    move p1, v9

    :goto_7
    if-eqz p1, :cond_16

    .line 717
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 719
    :cond_16
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    :goto_8
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v10, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v8, [Ljava/lang/String;

    aput-object v1, v4, v9

    .line 722
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 723
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    if-eqz p1, :cond_18

    .line 727
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_18
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 735
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz p1, :cond_1a

    new-array p1, v8, [Ljava/lang/String;

    aput-object v0, p1, v9

    .line 737
    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    move p1, v8

    goto :goto_9

    :cond_1a
    move p1, v9

    :goto_9
    if-eqz p1, :cond_1b

    .line 740
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 742
    :cond_1b
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    :goto_a
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 745
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 746
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    if-eqz p1, :cond_1d

    .line 750
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_1d
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    return-void
.end method

.method private appendPostalsForDoCoMo(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1002
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    const/4 v1, 0x0

    move v3, v0

    move-object v2, v1

    move v1, v3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "data2"

    .line 1006
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1007
    sget-object v6, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 1009
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    if-ge v6, v1, :cond_0

    .line 1012
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v6, :cond_3

    move v5, v3

    move-object v7, v4

    goto :goto_2

    :cond_3
    move-object v2, v4

    move v1, v6

    goto :goto_0

    :cond_4
    move-object v7, v2

    move v5, v3

    :goto_2
    if-nez v7, :cond_5

    const-string p0, "vCard"

    const-string p1, "Should not come here. Must have at least one postal data."

    .line 1021
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string p1, "data3"

    .line 1025
    invoke-virtual {v7, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    .line 1026
    invoke-virtual/range {v4 .. v9}, Lcom/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    return-void
.end method

.method private appendPostalsForGeneric(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1030
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ContentValues;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "data2"

    .line 1034
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1036
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v0, "data3"

    .line 1037
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "is_primary"

    .line 1039
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 1041
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    move v5, v1

    :cond_2
    const/4 v6, 0x0

    move-object v1, p0

    .line 1042
    invoke-virtual/range {v1 .. v6}, Lcom/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/String;)V
    .locals 1

    .line 2042
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 2050
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 2051
    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean p0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "TYPE"

    .line 2052
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendTypeParameters(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2009
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2010
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ";"

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 2025
    :cond_0
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isV21Word(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    .line 2031
    :cond_2
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2033
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2011
    :cond_3
    :goto_2
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2012
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 2013
    :cond_4
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2014
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_4

    .line 2021
    :cond_6
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 1

    .line 1716
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    const-string p0, "VOICE"

    .line 1719
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1721
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1723
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1725
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "vCard"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 529
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v2

    .line 531
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 533
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 534
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 536
    :goto_1
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v1, [Ljava/lang/String;

    aput-object p2, p1, v2

    .line 541
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result p1

    const-string p2, ";"

    if-eqz p1, :cond_2

    .line 542
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v0, :cond_3

    .line 546
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_3
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 8

    const-string p0, "data3"

    .line 206
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "data5"

    .line 207
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data2"

    .line 208
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data4"

    .line 209
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data6"

    .line 210
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data9"

    .line 212
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data8"

    .line 214
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data7"

    .line 216
    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "data1"

    .line 217
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 220
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 221
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2083
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2087
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2093
    :try_start_0
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2095
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be used. Try default charset"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "vCard"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :goto_0
    move-object p1, p0

    move p0, v1

    move v2, p0

    .line 2099
    :cond_1
    :goto_1
    array-length v3, p1

    if-ge p0, v3, :cond_2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 2100
    aget-byte v4, p1, p0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "=%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v2, v2, 0x3

    const/16 v3, 0x43

    if-lt v2, v3, :cond_1

    const-string v2, "=\r\n"

    .line 2112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_1

    .line 2117
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    .line 2135
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    const/16 v5, 0xd

    if-eq v3, v5, :cond_7

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3e

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_2

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_3

    .line 2187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2138
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2139
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2161
    :cond_2
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v4, :cond_3

    const-string v3, "\\\\"

    .line 2162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2170
    :cond_3
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v4, :cond_4

    .line 2171
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2174
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2179
    :cond_5
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v4, :cond_6

    const-string v3, "\\,"

    .line 2180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2182
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v1, :cond_8

    .line 2144
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_8

    goto :goto_1

    :cond_8
    const-string v3, "\\n"

    .line 2157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2192
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "is_super_primary"

    .line 233
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 234
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_0

    const-string v3, "is_primary"

    .line 241
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 242
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    .line 243
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    if-nez v1, :cond_0

    .line 248
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    .line 260
    :cond_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method private varargs shouldAppendCharsetParam([Ljava/lang/String;)Z
    .locals 5

    .line 2071
    iget-boolean p0, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2074
    :cond_0
    array-length p0, p1

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object v2, v4, v0

    .line 2075
    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 911
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 914
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 916
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 917
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 918
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 921
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 924
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 925
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method private tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;
    .locals 12

    const-string v0, "data5"

    .line 1065
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data6"

    .line 1066
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data4"

    .line 1067
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data7"

    .line 1068
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data8"

    .line 1069
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data9"

    .line 1070
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data10"

    .line 1071
    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v1, v7, v9

    const/4 v10, 0x2

    aput-object v2, v7, v10

    const/4 v10, 0x3

    aput-object v3, v7, v10

    const/4 v10, 0x4

    aput-object v4, v7, v10

    const/4 v10, 0x5

    aput-object v5, v7, v10

    const/4 v10, 0x6

    aput-object v6, v7, v10

    .line 1075
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->areAllEmpty([Ljava/lang/String;)Z

    move-result v10

    const-string v11, ";"

    if-nez v10, :cond_5

    .line 1076
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz p1, :cond_0

    .line 1078
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    move v8, v9

    .line 1080
    :cond_0
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v9

    .line 1099
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    move-object v3, v1

    goto :goto_0

    .line 1106
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 1109
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v8, :cond_4

    .line 1113
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1116
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1117
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1118
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1120
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1122
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1123
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1124
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1125
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1126
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object p0, v6

    .line 1128
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1129
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    new-instance p0, Lcom/android/vcard/VCardBuilder$PostalStruct;

    .line 1142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, p1, v0}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    return-object p0

    :cond_5
    const-string v0, "data1"

    .line 1146
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1150
    :cond_6
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v0, :cond_7

    new-array v0, v9, [Ljava/lang/String;

    aput-object p1, v0, v8

    .line 1152
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v9

    goto :goto_2

    :cond_7
    move v0, v8

    :goto_2
    new-array v1, v9, [Ljava/lang/String;

    aput-object p1, v1, v8

    .line 1154
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v9

    if-eqz v0, :cond_8

    .line 1157
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 1159
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1165
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    new-instance p0, Lcom/android/vcard/VCardBuilder$PostalStruct;

    .line 1174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5

    .line 1826
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1829
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0xf

    if-gt v2, v3, :cond_2

    .line 1831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    .line 1835
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1838
    :cond_2
    iget-boolean p2, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 1840
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v2

    .line 1841
    :goto_1
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v3, :cond_4

    .line 1843
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 1844
    :goto_2
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "X-ANDROID-CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    if-eqz p2, :cond_5

    .line 1846
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v1, :cond_6

    .line 1850
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    :cond_6
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1858
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 1864
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1866
    :goto_4
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1869
    :cond_8
    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "CELL"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_5

    .line 1554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Email type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "vCard"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "WORK"

    goto :goto_0

    :cond_2
    const-string v0, "HOME"

    goto :goto_0

    .line 1527
    :cond_3
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 1529
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 1530
    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1560
    :cond_5
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_6

    const-string p2, "PREF"

    .line 1562
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1565
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string p2, "EMAIL"

    .line 1568
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 933
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 934
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "data1"

    .line 935
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 937
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 939
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "data2"

    .line 942
    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 944
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    :goto_1
    const-string v6, "data3"

    .line 945
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "is_primary"

    .line 946
    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 948
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v1

    .line 950
    :goto_2
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 951
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 952
    invoke-virtual {p0, v3, v6, v5, v4}, Lcom/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    move v3, v0

    goto :goto_0

    :cond_5
    move v3, v1

    :cond_6
    if-nez v3, :cond_7

    .line 957
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p1, :cond_7

    const-string p1, ""

    .line 958
    invoke-virtual {p0, v0, p1, p1, v1}, Lcom/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    return-object p0
.end method

.method public appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1377
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "data2"

    .line 1381
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1384
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    const-string v3, "data1"

    .line 1389
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v4, "is_super_primary"

    .line 1394
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 1396
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    if-eqz v4, :cond_5

    move-object v0, v3

    goto :goto_3

    :cond_5
    const-string v4, "is_primary"

    .line 1403
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1405
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_6

    move v6, v5

    :cond_6
    if-eqz v6, :cond_7

    move-object v0, v3

    goto :goto_0

    :cond_7
    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 1413
    :cond_8
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v3, :cond_0

    const-string v3, "vnd.android.cursor.item/contact_event"

    .line 1415
    invoke-virtual {p0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_9
    :goto_3
    const-string p1, "BDAY"

    if-eqz v0, :cond_a

    .line 1420
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1419
    invoke-virtual {p0, p1, v0}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    if-eqz v1, :cond_b

    .line 1423
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1422
    invoke-virtual {p0, p1, v0}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-object p0
.end method

.method public appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 1180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "data5"

    .line 1181
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1185
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->getPropertyNameForIm(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "data1"

    .line 1189
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1191
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1193
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "data2"

    .line 1198
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1199
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    if-eq v3, v5, :cond_6

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    goto :goto_2

    :cond_5
    const-string v4, "WORK"

    goto :goto_2

    :cond_6
    const-string v4, "HOME"

    goto :goto_2

    :cond_7
    const-string v3, "data3"

    .line 1209
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 1221
    :cond_8
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1223
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v4, "is_primary"

    .line 1225
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    .line 1227
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    move v4, v5

    :cond_a
    if-eqz v4, :cond_b

    const-string v0, "PREF"

    .line 1229
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_b
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1909
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1919
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1913
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V

    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1924
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1930
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    if-eqz p2, :cond_0

    .line 1931
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1932
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 1936
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p5, :cond_2

    .line 1942
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1948
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1951
    :goto_0
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1964
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    if-eqz p2, :cond_0

    .line 1965
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 1970
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1971
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p5, :cond_2

    .line 1974
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    :cond_2
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    .line 1980
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-eqz p5, :cond_3

    .line 1983
    invoke-direct {p0, p4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    .line 1989
    :cond_3
    invoke-direct {p0, p4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_1
    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    .line 1995
    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    :goto_2
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1999
    :cond_5
    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1958
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1874
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1879
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 1885
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v7, v1, 0x1

    .line 1886
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v1, :cond_0

    new-array v1, v0, [Ljava/lang/String;

    aput-object p3, v1, v2

    .line 1888
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1889
    invoke-virtual/range {v3 .. v8}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1895
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1897
    invoke-static {p3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v2

    .line 1898
    :goto_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v0, :cond_1

    .line 1900
    invoke-static {p3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1901
    invoke-virtual/range {v3 .. v8}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    return-void
.end method

.method public appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 377
    iget v1, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->appendNamePropertiesV40(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "FN"

    const-string v2, ""

    const-string v3, "N"

    if-eqz p1, :cond_14

    .line 381
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_9

    .line 395
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "data3"

    .line 396
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data5"

    .line 397
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "data2"

    .line 398
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "data4"

    .line 399
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v6, "data6"

    .line 400
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "data1"

    .line 401
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 403
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v11, "\r\n"

    const-string v10, ";"

    if-eqz v7, :cond_6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 503
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 506
    invoke-direct {v0, v3, v6}, Lcom/android/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-direct {v0, v1, v6}, Lcom/android/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    move-object v1, v4

    goto/16 :goto_8

    .line 517
    :cond_4
    iget v5, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 518
    invoke-virtual {v0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_5
    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_3

    .line 521
    invoke-virtual {v0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v5, v2, v16

    const/4 v9, 0x1

    aput-object v13, v2, v9

    const/4 v7, 0x2

    aput-object v12, v2, v7

    const/4 v7, 0x3

    aput-object v14, v2, v7

    const/4 v7, 0x4

    aput-object v15, v2, v7

    .line 405
    invoke-direct {v0, v2}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v2

    .line 406
    iget-boolean v7, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v7, :cond_8

    new-array v7, v9, [Ljava/lang/String;

    aput-object v5, v7, v16

    .line 408
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-array v7, v9, [Ljava/lang/String;

    aput-object v13, v7, v16

    .line 409
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-array v7, v9, [Ljava/lang/String;

    aput-object v12, v7, v16

    .line 410
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-array v7, v9, [Ljava/lang/String;

    aput-object v14, v7, v16

    .line 411
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-array v7, v9, [Ljava/lang/String;

    aput-object v15, v7, v16

    .line 412
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    move/from16 v17, v9

    goto :goto_2

    :cond_8
    move/from16 v17, v16

    .line 415
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    move-object/from16 p1, v4

    move v4, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    goto :goto_3

    .line 418
    :cond_9
    iget v6, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 419
    invoke-static {v6}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v6

    move-object v7, v5

    move-object v8, v12

    move-object/from16 p1, v4

    move v4, v9

    move-object v9, v13

    move-object/from16 v18, v10

    move-object v10, v14

    move-object/from16 v19, v11

    move-object v11, v15

    .line 418
    invoke-static/range {v6 .. v11}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    new-array v7, v4, [Ljava/lang/String;

    aput-object v6, v7, v16

    .line 423
    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v7

    .line 424
    iget-boolean v8, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v8, :cond_a

    new-array v8, v4, [Ljava/lang/String;

    aput-object v6, v8, v16

    .line 426
    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    move/from16 v16, v4

    :cond_a
    if-eqz v17, :cond_b

    .line 434
    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-direct {v0, v13}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-direct {v0, v12}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 437
    invoke-direct {v0, v14}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 438
    invoke-direct {v0, v15}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 440
    :cond_b
    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-direct {v0, v13}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    invoke-direct {v0, v12}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 443
    invoke-direct {v0, v14}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 444
    invoke-direct {v0, v15}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_4
    if-eqz v16, :cond_c

    .line 449
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_c
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 451
    :goto_5
    iget-object v12, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-boolean v3, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    const-string v12, "ENCODING=QUOTED-PRINTABLE"

    const-string v13, ":"

    if-eqz v3, :cond_f

    if-eqz v2, :cond_d

    .line 454
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    move-object/from16 v3, v18

    :goto_6
    if-eqz v17, :cond_e

    .line 458
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_e
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_f
    move-object/from16 v3, v18

    if-eqz v2, :cond_10

    .line 470
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    if-eqz v17, :cond_11

    .line 474
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_11
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :goto_7
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_12

    .line 493
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-eqz v16, :cond_13

    .line 497
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_13
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    .line 524
    :goto_8
    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    return-object v0

    .line 382
    :cond_14
    :goto_9
    iget v4, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 386
    invoke-virtual {v0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 388
    :cond_15
    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_16

    .line 389
    invoke-virtual {v0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_a
    return-object v0
.end method

.method public appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 762
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 764
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_3

    .line 771
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "data1"

    .line 772
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 773
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "vnd.android.cursor.item/nickname"

    .line 777
    invoke-virtual {p0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    :cond_2
    const-string v1, "NICKNAME"

    .line 779
    invoke-virtual {p0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 1326
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    const-string v1, "NOTE"

    const-string v2, "data1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1330
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, ""

    .line 1334
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    const/16 v7, 0xa

    .line 1338
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1340
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1343
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    .line 1347
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 1348
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v2, :cond_4

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    .line 1350
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v3, v4

    .line 1351
    :cond_4
    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 1354
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1355
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v3

    .line 1358
    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 1359
    iget-boolean v6, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v6, :cond_7

    new-array v6, v4, [Ljava/lang/String;

    aput-object v0, v6, v3

    .line 1361
    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v4

    goto :goto_3

    :cond_7
    move v6, v3

    .line 1362
    :goto_3
    invoke-virtual {p0, v1, v0, v5, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_8
    :goto_4
    return-object p0
.end method

.method public appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 1258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "data1"

    .line 1259
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1261
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "data5"

    .line 1263
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1265
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, "data4"

    .line 1267
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1269
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1272
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1274
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x3b

    .line 1278
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1280
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 1284
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v2

    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v5, :cond_7

    new-array v5, v2, [Ljava/lang/String;

    aput-object v1, v5, v4

    .line 1286
    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v2

    goto :goto_1

    :cond_7
    move v5, v4

    :goto_1
    const-string v6, "ORG"

    .line 1283
    invoke-virtual {p0, v6, v1, v3, v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v4

    .line 1290
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v3, :cond_8

    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1292
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    move v2, v4

    :goto_2
    const-string v3, "TITLE"

    .line 1289
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method public appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/vcard/VCardPhoneNumberTranslationCallback;",
            ")",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    .line 790
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 791
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "data2"

    .line 792
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "data3"

    .line 793
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "is_primary"

    .line 794
    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 796
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    const-string v8, "data1"

    .line 797
    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 799
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 801
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 805
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    if-eqz p2, :cond_5

    .line 810
    invoke-interface {p2, v4, v5, v6, v7}, Lcom/android/vcard/VCardPhoneNumberTranslationCallback;->onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 812
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 813
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 814
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5, v6, v4, v7}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    const/4 v8, 0x6

    if-eq v5, v8, :cond_e

    .line 816
    iget v8, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 817
    invoke-static {v8}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v8

    if-eqz v8, :cond_6

    goto/16 :goto_5

    .line 825
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 826
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_0

    .line 830
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 831
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const/16 v8, 0x2c

    const/16 v9, 0x70

    .line 836
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3b

    const/16 v10, 0x77

    .line 837
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 841
    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 842
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    move v10, v0

    :goto_4
    if-ge v10, v9, :cond_b

    .line 845
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 846
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_9

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_a

    .line 847
    :cond_9
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 850
    :cond_b
    iget v9, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 851
    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v9

    .line 853
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 852
    invoke-static {v8, v9}, Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 861
    :cond_c
    iget v9, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v9}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 862
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "tel:"

    .line 863
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 864
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 868
    :cond_d
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v8, v7}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 820
    :cond_e
    :goto_5
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 821
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 822
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v4, v7}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_f
    move v3, v1

    goto/16 :goto_0

    :cond_10
    move v3, v0

    :cond_11
    if-nez v3, :cond_12

    .line 878
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p1, :cond_12

    .line 879
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_12
    return-object p0
.end method

.method public appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHOTO"

    .line 1736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 1737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v2, :cond_0

    const-string v2, "ENCODING=B"

    .line 1739
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "ENCODING=BASE64"

    .line 1741
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    invoke-direct {p0, v0, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string p2, ":"

    .line 1745
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1749
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1751
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x49

    const/16 v2, 0x48

    const/4 v3, 0x0

    move v5, v1

    move v1, v3

    move v4, v1

    :goto_1
    const-string v6, "\r\n"

    if-ge v1, v0, :cond_2

    .line 1757
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    if-le v4, v5, :cond_1

    .line 1760
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    .line 1761
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v2

    move v4, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1766
    :cond_2
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "data15"

    .line 1305
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1309
    :cond_2
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->guessImageType([B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "vCard"

    const-string v1, "Unknown photo type. Ignored."

    .line 1311
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1315
    :cond_3
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 1316
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    invoke-virtual {p0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V
    .locals 3

    .line 1451
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    if-eqz p5, :cond_0

    const-string p3, ""

    move p5, v0

    move v1, p5

    goto :goto_0

    :cond_0
    return-void

    .line 1461
    :cond_1
    iget-boolean p5, p3, Lcom/android/vcard/VCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1462
    iget-boolean v1, p3, Lcom/android/vcard/VCardBuilder$PostalStruct;->appendCharset:Z

    .line 1463
    iget-object p3, p3, Lcom/android/vcard/VCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .line 1467
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_2

    const-string p4, "PREF"

    .line 1469
    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p4, 0x1

    if-eqz p1, :cond_5

    if-eq p1, p4, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6

    .line 1495
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown StructuredPostal type: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "vCard"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p1, "WORK"

    .line 1477
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string p1, "HOME"

    .line 1473
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1481
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, p4, [Ljava/lang/String;

    aput-object p2, p1, v0

    .line 1482
    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "X-"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "ADR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string p2, ";"

    if-nez p1, :cond_7

    .line 1502
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 1510
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p5, :cond_9

    .line 1514
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    :cond_9
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 965
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 974
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_1

    .line 975
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendPostalsForDoCoMo(Ljava/util/List;)V

    goto :goto_1

    .line 977
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendPostalsForGeneric(Ljava/util/List;)V

    goto :goto_1

    .line 966
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p1, :cond_3

    .line 967
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, "ADR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, "HOME"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    return-object p0
.end method

.method public appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 1430
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1431
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "vnd.android.cursor.item/relation"

    .line 1435
    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 1780
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1782
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_7

    .line 1789
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "data1"

    .line 1790
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1791
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "sip:"

    if-eqz v0, :cond_4

    .line 1796
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1797
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 1800
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v2, "X-SIP"

    .line 1803
    invoke-virtual {p0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1805
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1809
    :cond_5
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "TEL"

    goto :goto_2

    :cond_6
    const-string v2, "IMPP"

    .line 1817
    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    return-object p0
.end method

.method public appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1574
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "TEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    .line 1581
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1584
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "PAGER"

    const-string v2, "HOME"

    const/4 v3, 0x1

    const-string v4, "FAX"

    const-string v5, "CELL"

    const-string v6, "VOICE"

    const-string v7, "WORK"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const-string p2, "MSG"

    .line 1666
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1656
    :pswitch_2
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    iget-boolean p2, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p2, :cond_1

    .line 1659
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1661
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1651
    :pswitch_3
    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object p2

    .line 1652
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1651
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :pswitch_4
    const-string p2, "TLX"

    .line 1647
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1643
    :pswitch_5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    const-string p2, "ISDN"

    .line 1635
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1630
    :pswitch_7
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_8
    const-string p2, "CAR"

    .line 1625
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1621
    :pswitch_9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1611
    :pswitch_a
    iget-boolean p2, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p2, :cond_2

    .line 1614
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1616
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1597
    :pswitch_b
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object p2

    .line 1598
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1597
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1602
    :pswitch_c
    filled-new-array {v7, v4}, [Ljava/lang/String;

    move-result-object p2

    .line 1603
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1602
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1592
    :pswitch_d
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object p2

    .line 1593
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1592
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1607
    :pswitch_e
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1587
    :pswitch_f
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p2

    .line 1588
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1587
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1670
    :pswitch_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1672
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1673
    :cond_3
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1674
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1675
    :cond_4
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v1, :cond_5

    .line 1677
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1679
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1680
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1681
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1682
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    move v3, p4

    :goto_2
    :pswitch_11
    if-eqz v3, :cond_8

    const-string p2, "PREF"

    .line 1698
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1702
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/vcard/VCardBuilder;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1704
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1707
    :goto_3
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_11
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "data1"

    .line 1241
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1243
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1248
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "URL"

    .line 1249
    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public clear()V
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    const-string v1, "VERSION"

    if-eqz v0, :cond_0

    const-string v0, "4.0"

    .line 194
    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_0
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "3.0"

    .line 196
    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vCard"

    const-string v2, "Unknown vCard version detected."

    .line 199
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "2.1"

    .line 201
    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2197
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    if-nez v0, :cond_1

    .line 2198
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    const-string v0, "X-CLASS"

    const-string v1, "PUBLIC"

    .line 2199
    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "X-REDUCTION"

    .line 2200
    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-NO"

    .line 2201
    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-DCM-HMN-MODE"

    .line 2202
    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "END"

    const-string v1, "VCARD"

    .line 2204
    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2205
    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    .line 2207
    :cond_1
    iget-object p0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
