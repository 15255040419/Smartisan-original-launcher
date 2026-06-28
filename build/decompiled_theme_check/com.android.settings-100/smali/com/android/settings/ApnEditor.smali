.class public Lcom/android/settings/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_BITMASK_INDEX:I = 0x13

.field private static final BEARER_INDEX:I = 0x12

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field protected static final EDIT_ACTION:Ljava/lang/String; = "edit_action"

.field protected static final EDIT_DATA:Ljava/lang/String; = "edit_data"

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER_MULTI:Ljava/lang/String; = "bearer_multi"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

.field private static final MCC_INDEX:I = 0x9

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final MVNO_MATCH_DATA_INDEX:I = 0x16

.field private static final MVNO_TYPE_INDEX:I = 0x15

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROTOCOL_IPV4V6:Ljava/lang/String; = "IPV4V6"

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x14

.field private static final SAVED_POS:Ljava/lang/String; = "pos"

.field private static final SERVER_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_EDITABLE_INDEX:I = 0x17

.field private static final USER_INDEX:I = 0x5

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroidx/preference/EditTextPreference;

.field private mApnType:Landroidx/preference/EditTextPreference;

.field private mAuthType:Landroidx/preference/ListPreference;

.field private mBearerInitialVal:I

.field private mBearerMulti:Landroidx/preference/MultiSelectListPreference;

.field private mCarrierEnabled:Landroidx/preference/SwitchPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDisableEditor:Z

.field private mFirstTime:Z

.field private mMcc:Landroidx/preference/EditTextPreference;

.field private mMmsPort:Landroidx/preference/EditTextPreference;

.field private mMmsProxy:Landroidx/preference/EditTextPreference;

.field private mMmsc:Landroidx/preference/EditTextPreference;

.field private mMnc:Landroidx/preference/EditTextPreference;

.field private mMvnoMatchData:Landroidx/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoType:Landroidx/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mName:Landroidx/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroidx/preference/EditTextPreference;

.field private mPort:Landroidx/preference/EditTextPreference;

.field private mProtocol:Landroidx/preference/ListPreference;

.field private mProxy:Landroidx/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroidx/preference/ListPreference;

.field private mServer:Landroidx/preference/EditTextPreference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroidx/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 53
    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

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

    const-string/jumbo v24, "user_editable"

    .line 110
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mDisableEditor:Z

    .line 103
    iput v0, p0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ApnEditor;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 430
    :cond_0
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 432
    :try_start_0
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f030019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 444
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_0

    .line 447
    :try_start_0
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    .line 450
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 457
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 761
    sget-object p0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

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

    .line 753
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 754
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object p0
.end method

.method private deleteApn()V
    .locals 3

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 737
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void
.end method

.method private fillUi()V
    .locals 7

    .line 284
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 285
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 287
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0xc

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0xd

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0x8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0x9

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0xa

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0xf

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/ApnEditor;->mSubId:I

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 305
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 310
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v4, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 311
    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 312
    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0xe

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 317
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x14

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x11

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x12

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    .line 327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 328
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x13

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_3

    .line 330
    iget v3, p0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    if-nez v3, :cond_5

    const-string v3, "0"

    .line 331
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_2
    if-eqz v3, :cond_5

    and-int/lit8 v6, v3, 0x1

    if-ne v6, v2, :cond_4

    .line 337
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 344
    :cond_5
    :goto_3
    iget v3, p0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_6
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x15

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x16

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 353
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 354
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 363
    :cond_7
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 379
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 380
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 382
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f030005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 383
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    aget-object v0, v3, v0

    invoke-virtual {v4, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 385
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    sget-object v3, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    :goto_4
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    .line 389
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    .line 391
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    .line 393
    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-virtual {v0, v3}, Landroidx/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    .line 395
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 400
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5

    .line 402
    :cond_9
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    :goto_5
    return-void
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 5

    .line 717
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 719
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 720
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_0

    .line 723
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f12079b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 724
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 725
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f120798

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 727
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f120799

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 728
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 729
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f12079a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 464
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-object v2

    .line 470
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0300b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 471
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    if-eqz p1, :cond_5

    .line 472
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 473
    aget-object p1, v3, v0

    const-string v1, "SPN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 474
    iget-object p1, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 475
    :cond_2
    aget-object p1, v3, v0

    const-string v1, "IMSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 476
    iget-object p1, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/ApnEditor;->mSubId:I

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    .line 477
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 478
    :cond_3
    aget-object p1, v3, v0

    const-string v1, "GID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 479
    iget-object p1, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 480
    :cond_4
    aget-object p1, v3, v0

    const-string v1, "ICCID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 481
    iget-object p1, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 482
    sget-object p1, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMvnoMatchDataStr: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object p1, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 489
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

.method private protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;
    .locals 1

    .line 412
    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p2

    .line 416
    :cond_0
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 418
    :try_start_0
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    .line 741
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 744
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-array p0, p0, [C

    const/4 p1, 0x0

    .line 745
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    const/16 v0, 0x2a

    .line 746
    aput-char v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 748
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 742
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object p0
.end method

.method private validateAndSave(Z)Z
    .locals 8

    .line 616
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mDisableEditor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 617
    sget-object p0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string p1, "Form is disabled. Nothing to save."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 624
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v4}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 626
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    .line 627
    invoke-static {p0}, Lcom/android/settings/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/ApnEditor;)V

    return v6

    .line 631
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_2

    .line 632
    sget-object p0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string p1, "Could not go to the first row in the Cursor when saving data."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const/4 v5, 0x0

    if-eqz p1, :cond_3

    .line 638
    iget-boolean p1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v1, :cond_3

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return v6

    .line 643
    :cond_3
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 648
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f1215e8

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v7, "name"

    .line 647
    invoke-virtual {p1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apn"

    .line 649
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "proxy"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "port"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mmsproxy"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mmsport"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "server"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "password"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mmsc"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 661
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "authtype"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "protocol"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "roaming_protocol"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mcc"

    .line 669
    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mnc"

    .line 670
    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "numeric"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 675
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 676
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "current"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    .line 682
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v6

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 683
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    move v2, v6

    goto :goto_1

    .line 687
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 690
    :cond_8
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "bearer_bitmask"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_a

    .line 693
    iget v0, p0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_9

    goto :goto_2

    .line 695
    :cond_9
    invoke-static {v2, v0}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 696
    iget v6, p0, Lcom/android/settings/ApnEditor;->mBearerInitialVal:I

    .line 703
    :cond_a
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "bearer"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mvno_type"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mvno_match_data"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "carrier_enabled"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150008

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->addPreferencesFromResource(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string v0, "apn_name"

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_apn"

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mApn:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_http_proxy"

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_http_port"

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mPort:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_user"

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mUser:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_server"

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mServer:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_password"

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mms_proxy"

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mms_port"

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mmsc"

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mcc"

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_mnc"

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroidx/preference/EditTextPreference;

    const-string v0, "apn_type"

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroidx/preference/EditTextPreference;

    const-string v0, "auth_type"

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    .line 184
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "apn_protocol"

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    .line 187
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "apn_roaming_protocol"

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    .line 190
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "carrier_enabled"

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    const-string v0, "bearer_multi"

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    .line 195
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "mvno_type"

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    .line 198
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "mvno_match_data"

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroidx/preference/EditTextPreference;

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const-string/jumbo v5, "sub_id"

    .line 205
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/ApnEditor;->mSubId:I

    const/4 v5, 0x0

    const-string v6, "DISABLE_EDITOR"

    .line 207
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ApnEditor;->mDisableEditor:Z

    .line 208
    iget-boolean v6, p0, Lcom/android/settings/ApnEditor;->mDisableEditor:Z

    if-eqz v6, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 210
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "ApnEditor form is disabled."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x1

    if-nez p1, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v5

    .line 213
    :goto_0
    iput-boolean v7, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    const-string v7, "android.intent.action.EDIT"

    .line 215
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 217
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Edit request not for carrier table. Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void

    .line 222
    :cond_2
    iput-object p1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto/16 :goto_3

    :cond_3
    const-string v7, "android.intent.action.INSERT"

    .line 223
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 224
    iget-boolean v3, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-nez v3, :cond_5

    const-string/jumbo v3, "pos"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 236
    :cond_4
    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 237
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v8, p1

    .line 236
    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_2

    .line 225
    :cond_5
    :goto_1
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 226
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 227
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert request not for carrier table. Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void

    .line 231
    :cond_6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "IPV4V6"

    const-string/jumbo v8, "protocol"

    .line 232
    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "roaming_protocol"

    .line 233
    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 239
    :goto_2
    iput-boolean v6, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    .line 240
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    .line 241
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 245
    iget-object p1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez p1, :cond_7

    .line 246
    sget-object p1, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to insert new telephony provider into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void

    .line 254
    :cond_7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    .line 261
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 262
    iget-object p1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo p1, "phone"

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/settings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 266
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result p1

    if-ge v5, p1, :cond_8

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 270
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->fillUi()V

    return-void

    .line 257
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 549
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 550
    iget-boolean p2, p0, Lcom/android/settings/ApnEditor;->mDisableEditor:Z

    if-eqz p2, :cond_0

    .line 551
    sget-object p0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string p1, "Form is disabled. Do not create the options menu."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 555
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    const/4 p2, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    const v0, 0x7f120c30

    .line 556
    invoke-interface {p1, p2, p0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    const/4 p0, 0x2

    const v0, 0x7f120c44

    .line 559
    invoke-interface {p1, p2, p0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const v0, 0x108004e

    .line 560
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p0, 0x3

    const v0, 0x7f120c2f

    .line 561
    invoke-interface {p1, p2, p0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x1080038

    .line 562
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 567
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 583
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 577
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz p1, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    return v1

    :cond_2
    const/4 p1, 0x0

    .line 572
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    :cond_3
    return v1

    .line 569
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->deleteApn()V

    return v1
.end method

.method public onPause()V
    .locals 0

    .line 280
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 497
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_type"

    .line 498
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 500
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 501
    iget-object p2, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 503
    iget-object p2, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f030005

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 504
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroidx/preference/ListPreference;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    return v2

    :cond_0
    const-string v1, "apn_protocol"

    .line 508
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 514
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "apn_roaming_protocol"

    .line 515
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 516
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroidx/preference/ListPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    .line 520
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "bearer_multi"

    .line 522
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 523
    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/android/settings/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    return v2

    .line 527
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 528
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const-string v1, "mvno_type"

    .line 529
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 530
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return v2

    .line 534
    :cond_7
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 535
    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 536
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_9

    .line 537
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_9
    const-string p2, ""

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 538
    :cond_a
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    if-eqz p2, :cond_c

    .line 541
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_c
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 275
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 601
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 602
    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 603
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string/jumbo v0, "pos"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
