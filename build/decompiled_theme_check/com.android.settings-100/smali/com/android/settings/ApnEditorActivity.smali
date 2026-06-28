.class public Lcom/android/settings/ApnEditorActivity;
.super Lcom/android/settings/BaseActivity;
.source "ApnEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnEditorActivity$ApnData;
    }
.end annotation


# static fields
.field private static final APN_DEFALUT_VALUES_STRING_ARRAY:Ljava/lang/String; = "apn_default_values_strings_array"

.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_BITMASK_INDEX:I = 0x13

.field private static final BEARER_INDEX:I = 0x12

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field public static final EXTRA_EDITABLE:Ljava/lang/String; = "extra_editable"

.field private static final ID_INDEX:I = 0x0

.field private static final MCC_INDEX:I = 0x9

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final MVNO_MATCH_DATA_INDEX:I = 0x16

.field private static final MVNO_TYPE_INDEX:I = 0x15

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PPP_NUMBER_INDEX:I = 0x17

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x14

.field private static final SERVER_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_INDEX:I = 0x5

.field private static final VDBG:Z = false

.field private static sApnDefault:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;

.field private static final sUIConfigurableItems:[Ljava/lang/String;


# instance fields
.field private mApn:Lcom/android/settings/TitleSummaryItem;

.field private mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

.field private mApnType:Lcom/android/settings/TitleSummaryItem;

.field private mAuthType:Lcom/android/settings/TitleSummaryItem;

.field private mBearer:Lcom/android/settings/TitleSummaryItem;

.field private mCarrierEnabled:Lcom/android/settings/TitleSummaryItem;

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mEditAble:Z

.field private mMcc:Lcom/android/settings/TitleSummaryItem;

.field private mMmsPort:Lcom/android/settings/TitleSummaryItem;

.field private mMmsProxy:Lcom/android/settings/TitleSummaryItem;

.field private mMmsc:Lcom/android/settings/TitleSummaryItem;

.field private mMnc:Lcom/android/settings/TitleSummaryItem;

.field private mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoType:Lcom/android/settings/TitleSummaryItem;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mName:Lcom/android/settings/TitleSummaryItem;

.field private mNewApn:Z

.field private mPassword:Lcom/android/settings/TitleSummaryItem;

.field private mPort:Lcom/android/settings/TitleSummaryItem;

.field private mProtocol:Lcom/android/settings/TitleSummaryItem;

.field private mProxy:Lcom/android/settings/TitleSummaryItem;

.field private mRes:Landroid/content/res/Resources;

.field private mRightBtn:Landroid/view/View;

.field private mRoamingProtocol:Lcom/android/settings/TitleSummaryItem;

.field private mServer:Lcom/android/settings/TitleSummaryItem;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUser:Lcom/android/settings/TitleSummaryItem;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 41
    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "apn"

    const-string/jumbo v4, "proxy"

    const-string/jumbo v5, "port"

    const-string/jumbo v6, "user"

    const-string/jumbo v7, "server"

    const-string/jumbo v8, "password"

    const-string v9, "mmsc"

    const-string v10, "mcc"

    const-string v11, "mnc"

    const-string v12, "numeric"

    const-string v13, "mmsproxy"

    const-string v14, "mmsport"

    const-string v15, "authtype"

    const-string/jumbo v16, "type"

    const-string/jumbo v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string v20, "bearer_bitmask"

    const-string/jumbo v21, "roaming_protocol"

    const-string v22, "mvno_type"

    const-string v23, "mvno_match_data"

    .line 100
    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditorActivity;->sProjection:[Ljava/lang/String;

    const-string v1, "name"

    const-string v2, "apn"

    const-string/jumbo v3, "proxy"

    const-string/jumbo v4, "port"

    const-string/jumbo v5, "user"

    const-string/jumbo v6, "server"

    const-string/jumbo v7, "password"

    const-string v8, "mmsc"

    const-string v9, "mmsproxy"

    const-string v10, "mmsport"

    const-string v11, "authtype"

    const-string/jumbo v12, "type"

    const-string/jumbo v13, "protocol"

    const-string v14, "carrier_enabled"

    const-string v15, "bearer"

    const-string v16, "bearer_bitmask"

    const-string/jumbo v17, "roaming_protocol"

    .line 126
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditorActivity;->sUIConfigurableItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/android/settings/ApnEditorActivity;->sNotSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ApnEditorActivity;)Lcom/android/settings/TitleSummaryItem;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoType:Lcom/android/settings/TitleSummaryItem;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnEditorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditorActivity;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 335
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 339
    :cond_0
    invoke-static {p1}, Lcom/android/settings/ApnEditorActivity;->hasAllApns([Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 343
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, ","

    .line 344
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 346
    array-length p2, p1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    aget-object v3, p1, v2

    .line 347
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 348
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "apnTypesMatch: true because match found for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_3
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    const-string p1, "apnTypesMatch: false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mBearer:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, p1}, Lcom/android/settings/TitleSummaryItem;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 488
    :cond_0
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 490
    :try_start_0
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private checkApnTypeNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 820
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 821
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->sApnDefault:Ljava/lang/String;

    return-object p0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 828
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 812
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 813
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->sNotSet:Ljava/lang/String;

    return-object p0
.end method

.method private deleteApn()V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/ApnEditorActivity$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/ApnEditorActivity$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 795
    new-instance v0, Lcom/android/settings/ApnEditorActivity$ApnData;

    sget-object v1, Lcom/android/settings/ApnEditorActivity;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditorActivity$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    :cond_0
    return-void
.end method

.method private fieldValidate(Ljava/lang/String;)Z
    .locals 4

    .line 872
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->sUIConfigurableItems:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 873
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 876
    :cond_1
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not configurable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private findIndexOfKey(Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    .line 863
    :goto_0
    sget-object v0, Lcom/android/settings/ApnEditorActivity;->sProjection:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 864
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 5

    .line 774
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mName:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mApn:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    iget-object v2, p0, Lcom/android/settings/ApnEditorActivity;->mMcc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v2}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 777
    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mMnc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v3}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 779
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_0

    .line 780
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f12079b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 781
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 782
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f120798

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 783
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 784
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f120799

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 785
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 786
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f12079a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static hasAllApns([Ljava/lang/String;)Z
    .locals 6

    .line 308
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 312
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "*"

    .line 313
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 314
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    const-string v0, "hasAllApns: true because apnList.contains(PhoneConstants.APN_TYPE_ALL)"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 317
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 318
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 323
    :cond_3
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    const-string v0, "hasAllApns: true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 498
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, p1}, Lcom/android/settings/TitleSummaryItem;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 499
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-object v2

    .line 504
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0300b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 505
    iget-object v4, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/settings/TitleSummaryItem;->setEnabled(Z)V

    if-eqz p1, :cond_5

    .line 506
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 507
    aget-object p1, v3, v0

    const-string v1, "SPN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 508
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 509
    :cond_2
    aget-object p1, v3, v0

    const-string v1, "IMSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 510
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/ApnEditorActivity;->mSubId:I

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    .line 511
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 512
    :cond_3
    aget-object p1, v3, v0

    const-string v1, "GID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 513
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 514
    :cond_4
    aget-object p1, v3, v0

    const-string v1, "ICCID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 515
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 516
    sget-object p1, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMvnoMatchDataStr: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 523
    :cond_5
    :goto_1
    :try_start_0
    aget-object p0, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method private protocolDescription(Ljava/lang/String;Lcom/android/settings/TitleSummaryItem;)Ljava/lang/String;
    .locals 1

    .line 469
    invoke-virtual {p2, p1}, Lcom/android/settings/TitleSummaryItem;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p2

    .line 474
    :cond_0
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 476
    :try_start_0
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method private setAppData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 856
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditorActivity;->findIndexOfKey(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 858
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ApnEditorActivity$ApnData;->setObject(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setDefaultData()V
    .locals 4

    const-string v0, "carrier_config"

    .line 837
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1

    .line 839
    iget v1, p0, Lcom/android/settings/ApnEditorActivity;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "apn_default_values_strings_array"

    .line 841
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 844
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 845
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 846
    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditorActivity;->fieldValidate(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 847
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/ApnEditorActivity;->setAppData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showEditDialog(Lcom/android/settings/TitleSummaryItem;)V
    .locals 2

    .line 881
    new-instance v0, Lcom/android/settings/ApnEditorItemFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/ApnEditorItemFragment;-><init>(Lcom/android/settings/TitleSummaryItem;)V

    .line 882
    new-instance v1, Lcom/android/settings/ApnEditorActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/ApnEditorActivity$1;-><init>(Lcom/android/settings/ApnEditorActivity;Lcom/android/settings/TitleSummaryItem;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditorItemFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "Apn item editor"

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/ApnEditorItemFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showErrowDialog(Ljava/lang/String;)V
    .locals 3

    .line 530
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f12079c

    .line 531
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 532
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showListDialog(Lcom/android/settings/TitleSummaryItem;)V
    .locals 5

    .line 900
    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 901
    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 903
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 905
    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 906
    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/android/settings/ApnEditorActivity$2;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/android/settings/ApnEditorActivity$2;-><init>(Lcom/android/settings/ApnEditorActivity;Lcom/android/settings/TitleSummaryItem;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 916
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ApnEditorActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/ApnEditorActivity$3;-><init>(Lcom/android/settings/ApnEditorActivity;)V

    .line 915
    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 923
    new-instance v0, Lcom/android/settings/ApnEditorActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/ApnEditorActivity$4;-><init>(Lcom/android/settings/ApnEditorActivity;Lcom/android/settings/TitleSummaryItem;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 933
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 934
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    .line 800
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 803
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-array p0, p0, [C

    const/4 p1, 0x0

    .line 804
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    const/16 v0, 0x2a

    .line 805
    aput-char v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 807
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 801
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->sNotSet:Ljava/lang/String;

    return-object p0
.end method

.method private updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 757
    new-instance v0, Lcom/android/settings/-$$Lambda$ApnEditorActivity$_FdtzffW2cxEL4W_cq71LeamzY4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/-$$Lambda$ApnEditorActivity$_FdtzffW2cxEL4W_cq71LeamzY4;-><init>(Lcom/android/settings/ApnEditorActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settings/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method fillUI(Z)V
    .locals 7

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_7

    .line 362
    sget-boolean p1, Lcom/android/settings/ApnSettings;->FOR_CT_TEST_ONLY:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 363
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-virtual {p1, v2}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "APN_NAME_CTNET"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mName:Lcom/android/settings/TitleSummaryItem;

    const-string v3, "CTNET"

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mName:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-virtual {v3, v2}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mName:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-virtual {v3, v2}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 371
    :goto_0
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mApn:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mProxy:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mPort:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mUser:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mServer:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mPassword:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsProxy:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsPort:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsc:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMcc:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMnc:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    const-string p1, "android.intent.action.EDIT"

    .line 382
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 383
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mApnType:Lcom/android/settings/TitleSummaryItem;

    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mApnType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 386
    :cond_2
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mApnType:Lcom/android/settings/TitleSummaryItem;

    sget-object v0, Lcom/android/settings/ApnEditorActivity;->sApnDefault:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mApnType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkApnTypeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    :goto_1
    iget-boolean p1, p0, Lcom/android/settings/ApnEditorActivity;->mNewApn:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 390
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/ApnEditorActivity;->mSubId:I

    invoke-virtual {p1, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 394
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 399
    iget-object v4, p0, Lcom/android/settings/ApnEditorActivity;->mMcc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v4, v3}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 400
    iget-object v4, p0, Lcom/android/settings/ApnEditorActivity;->mMnc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v4, p1}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 401
    iput-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mCurMnc:Ljava/lang/String;

    .line 402
    iput-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mCurMcc:Ljava/lang/String;

    .line 405
    :cond_3
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v3, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/settings/ApnEditorActivity$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 407
    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mAuthType:Lcom/android/settings/TitleSummaryItem;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/settings/TitleSummaryItem;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 409
    :cond_4
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mAuthType:Lcom/android/settings/TitleSummaryItem;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setValue(Ljava/lang/String;)V

    .line 412
    :goto_2
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mProtocol:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setValue(Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mRoamingProtocol:Lcom/android/settings/TitleSummaryItem;

    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setValue(Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v3, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/settings/ApnEditorActivity$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_3
    if-eqz v2, :cond_6

    .line 417
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierEnabled:Lcom/android/settings/TitleSummaryItem;

    const v3, 0x7f120410

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 419
    :cond_6
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierEnabled:Lcom/android/settings/TitleSummaryItem;

    const v3, 0x7f12040f

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 421
    :goto_4
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierEnabled:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1, v2}, Lcom/android/settings/TitleSummaryItem;->setChecked(Z)V

    .line 422
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierEnabled:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setEnabled(Z)V

    .line 423
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mBearer:Lcom/android/settings/TitleSummaryItem;

    iget-object v2, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v3, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ApnEditorActivity$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/settings/TitleSummaryItem;->setValueIndex(I)V

    .line 424
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoType:Lcom/android/settings/TitleSummaryItem;

    iget-object v2, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/TitleSummaryItem;->setValue(Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setEnabled(Z)V

    .line 426
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 427
    iget-boolean p1, p0, Lcom/android/settings/ApnEditorActivity;->mNewApn:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 428
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, p1}, Lcom/android/settings/TitleSummaryItem;->setValue(Ljava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 432
    :cond_7
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mName:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mApn:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mProxy:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mPort:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 436
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mUser:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mServer:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mPassword:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsProxy:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsPort:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 442
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMcc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 443
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMnc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mAuthType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 446
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mAuthType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, p1}, Lcom/android/settings/TitleSummaryItem;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_9

    .line 448
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mAuthType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, p1}, Lcom/android/settings/TitleSummaryItem;->setValueIndex(I)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mAuthType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 452
    :cond_8
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mAuthType:Lcom/android/settings/TitleSummaryItem;

    sget-object v0, Lcom/android/settings/ApnEditorActivity;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mProtocol:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mProtocol:Lcom/android/settings/TitleSummaryItem;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ApnEditorActivity;->protocolDescription(Ljava/lang/String;Lcom/android/settings/TitleSummaryItem;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mRoamingProtocol:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mRoamingProtocol:Lcom/android/settings/TitleSummaryItem;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ApnEditorActivity;->protocolDescription(Ljava/lang/String;Lcom/android/settings/TitleSummaryItem;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 457
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mBearer:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 458
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoType:Lcom/android/settings/TitleSummaryItem;

    .line 459
    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 460
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/ApnEditorActivity$ApnData;
    .locals 6

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/ApnEditorActivity;->sProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 966
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 967
    new-instance v0, Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/ApnEditorActivity$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 959
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_0

    .line 969
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-nez v0, :cond_3

    .line 972
    sget-object p0, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get apnData from Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public synthetic lambda$updateApnDataToDatabase$0$ApnEditorActivity(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 762
    sget-object p1, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add a new apn to database "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mRightBtn:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 941
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->finish()V

    goto :goto_0

    .line 944
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ApnEditorActivity;->mEditAble:Z

    if-nez v0, :cond_1

    return-void

    .line 947
    :cond_1
    check-cast p1, Lcom/android/settings/TitleSummaryItem;

    const/4 v0, 0x0

    .line 948
    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setClickable(Z)V

    .line 949
    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 950
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditorActivity;->showEditDialog(Lcom/android/settings/TitleSummaryItem;)V

    goto :goto_0

    .line 951
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 952
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditorActivity;->showListDialog(Lcom/android/settings/TitleSummaryItem;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 179
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ro.radio.apn.protocal"

    const-string v1, "IP"

    .line 180
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "V6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0d003a

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->setContentView(I)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getStringExtraSafely(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsmartisanos/widget/TitleBar;->setCenterText(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    const v2, 0x20200ae

    invoke-virtual {v1, v2}, Lsmartisanos/widget/TitleBar;->addRightImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mRightBtn:Landroid/view/View;

    .line 188
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mRightBtn:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "extra_editable"

    invoke-static {v1, v3, v2}, Lcom/android/settings/Utils;->getBooleanExtraSafely(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ApnEditorActivity;->mEditAble:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120194

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/ApnEditorActivity;->sNotSet:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f12019e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/ApnEditorActivity;->sApnDefault:Ljava/lang/String;

    const v1, 0x7f0a0536

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mName:Lcom/android/settings/TitleSummaryItem;

    .line 195
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mName:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0490

    .line 196
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mApn:Lcom/android/settings/TitleSummaryItem;

    .line 197
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mApn:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0551

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mProxy:Lcom/android/settings/TitleSummaryItem;

    .line 199
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mProxy:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0545

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mPort:Lcom/android/settings/TitleSummaryItem;

    .line 201
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mPort:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0588

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mUser:Lcom/android/settings/TitleSummaryItem;

    .line 203
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mUser:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a055f

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mServer:Lcom/android/settings/TitleSummaryItem;

    .line 205
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mServer:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0541

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mPassword:Lcom/android/settings/TitleSummaryItem;

    .line 207
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mPassword:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a052a

    .line 208
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsProxy:Lcom/android/settings/TitleSummaryItem;

    .line 209
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsProxy:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0529

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsPort:Lcom/android/settings/TitleSummaryItem;

    .line 211
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsPort:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a052b

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsc:Lcom/android/settings/TitleSummaryItem;

    .line 213
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMmsc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0526

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMcc:Lcom/android/settings/TitleSummaryItem;

    .line 215
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMcc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a052c

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMnc:Lcom/android/settings/TitleSummaryItem;

    .line 217
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMnc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0492

    .line 218
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mApnType:Lcom/android/settings/TitleSummaryItem;

    .line 219
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mApnType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0498

    .line 220
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mAuthType:Lcom/android/settings/TitleSummaryItem;

    .line 221
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mAuthType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0550

    .line 222
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TitleSummaryItem;

    iput-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mProtocol:Lcom/android/settings/TitleSummaryItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mProtocol:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v3, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mProtocol:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v3, v1}, Lcom/android/settings/TitleSummaryItem;->setEnabled(Z)V

    :goto_0
    const v3, 0x7f0a0559

    .line 229
    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/TitleSummaryItem;

    iput-object v3, p0, Lcom/android/settings/ApnEditorActivity;->mRoamingProtocol:Lcom/android/settings/TitleSummaryItem;

    const-string/jumbo v3, "phone"

    .line 236
    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 237
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mRoamingProtocol:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mRoamingProtocol:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, v1}, Lcom/android/settings/TitleSummaryItem;->setEnabled(Z)V

    goto :goto_1

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mRoamingProtocol:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, v6}, Lcom/android/settings/TitleSummaryItem;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0a04a1

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TitleSummaryItem;

    iput-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierEnabled:Lcom/android/settings/TitleSummaryItem;

    const v0, 0x7f0a049c

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TitleSummaryItem;

    iput-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mBearer:Lcom/android/settings/TitleSummaryItem;

    .line 249
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mBearer:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a067a

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TitleSummaryItem;

    iput-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoType:Lcom/android/settings/TitleSummaryItem;

    .line 251
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0679

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TitleSummaryItem;

    iput-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    .line 253
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0, p0}, Lcom/android/settings/TitleSummaryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mRes:Landroid/content/res/Resources;

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const-string/jumbo v7, "sub_id"

    .line 257
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/ApnEditorActivity;->mSubId:I

    const/4 v5, 0x0

    const-string v7, "android.intent.action.EDIT"

    .line 261
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "android.intent.action.INSERT"

    if-eqz v7, :cond_3

    .line 262
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 263
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0}, Lcom/android/settings/Utils;->isPathPrefixMatch(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 264
    sget-object p1, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Edit request not for carrier table. Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->finish()V

    return-void

    .line 268
    :cond_3
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 269
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierUri:Landroid/net/Uri;

    .line 270
    iget-object v7, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierUri:Landroid/net/Uri;

    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v9}, Lcom/android/settings/Utils;->isPathPrefixMatch(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 271
    sget-object p1, Lcom/android/settings/ApnEditorActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert request not for carrier table. Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->finish()V

    return-void

    .line 275
    :cond_4
    iput-boolean v2, p0, Lcom/android/settings/ApnEditorActivity;->mNewApn:Z

    const-string v7, "mvno_type"

    .line 276
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoTypeStr:Ljava/lang/String;

    const-string v7, "mvno_match_data"

    .line 277
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchDataStr:Ljava/lang/String;

    :cond_5
    if-eqz v5, :cond_6

    .line 287
    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditorActivity;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/ApnEditorActivity$ApnData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    goto :goto_2

    .line 289
    :cond_6
    new-instance v0, Lcom/android/settings/ApnEditorActivity$ApnData;

    sget-object v5, Lcom/android/settings/ApnEditorActivity;->sProjection:[Ljava/lang/String;

    array-length v5, v5

    invoke-direct {v0, v5}, Lcom/android/settings/ApnEditorActivity$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    .line 290
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    invoke-direct {p0}, Lcom/android/settings/ApnEditorActivity;->setDefaultData()V

    .line 294
    :cond_7
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/settings/ApnEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_8

    move v1, v2

    .line 295
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditorActivity;->fillUI(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->setupBackBtnOnTitle()Lsmartisanos/widget/TitleBar;

    .line 297
    iget-boolean p1, p0, Lcom/android/settings/ApnEditorActivity;->mEditAble:Z

    if-nez p1, :cond_9

    .line 298
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mRightBtn:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void

    .line 279
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorActivity;->finish()V

    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/ApnEditorActivity$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p4, :cond_1

    .line 581
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    .line 583
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return p0
.end method

.method setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/ApnEditorActivity$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p4, :cond_2

    .line 555
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 556
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eqz p3, :cond_3

    .line 559
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p0
.end method

.method validateAndSaveApnData()Z
    .locals 15

    .line 597
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mName:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mApn:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 599
    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity;->mMcc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    iget-object v2, p0, Lcom/android/settings/ApnEditorActivity;->mMnc:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v2}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 602
    invoke-direct {p0}, Lcom/android/settings/ApnEditorActivity;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 604
    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditorActivity;->showErrowDialog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 608
    :cond_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 611
    iget-boolean v10, p0, Lcom/android/settings/ApnEditorActivity;->mNewApn:Z

    .line 614
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v14, 0x1

    if-ge v2, v14, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f1215e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v9, v0

    const/4 v11, 0x1

    const-string v8, "name"

    move-object v6, p0

    move-object v7, v13

    .line 612
    invoke-virtual/range {v6 .. v11}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const/4 v7, 0x2

    const-string v4, "apn"

    move-object v2, p0

    move-object v3, v13

    .line 618
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 624
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mProxy:Lcom/android/settings/TitleSummaryItem;

    .line 626
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    const-string/jumbo v4, "proxy"

    .line 624
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 630
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mPort:Lcom/android/settings/TitleSummaryItem;

    .line 632
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const-string/jumbo v4, "port"

    .line 630
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 636
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMmsProxy:Lcom/android/settings/TitleSummaryItem;

    .line 638
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xc

    const-string v4, "mmsproxy"

    .line 636
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 642
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMmsPort:Lcom/android/settings/TitleSummaryItem;

    .line 644
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xd

    const-string v4, "mmsport"

    .line 642
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 648
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mUser:Lcom/android/settings/TitleSummaryItem;

    .line 650
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x5

    const-string/jumbo v4, "user"

    .line 648
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 654
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mServer:Lcom/android/settings/TitleSummaryItem;

    .line 656
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x6

    const-string/jumbo v4, "server"

    .line 654
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 660
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mPassword:Lcom/android/settings/TitleSummaryItem;

    .line 662
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x7

    const-string/jumbo v4, "password"

    .line 660
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 666
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMmsc:Lcom/android/settings/TitleSummaryItem;

    .line 668
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x8

    const-string v4, "mmsc"

    .line 666
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 672
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mAuthType:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 676
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0xe

    const-string v4, "authtype"

    move-object v2, p0

    move-object v3, v13

    .line 674
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    move v6, v0

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mProtocol:Lcom/android/settings/TitleSummaryItem;

    .line 683
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x10

    const-string/jumbo v4, "protocol"

    move-object v2, p0

    move-object v3, v13

    .line 681
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 687
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mRoamingProtocol:Lcom/android/settings/TitleSummaryItem;

    .line 689
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x14

    const-string/jumbo v4, "roaming_protocol"

    .line 687
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 693
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mApnType:Lcom/android/settings/TitleSummaryItem;

    .line 695
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xf

    const-string/jumbo v4, "type"

    .line 693
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v10

    const/16 v11, 0x9

    const-string v8, "mcc"

    move-object v6, p0

    move-object v7, v13

    move-object v9, v1

    .line 699
    invoke-virtual/range {v6 .. v11}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v10

    const/16 v11, 0xa

    const-string v8, "mnc"

    move-object v9, v12

    .line 705
    invoke-virtual/range {v6 .. v11}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "numeric"

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/ApnEditorActivity;->mCurMcc:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 714
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 715
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "current"

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mBearer:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getValueIndex()I

    move-result v3

    const/16 v5, 0x12

    const-string v2, "bearer"

    move-object v0, p0

    move-object v1, v13

    .line 719
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/ApnEditorActivity;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    .line 725
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoType:Lcom/android/settings/TitleSummaryItem;

    .line 727
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x15

    const-string v2, "mvno_type"

    move-object v0, p0

    .line 725
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 731
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mMvnoMatchData:Lcom/android/settings/TitleSummaryItem;

    .line 733
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorActivity;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    const-string v2, "mvno_match_data"

    move-object v0, p0

    .line 731
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/ApnEditorActivity;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 737
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierEnabled:Lcom/android/settings/TitleSummaryItem;

    .line 739
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->isChecked()Z

    move-result v3

    const/16 v5, 0x11

    const-string v2, "carrier_enabled"

    move-object v0, p0

    move-object v1, v13

    .line 737
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/ApnEditorActivity;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    .line 744
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "edited"

    invoke-virtual {v13, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v0, :cond_5

    .line 747
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/ApnEditorActivity$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mCarrierUri:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity;->mApnData:Lcom/android/settings/ApnEditorActivity$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/ApnEditorActivity$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 748
    :goto_0
    invoke-direct {p0, v0, v13}, Lcom/android/settings/ApnEditorActivity;->updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    :cond_5
    return v14
.end method
