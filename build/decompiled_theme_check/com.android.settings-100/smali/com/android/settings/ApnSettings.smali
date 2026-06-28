.class public Lcom/android/settings/ApnSettings;
.super Lcom/android/settings/BaseActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$ApnItemAdapter;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static final APN_NAME_DM:Ljava/lang/String; = "CMCC DM"

.field private static final BEARER_BITMASK_INDEX:I = 0x8

.field private static final BEARER_INDEX:I = 0x7

.field private static final CT_ALLOW_SHOW_APNS:Ljava/lang/String; = "ctnet,ims"

.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field public static final FOR_CT_TEST_ONLY:Z

.field private static final ID_INDEX:I = 0x0

.field public static final MVNO_MATCH_DATA:Ljava/lang/String; = "mvno_match_data"

.field private static final MVNO_MATCH_DATA_INDEX:I = 0x5

.field public static final MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field private static final MVNO_TYPE_INDEX:I = 0x4

.field private static final NAME_INDEX:I = 0x1

.field public static final OPERATOR_NUMERIC_EXTRA:Ljava/lang/String; = "operator"

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field private static final PREFERRED_APN_USING_SUBID_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn/subId"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field private static final RESTORE_CARRIERS_USING_SUBID_URI:Ljava/lang/String; = "content://telephony/carriers/restore/subId"

.field private static final RO_INDEX:I = 0x6

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field static final TAG:Ljava/lang/String; = "ApnSettings"

.field private static final TYPES_INDEX:I = 0x3

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mApnSettingsHidden:Z

.field private mBtnReset:Lcom/android/settings/widget/SettingItemButton;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/ApnItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogConfirm:Lsmartisanos/app/MenuDialog;

.field private mList:Landroid/widget/ListView;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTitleStringResId:I

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnavailable:Z

.field private mUri:Landroid/net/Uri;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.build.operator"

    const-string/jumbo v1, "open"

    .line 80
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ct"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/ApnSettings;->FOR_CT_TEST_ONLY:Z

    const-string v0, "content://telephony/carriers/restore"

    .line 113
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    .line 114
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    .line 178
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 75
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/ApnSettings;)Landroid/net/Uri;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 75
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/ApnSettings;)Landroid/widget/ListView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/ApnSettings;->mList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/ApnSettings;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/settings/ApnSettings;->mSubId:I

    return p0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/ApnSettings;)Ljava/util/ArrayList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/ApnSettings;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnItem;)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->isApnEditable(Lcom/android/settings/ApnItem;)Z

    move-result p0

    return p0
.end method

.method private addApnToList(Lcom/android/settings/ApnItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/ApnItem;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/ApnItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/ApnItem;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 506
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-static {p4, p5, p6}, Lcom/android/settings/MultiSDKAdapterNew;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 508
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iput-object p5, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 511
    iput-object p6, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private addNewApn()V
    .locals 3

    .line 164
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120187

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget v1, p0, Lcom/android/settings/ApnSettings;->mTitleStringResId:I

    const-string v2, "back_text_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const-string/jumbo v2, "sub_id"

    .line 169
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "operator"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    const-string v2, "mvno_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    const-string v2, "mvno_match_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private fillList()V
    .locals 26

    move-object/from16 v0, p0

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mccmnc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "ApnSettings"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 325
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v6, 0x1d

    if-lt v1, v6, :cond_0

    :try_start_1
    const-string v14, "_id"

    const-string v15, "name"

    const-string v16, "apn"

    const-string/jumbo v17, "type"

    const-string v18, "mvno_type"

    const-string v19, "mvno_match_data"

    const-string v20, "bearer"

    const-string v21, "bearer_bitmask"

    const-string/jumbo v22, "user_editable"

    .line 326
    filled-new-array/range {v14 .. v22}, [Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_10

    :catch_0
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_e

    :cond_0
    :try_start_2
    const-string v14, "_id"

    const-string v15, "name"

    const-string v16, "apn"

    const-string/jumbo v17, "type"

    const-string v18, "mvno_type"

    const-string v19, "mvno_match_data"

    const-string/jumbo v20, "read_only"

    const-string v21, "bearer"

    const-string v22, "bearer_bitmask"

    .line 330
    filled-new-array/range {v14 .. v22}, [Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v12, v1

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    const-string v15, "name ASC"

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v10, :cond_12

    .line 339
    :try_start_3
    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v11, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 341
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 340
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-virtual {v1, v2, v11}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 343
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/settings/ApnSettings;->mData:Ljava/util/ArrayList;

    .line 345
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 346
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 347
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 348
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 351
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v17, 0x0

    .line 355
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "name"

    .line 356
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apn"

    .line 357
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id"

    .line 358
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type"

    .line 359
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mvno_type"

    .line 360
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "mvno_match_data"

    .line 361
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 362
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v11, v6, :cond_3

    const-string/jumbo v11, "read_only"

    .line 363
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v6, 0x1

    if-ne v11, v6, :cond_2

    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    const-string/jumbo v6, "user_editable"

    .line 365
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :goto_4
    const-string v11, "bearer"

    .line 369
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v22, v15

    const-string v15, "bearer_bitmask"

    .line 370
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v23, v12

    .line 371
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v14

    const-string v14, "name "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", apn "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", key "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", type "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",mvnoType "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",mvnoMatchData "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",readOnly "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ",bearer "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {v11}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v12

    or-int/2addr v12, v15

    .line 374
    iget-object v14, v0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v14, :cond_4

    iget-object v14, v0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    goto :goto_5

    :cond_4
    const/4 v14, -0x1

    :goto_5
    move-object/from16 v25, v5

    .line 376
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 377
    invoke-virtual {v5, v14}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v5

    .line 376
    invoke-direct {v0, v5}, Lcom/android/settings/ApnSettings;->networkTypeToRilRidioTechnology(I)I

    move-result v5

    .line 378
    invoke-static {v12, v5}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v12

    if-nez v12, :cond_7

    if-nez v11, :cond_5

    if-eqz v15, :cond_7

    :cond_5
    if-nez v5, :cond_6

    if-nez v11, :cond_7

    if-nez v5, :cond_7

    .line 383
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    const-string v1, "ignore for invalid radioTech"

    .line 384
    invoke-static {v9, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 389
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 390
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_6

    .line 392
    :cond_8
    sget-boolean v5, Lcom/android/settings/ApnSettings;->FOR_CT_TEST_ONLY:Z

    if-eqz v5, :cond_9

    invoke-static {v8}, Lcom/android/settings/ApnSettings;->isChinaTelecom(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 394
    invoke-direct {v0, v2}, Lcom/android/settings/ApnSettings;->isCTAllowApn(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 396
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not allow apn "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v15, v22

    move-object/from16 v12, v23

    move-object/from16 v14, v24

    const/16 v6, 0x1d

    :goto_7
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 403
    :cond_9
    new-instance v5, Lcom/android/settings/ApnItem;

    invoke-direct {v5}, Lcom/android/settings/ApnItem;-><init>()V

    .line 404
    invoke-virtual {v5, v6}, Lcom/android/settings/ApnItem;->setReadOnly(Z)V

    .line 405
    invoke-direct {v0, v1, v8}, Lcom/android/settings/ApnSettings;->normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/settings/ApnItem;->setTitle(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v5, v2}, Lcom/android/settings/ApnItem;->setSummary(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v5, v3}, Lcom/android/settings/ApnItem;->setKey(Ljava/lang/String;)V

    if-eqz v4, :cond_b

    const-string v1, "mms"

    .line 408
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "ia"

    .line 409
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "ims"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v1, 0x1

    .line 410
    :goto_9
    invoke-virtual {v5, v1}, Lcom/android/settings/ApnItem;->setSelectable(Z)V

    if-eqz v1, :cond_d

    .line 412
    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    .line 413
    invoke-virtual {v5, v1}, Lcom/android/settings/ApnItem;->setChecked(Z)V

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find select key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    :cond_c
    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v13

    move-object/from16 v4, v24

    move-object/from16 v6, v25

    const/4 v11, 0x0

    move-object/from16 v5, v23

    const/16 v12, 0x1d

    const/4 v14, 0x0

    .line 417
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/ApnSettings;->addApnToList(Lcom/android/settings/ApnItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    move-object/from16 v6, v25

    const/4 v11, 0x0

    const/16 v12, 0x1d

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, v22

    move-object/from16 v4, v16

    move-object/from16 v5, v23

    .line 419
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/ApnSettings;->addApnToList(Lcom/android/settings/ApnItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v12

    move-object/from16 v15, v22

    move-object/from16 v12, v23

    move-object/from16 v14, v24

    goto/16 :goto_7

    :cond_e
    move-object/from16 v24, v14

    move-object/from16 v22, v15

    const/4 v11, 0x0

    const/4 v14, 0x0

    .line 424
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_b

    :cond_f
    move-object/from16 v24, v13

    move-object/from16 v16, v22

    .line 431
    :goto_b
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApnItem;

    .line 432
    iget-object v3, v0, Lcom/android/settings/ApnSettings;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_10
    if-nez v17, :cond_11

    .line 436
    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 437
    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ApnItem;

    const/4 v2, 0x1

    .line 438
    invoke-virtual {v1, v2}, Lcom/android/settings/ApnItem;->setChecked(Z)V

    .line 439
    invoke-virtual {v1}, Lcom/android/settings/ApnItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set key to  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settings/ApnItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_11
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApnItem;

    .line 444
    iget-object v3, v0, Lcom/android/settings/ApnSettings;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_12
    const/4 v14, 0x0

    .line 448
    :cond_13
    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/ApnSettings$ApnItemAdapter;

    invoke-direct {v2, v0, v14}, Lcom/android/settings/ApnSettings$ApnItemAdapter;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_14

    .line 453
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_f

    :catchall_1
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    move-object v7, v10

    goto :goto_e

    :catchall_2
    move-exception v0

    const/4 v14, 0x0

    move-object v10, v14

    goto :goto_10

    :catch_2
    move-exception v0

    const/4 v14, 0x0

    move-object v7, v14

    .line 450
    :goto_e
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v7, :cond_14

    .line 453
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_14
    :goto_f
    return-void

    :catchall_3
    move-exception v0

    move-object v10, v7

    :goto_10
    if-eqz v10, :cond_15

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_15
    throw v0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    const-string/jumbo v0, "state"

    .line 198
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 200
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0

    .line 202
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "phone"

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 298
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 301
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getSimOperator"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 302
    iget-object p0, p0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 308
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 306
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 304
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 8

    .line 534
    invoke-static {}, Lsmartisanos/util/MultiSimAdapter;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://telephony/carriers/preferapn/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ApnSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    :goto_0
    move-object v2, v0

    const/4 v0, 0x0

    .line 539
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 542
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    .line 543
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz p0, :cond_2

    .line 549
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 546
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    return-object v0

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    :goto_4
    if-eqz v0, :cond_3

    .line 549
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_3
    throw p0
.end method

.method private isApnEditable(Lcom/android/settings/ApnItem;)Z
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsmartisanos/util/config/Features;->isFeatureCTEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {p1}, Lcom/android/settings/ApnItem;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->isCTAllowApn(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 719
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/ApnItem;->getReadOnly()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isCTAllowApn(Ljava/lang/String;)Z
    .locals 4

    const-string p0, "ctnet,ims"

    const-string v0, ","

    .line 707
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 708
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isChinaTelecom(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "46003"

    const-string v1, "46005"

    const-string v2, "46011"

    const-string v3, "46012"

    const-string v4, "45507"

    const-string v5, "45502"

    .line 459
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 461
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 462
    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isConfirmDialogShowing()Z
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/android/settings/ApnSettings;->mDialogConfirm:Lsmartisanos/app/MenuDialog;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 763
    :cond_0
    invoke-virtual {p0}, Lsmartisanos/app/MenuDialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method private networkTypeToRilRidioTechnology(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x13

    return p0

    :pswitch_2
    const/16 p0, 0x12

    return p0

    :pswitch_3
    const/16 p0, 0x11

    return p0

    :pswitch_4
    const/16 p0, 0x10

    return p0

    :pswitch_5
    const/16 p0, 0xf

    return p0

    :pswitch_6
    const/16 p0, 0xd

    return p0

    :pswitch_7
    const/16 p0, 0xe

    return p0

    :pswitch_8
    const/16 p0, 0xc

    return p0

    :pswitch_9
    const/16 p0, 0xb

    return p0

    :pswitch_a
    const/16 p0, 0xa

    return p0

    :pswitch_b
    const/16 p0, 0x9

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_d
    const/16 p0, 0x8

    return p0

    :pswitch_e
    const/4 p0, 0x7

    return p0

    :pswitch_f
    const/4 p0, 0x5

    return p0

    :pswitch_10
    const/4 p0, 0x3

    return p0

    :pswitch_11
    const/4 p0, 0x2

    return p0

    :pswitch_12
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private normalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 471
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 474
    :cond_0
    sget-boolean v0, Lcom/android/settings/ApnSettings;->FOR_CT_TEST_ONLY:Z

    if-eqz v0, :cond_2

    const-string p0, "APN_NAME_CTNET"

    .line 475
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "CTNET"

    return-object p0

    :cond_1
    return-object p1

    :cond_2
    const-string/jumbo v0, "phone"

    .line 482
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 485
    :try_start_0
    invoke-static {}, Lsmartisanos/util/MultiSimAdapter;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 486
    iget p0, p0, Lcom/android/settings/ApnSettings;->mSubId:I

    invoke-static {p0}, Lsmartisanos/util/MultiSimAdapter;->sub2Slot(I)I

    move-result v7

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ITelephony;->getDisplayPlmnMsim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 488
    invoke-interface {v2, p2, p1, v1, p0}, Lcom/android/internal/telephony/ITelephony;->getDisplayPlmn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, p0

    .line 494
    :catch_0
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v1

    .line 496
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    return-object p1

    :cond_6
    return-object p2
.end method

.method private restoreDefaultApn()Z
    .locals 4

    const/16 v0, 0x3e9

    .line 556
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    const/4 v0, 0x1

    .line 557
    sput-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 559
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 560
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 565
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Restore default APN Handler: Process Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 567
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 568
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 569
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 572
    :cond_2
    iget-object p0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 573
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    return v0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 3

    .line 519
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 522
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 523
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    const-string v2, "apn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lsmartisanos/util/MultiSimAdapter;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://telephony/carriers/preferapn/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/ApnSettings;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 526
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    :goto_0
    const/4 v1, 0x0

    .line 528
    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private showConfirmDialog()V
    .locals 3

    .line 745
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDialogConfirm:Lsmartisanos/app/MenuDialog;

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Lsmartisanos/app/MenuDialog;

    invoke-direct {v0, p0}, Lsmartisanos/app/MenuDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDialogConfirm:Lsmartisanos/app/MenuDialog;

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDialogConfirm:Lsmartisanos/app/MenuDialog;

    const v1, 0x7f120188

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisanos/app/MenuDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDialogConfirm:Lsmartisanos/app/MenuDialog;

    const v1, 0x7f120c31

    new-instance v2, Lcom/android/settings/ApnSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/ApnSettings$3;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v0, v1, v2}, Lsmartisanos/app/MenuDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 756
    iget-object p0, p0, Lcom/android/settings/ApnSettings;->mDialogConfirm:Lsmartisanos/app/MenuDialog;

    invoke-virtual {p0}, Lsmartisanos/app/MenuDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 725
    iget-object p2, p0, Lcom/android/settings/ApnSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mList:Landroid/widget/ListView;

    .line 726
    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    .line 728
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 729
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 730
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ApnItem;

    check-cast p1, Lcom/android/settings/ApnItem;

    invoke-virtual {p1}, Lcom/android/settings/ApnItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    if-ne v0, p1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mBtnReset:Lcom/android/settings/widget/SettingItemButton;

    if-ne v0, p1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ApnItem;

    .line 153
    invoke-virtual {p1}, Lcom/android/settings/ApnItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 154
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120186

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget v0, p0, Lcom/android/settings/ApnSettings;->mTitleStringResId:I

    const-string v2, "back_text_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->isApnEditable(Lcom/android/settings/ApnItem;)Z

    move-result p1

    const-string v0, "extra_editable"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003c

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/settings/ApnSettings;->setContentView(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 213
    invoke-static {}, Lsmartisanos/util/MultiSimAdapter;->getDefaultDataSlot()I

    move-result v0

    const-string/jumbo v1, "slot"

    invoke-static {p1, v1, v0}, Lcom/android/settings/Utils;->getIntExtraSafely(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    .line 214
    invoke-static {p1}, Lsmartisanos/util/MultiSimAdapter;->slot2Sub(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ApnSettings;->mSubId:I

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sub:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/settings/ApnSettings;->mSubId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApnSettings"

    invoke-static {v0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120c61

    .line 219
    iput p1, p0, Lcom/android/settings/ApnSettings;->mTitleStringResId:I

    const p1, 0x7f0a0a06

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/settings/ApnSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mList:Landroid/widget/ListView;

    .line 223
    invoke-static {p0}, Lcom/android/settings/Utils;->inflateListTransparentHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 224
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const p1, 0x7f0a0491

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settings/ApnSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingItemButton;

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mBtnReset:Lcom/android/settings/widget/SettingItemButton;

    .line 227
    iget-object p1, p0, Lcom/android/settings/ApnSettings;->mBtnReset:Lcom/android/settings/widget/SettingItemButton;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mUserManager:Landroid/os/UserManager;

    .line 231
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 234
    iget-object p1, p0, Lcom/android/settings/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_config_mobile_networks"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    .line 237
    :cond_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/ApnSettings;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 238
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 240
    iget-object p1, p0, Lcom/android/settings/ApnSettings;->mTitle:Lsmartisanos/widget/TitleBar;

    const/4 v0, 0x4

    const v1, 0x7f12017f

    invoke-virtual {p1, v0, v1}, Lsmartisanos/widget/TitleBar;->addRightButton(II)Lsmartisanos/widget/SmartisanButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    .line 241
    iget-object p1, p0, Lcom/android/settings/ApnSettings;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SmartisanButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object p1, p0, Lcom/android/settings/ApnSettings;->mTitle:Lsmartisanos/widget/TitleBar;

    const v0, 0x20200a4

    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mBackView:Landroid/widget/ImageView;

    .line 243
    iget-object p1, p0, Lcom/android/settings/ApnSettings;->mBackView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 624
    new-instance p1, Lsmartisanos/app/SmartisanProgressDialog;

    invoke-direct {p1, p0}, Lsmartisanos/app/SmartisanProgressDialog;-><init>(Landroid/content/Context;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12106b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisanos/app/SmartisanProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 626
    invoke-virtual {p1, v0}, Lsmartisanos/app/SmartisanProgressDialog;->setCancelable(Z)V

    .line 627
    iget-object p0, p0, Lcom/android/settings/ApnSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 286
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onDestroy()V

    .line 288
    iget-object p0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ApnItem;

    invoke-virtual {p1}, Lcom/android/settings/ApnItem;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 739
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    .line 740
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->showConfirmDialog()V

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 272
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onPause()V

    .line 274
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->isConfirmDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object p0, p0, Lcom/android/settings/ApnSettings;->mDialogConfirm:Lsmartisanos/app/MenuDialog;

    invoke-virtual {p0}, Lsmartisanos/app/MenuDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 259
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onResume()V

    .line 260
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    :cond_1
    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mApnSettingsHidden:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 253
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onStop()V

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mApnSettingsHidden:Z

    return-void
.end method
