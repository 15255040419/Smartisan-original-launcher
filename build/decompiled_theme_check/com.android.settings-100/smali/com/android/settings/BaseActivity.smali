.class public abstract Lcom/android/settings/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static final ACTION_USER_LEAVE_PASSWORD_SETTINGS:Ljava/lang/String; = "com.smartisanos.action.intent.USER_LEAVE_PASSWORD_SETTINGS"

.field public static final EXTRA_FROM_SECURITY:Ljava/lang/String; = "from_security_center"

.field public static final EXTRA_SHOW_TITLE_BACK_BTN:Ljava/lang/String; = "show_title_back_btn"

.field public static final FROM_ACTIVITY:Ljava/lang/String; = "from_activity"

.field private static final FROM_SEARCH:Ljava/lang/String; = "from_search"

.field private static final VIEW_ID:Ljava/lang/String; = "view_id"

.field private static sAppLabelCacheLoaded:Z = false

.field public static sIsUserEnterPasswordSettings:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mActivity:Landroid/app/Activity;

.field protected mBackView:Landroid/widget/ImageView;

.field protected mContext:Landroid/content/Context;

.field private mFinishWizardReceiver:Landroid/content/BroadcastReceiver;

.field private mFirstLaunch:Z

.field protected mFromSecurityCenter:Z

.field private mInsidePasswordSettingsActivitys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsExtDisplaying:Z

.field private mIsFinishReceiverRegistered:Z

.field protected mIsLandScreen:Z

.field protected mIsLaunchFromActivityStackView:Z

.field private mList:Landroid/widget/ListView;

.field private mNeedScroll:Z

.field protected mRightBtn:Lsmartisanos/widget/SmartisanButton;

.field private mScroll:Landroid/widget/ScrollView;

.field private mScrollToView:Landroid/view/View;

.field private mStatusBarObserver:Ljava/util/Observer;

.field private mStatusBarTintView:Landroid/view/View;

.field protected mTitle:Lsmartisanos/widget/TitleBar;

.field private mUserLeavePasswordSettingsReceiver:Landroid/content/BroadcastReceiver;

.field protected sdUnmountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/BaseActivity;->mIsFinishReceiverRegistered:Z

    const/4 v1, 0x1

    .line 73
    iput-boolean v1, p0, Lcom/android/settings/BaseActivity;->mFirstLaunch:Z

    const/16 v2, 0x1b

    new-array v2, v2, [Ljava/lang/Class;

    .line 86
    const-class v3, Lcom/android/settings/Settings$LockScreenActivity;

    aput-object v3, v2, v0

    const-class v0, Lcom/android/settings/Settings$SecuritySettingsActivity;

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/Settings$FaceRecognitionEnrollCompletedActivity;

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/FingerprintEnrollWizardActivity;

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/BackFingerprintEnrollingActivity;

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/FrontFingerprintEnrollingActivity;

    const/4 v1, 0x5

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/LockScreenModeActivity;

    const/4 v1, 0x6

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/ChooseLockPattern;

    const/4 v1, 0x7

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/ChooseLockPassword;

    const/16 v1, 0x8

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;

    const/16 v1, 0x9

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/Settings$OptionsActivity;

    const/16 v1, 0xa

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/ConfirmLockPassword;

    const/16 v1, 0xb

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    const/16 v1, 0xc

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/ConfirmLockPattern;

    const/16 v1, 0xd

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    const/16 v1, 0xe

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/FindingPasswordActivity;

    const/16 v1, 0xf

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/ModifyOrFindPassword;

    const/16 v1, 0x10

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/SendPassword;

    const/16 v1, 0x11

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/FindPasswordActivity;

    const/16 v1, 0x12

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/FindPasswordWaysActivity;

    const/16 v1, 0x13

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/FindPasswordQuestionSettingsActivity;

    const/16 v1, 0x14

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/Settings$QuickPaymentViaFingerprintActivity;

    const/16 v1, 0x15

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/Settings$FingerprintSetupForPaymentActivity;

    const/16 v1, 0x16

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/DeviceAdminAdd;

    const/16 v1, 0x17

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/CredentialStorage;

    const/16 v1, 0x18

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/ConfirmDeviceCredentialActivity;

    const/16 v1, 0x19

    aput-object v0, v2, v1

    const-class v0, Lcom/android/settings/applock/view/PrivacyPasswordSettingActivity;

    const/16 v1, 0x1a

    aput-object v0, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->mInsidePasswordSettingsActivitys:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/android/settings/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BaseActivity$1;-><init>(Lcom/android/settings/BaseActivity;)V

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->mUserLeavePasswordSettingsReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance v0, Lcom/android/settings/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/BaseActivity$3;-><init>(Lcom/android/settings/BaseActivity;)V

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->mFinishWizardReceiver:Landroid/content/BroadcastReceiver;

    .line 548
    new-instance v0, Lcom/android/settings/BaseActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/BaseActivity$6;-><init>(Lcom/android/settings/BaseActivity;)V

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->sdUnmountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BaseActivity;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/BaseActivity;->handleUserLeavePasswordSettingsIfNeeded(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/BaseActivity;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/BaseActivity;->mStatusBarTintView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/BaseActivity;)Landroid/widget/ListView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/BaseActivity;->mList:Landroid/widget/ListView;

    return-object p0
.end method

.method public static checkFromSecurityCenter(Landroid/app/Activity;Landroid/view/Window;Lsmartisanos/widget/TitleBar;Landroid/view/View;Ljava/util/Observer;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    .line 213
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 214
    invoke-static {}, Lcom/android/settings/CustomizedStatusBarHelp;->getInstance()Lcom/android/settings/CustomizedStatusBarHelp;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/settings/CustomizedStatusBarHelp;->addObserver(Ljava/util/Observer;)V

    .line 219
    invoke-static {}, Lcom/android/settings/CustomizedStatusBarHelp;->getInstance()Lcom/android/settings/CustomizedStatusBarHelp;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/settings/CustomizedStatusBarHelp;->customizedStatusBarEnable()Z

    move-result p4

    .line 220
    invoke-static {p0, p2, p3, p1, p4}, Lcom/android/settings/BaseActivity;->setStatusBarByTinted(Landroid/content/Context;Lsmartisanos/widget/TitleBar;Landroid/view/View;Landroid/view/Window;Z)V

    .line 221
    invoke-virtual {p2}, Lsmartisanos/widget/TitleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const p1, 0x105028c

    .line 222
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 223
    invoke-virtual {p2, p0}, Lsmartisanos/widget/TitleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkValidity()V
    .locals 3

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_smartisan_setupwizard"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getBooleanExtraSafely(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceSetupComplete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user already complete SetupWizard, finish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method private getCompClass(Landroid/content/ComponentName;)Ljava/lang/Class;
    .locals 1

    .line 540
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 542
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    .line 544
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get comp class: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Settings"

    invoke-static {v0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private handleUserLeavePasswordSettingsIfNeeded(Z)V
    .locals 7

    .line 504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/BaseActivity;->isInsidePasswordSettingsActivity(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 505
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 510
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Settings"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "top Activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 515
    invoke-direct {p0, v0}, Lcom/android/settings/BaseActivity;->getCompClass(Landroid/content/ComponentName;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/BaseActivity;->isInsidePasswordSettingsActivity(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 516
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.SecuritySettingsActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 517
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.android.settings.LockScreenActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.smartisanos.cloudsync"

    .line 518
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.smartisan.facerecognition"

    .line 519
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.certinstaller"

    .line 520
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    move v1, v3

    .line 525
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserLeavePasswordSettings "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isScreenOn = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    const-string/jumbo v0, "send ACTION_USER_LEAVE_PASSWORD_SETTINGS"

    .line 527
    invoke-static {v2, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.smartisanos.action.intent.USER_LEAVE_PASSWORD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isScreenOn"

    .line 529
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method

.method private isInsidePasswordSettingsActivity(Ljava/lang/Class;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 486
    :cond_0
    sget-boolean v1, Lcom/android/settings/BaseActivity;->sIsUserEnterPasswordSettings:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 487
    const-class v1, Lcom/android/settings/SecurityTypeActivity;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v3, "Settings"

    if-eqz v1, :cond_1

    .line 488
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAssignableFrom SecurityTypeActivity for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 491
    :cond_1
    iget-object p0, p0, Lcom/android/settings/BaseActivity;->mInsidePasswordSettingsActivitys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 492
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isInsidePasswordSettingsActivity for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :cond_3
    return v0
.end method

.method public static setStatusBarByTinted(Landroid/content/Context;Lsmartisanos/widget/TitleBar;Landroid/view/View;Landroid/view/Window;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    const v0, 0x2020087

    .line 230
    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x2020094

    .line 232
    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->setBackgroundResource(I)V

    :goto_0
    if-nez p2, :cond_2

    .line 235
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-static {p0, p3, p1, p4}, Lcom/android/settings/Utils;->setTranslucentStatus(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    const p0, 0x2020093

    .line 239
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 241
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x106000e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addTransparentHeaderFooter(Landroid/widget/ListView;)V
    .locals 2

    .line 411
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 412
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->inflateListTransparentHeader(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 413
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->inflateListTransparentHeader(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .line 381
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getIntExtraSafely(Landroid/content/Intent;Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 386
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/BaseActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected getTitleName()Ljava/lang/CharSequence;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmartisanos/widget/TitleBar;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/BaseActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    invoke-virtual {p0}, Lsmartisanos/widget/TitleBar;->getTitleView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method protected getTitleView()Lsmartisanos/widget/TitleBar;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/settings/BaseActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    return-object p0
.end method

.method public isFromSecurityCenter()Z
    .locals 0

    .line 257
    iget-boolean p0, p0, Lcom/android/settings/BaseActivity;->mFromSecurityCenter:Z

    return p0
.end method

.method public isShowBackButton(Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "back_text_res_name"

    .line 591
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 592
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v4, "string"

    invoke-virtual {v2, v1, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    return v3

    :cond_1
    const-string p0, "back_text"

    .line 598
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    const-string p0, "back_text_id"

    .line 601
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 444
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onBackPressed error!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 153
    sget-boolean v0, Lcom/android/settings/BaseActivity;->sAppLabelCacheLoaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 154
    sput-boolean v1, Lcom/android/settings/BaseActivity;->sAppLabelCacheLoaded:Z

    .line 155
    invoke-static {}, Lcom/android/settings/applications/ApplicationLabelCache;->getInstance()Lcom/android/settings/applications/ApplicationLabelCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationLabelCache;->init()V

    .line 157
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/BaseActivity;->requestWindowFeature(I)Z

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->mContext:Landroid/content/Context;

    .line 159
    iput-object p0, p0, Lcom/android/settings/BaseActivity;->mActivity:Landroid/app/Activity;

    .line 160
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisan/appbaselayer/SMBaseApi;->isSmartisanPCMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/BaseActivity;->mIsExtDisplaying:Z

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "from_security_center"

    invoke-static {v0, v3, v2}, Lcom/android/settings/Utils;->getBooleanExtraSafely(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/BaseActivity;->mFromSecurityCenter:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {v0}, Lcom/android/settings/Utils;->isExtLandScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/BaseActivity;->mIsLandScreen:Z

    .line 165
    invoke-static {p0}, Landroid/view/ActivityStackViewUtils;->launchFromActivityStackView(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/BaseActivity;->mIsLaunchFromActivityStackView:Z

    .line 166
    iget-boolean v0, p0, Lcom/android/settings/BaseActivity;->mFromSecurityCenter:Z

    if-eqz v0, :cond_3

    const v0, 0x7f130001

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->setTheme(I)V

    .line 168
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->mStatusBarTintView:Landroid/view/View;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/BaseActivity;->mStatusBarTintView:Landroid/view/View;

    invoke-static {p0, v0, v2, v1}, Lcom/android/settings/Utils;->setTranslucentStatus(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;Z)V

    .line 170
    new-instance v0, Lcom/android/settings/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/BaseActivity$2;-><init>(Lcom/android/settings/BaseActivity;)V

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->mStatusBarObserver:Ljava/util/Observer;

    .line 178
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;->checkValidity()V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->registerUserLeavePasswordSettingsIfNeeded()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 371
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mStatusBarObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Lcom/android/settings/CustomizedStatusBarHelp;->getInstance()Lcom/android/settings/CustomizedStatusBarHelp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BaseActivity;->mStatusBarObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/android/settings/CustomizedStatusBarHelp;->deleteObserver(Ljava/util/Observer;)V

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->unregisterWizardFinishReceiver()V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->unRegisterUserLeavePasswordSettingsIfNeeded()V

    .line 376
    invoke-static {}, Lcom/android/settings/SettingsTracker;->flush()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 263
    iget-boolean v0, p0, Lcom/android/settings/BaseActivity;->mFromSecurityCenter:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->updateTitleSecurityShadow()V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "from_search"

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->getBooleanExtraSafely(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/BaseActivity;->mNeedScroll:Z

    .line 268
    iget-boolean v0, p0, Lcom/android/settings/BaseActivity;->mNeedScroll:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "view_id"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getStringExtraSafely(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->getStringExtraSafely(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 273
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->mScrollToView:Landroid/view/View;

    const v0, 0x7f0a07c2

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->mScroll:Landroid/widget/ScrollView;

    .line 275
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mScroll:Landroid/widget/ScrollView;

    if-nez v0, :cond_2

    const v0, 0x102000a

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/BaseActivity;->mList:Landroid/widget/ListView;

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 364
    invoke-static {p0}, Lcom/android/settings/Utils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    .line 365
    invoke-direct {p0, v0}, Lcom/android/settings/BaseActivity;->handleUserLeavePasswordSettingsIfNeeded(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 284
    iget-boolean p1, p0, Lcom/android/settings/BaseActivity;->mNeedScroll:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/BaseActivity;->mScrollToView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/BaseActivity;->mScroll:Landroid/widget/ScrollView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/BaseActivity;->mList:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->scroll()V

    .line 287
    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceSetupComplete(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 288
    invoke-static {p0}, Lcom/android/settings/Utils;->hideNavigationBar(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method protected registerUserLeavePasswordSettingsIfNeeded()V
    .locals 2

    .line 463
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/BaseActivity;->isInsidePasswordSettingsActivity(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    const-string/jumbo v1, "registerUserLeavePasswordSettingss"

    .line 464
    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.smartisanos.action.intent.USER_LEAVE_PASSWORD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 466
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/android/settings/BaseActivity;->mUserLeavePasswordSettingsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public scroll()V
    .locals 6

    .line 421
    iget-boolean v0, p0, Lcom/android/settings/BaseActivity;->mFirstLaunch:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 425
    iget-object v1, p0, Lcom/android/settings/BaseActivity;->mScrollToView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 426
    iget-object v1, p0, Lcom/android/settings/BaseActivity;->mScroll:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 427
    aget v0, v0, v3

    add-int/lit16 v0, v0, -0x104

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BaseActivity;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {v1}, Landroid/widget/ListView;->clearFocus()V

    .line 431
    iget-object v1, p0, Lcom/android/settings/BaseActivity;->mList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/BaseActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/BaseActivity$5;-><init>(Lcom/android/settings/BaseActivity;[I)V

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/BaseActivity;->mFirstLaunch:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a0a0b

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TitleBar;

    iput-object p1, p0, Lcom/android/settings/BaseActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    .line 187
    iget-object p0, p0, Lcom/android/settings/BaseActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 188
    invoke-virtual {p0, p1}, Lsmartisanos/widget/TitleBar;->setShadowVisible(Z)V

    :cond_0
    return-void
.end method

.method public setStatusBarWhiteBg(Z)V
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/android/settings/BaseActivity;->mFromSecurityCenter:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/settings/BaseActivity;->mStatusBarTintView:Landroid/view/View;

    const p1, 0x7f0805b0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/android/settings/BaseActivity;->mStatusBarTintView:Landroid/view/View;

    const p1, 0x2020093

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 582
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 583
    iget-object p0, p0, Lcom/android/settings/BaseActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    if-eqz p0, :cond_0

    .line 584
    invoke-virtual {p0, p1}, Lsmartisanos/widget/TitleBar;->setCenterText(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 574
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 575
    iget-object p0, p0, Lcom/android/settings/BaseActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    if-eqz p0, :cond_1

    .line 576
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lsmartisanos/widget/TitleBar;->setCenterText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected setTitleByIntent(Lsmartisanos/widget/TitleBar;)V
    .locals 3

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->hasExtraSafely(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getStringExtraSafely(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v1, p1

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "title_id"

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->hasExtraSafely(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Lcom/android/settings/Utils;->getIntExtraSafely(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    .line 319
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 326
    invoke-virtual {p0, v1}, Lcom/android/settings/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getTitleName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method protected setTitleName(I)V
    .locals 1

    const v0, 0x7f0a0a0b

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/TitleBar;

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsmartisanos/widget/TitleBar;->setCenterText(Ljava/lang/String;)V

    return-void
.end method

.method protected setupBackBtnOnTitle()Lsmartisanos/widget/TitleBar;
    .locals 1

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->setupBackBtnOnTitle(Z)Lsmartisanos/widget/TitleBar;

    move-result-object p0

    return-object p0
.end method

.method protected setupBackBtnOnTitle(Z)Lsmartisanos/widget/TitleBar;
    .locals 4

    const v0, 0x7f0a0a0b

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/TitleBar;

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "show_title_back_btn"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getBooleanExtraSafely(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v0}, Lsmartisanos/widget/TitleBar;->removeAllLeftViews()V

    const v1, 0x20200a4

    .line 336
    invoke-virtual {v0, v1}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BaseActivity;->mBackView:Landroid/widget/ImageView;

    .line 337
    iget-object v1, p0, Lcom/android/settings/BaseActivity;->mBackView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/BaseActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/BaseActivity$4;-><init>(Lcom/android/settings/BaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->setTitleByIntent(Lsmartisanos/widget/TitleBar;)V

    if-eqz p1, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method public setupReceiver()V
    .locals 2

    .line 398
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.smartisanos.FINISH_WIZARD"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/android/settings/BaseActivity;->mFinishWizardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/android/settings/BaseActivity;->mIsFinishReceiverRegistered:Z

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "extra_outer"

    .line 559
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 560
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v0, "back_text"

    .line 562
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getTitleName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getTitleName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 565
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected unRegisterUserLeavePasswordSettingsIfNeeded()V
    .locals 1

    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/BaseActivity;->isInsidePasswordSettingsActivity(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mUserLeavePasswordSettingsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 476
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterWizardFinishReceiver()V
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/android/settings/BaseActivity;->mIsFinishReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mFinishWizardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/android/settings/BaseActivity;->mIsFinishReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method protected updateTitleSecurityShadow()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mBackView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0805fd

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    const v1, 0x7f06010d

    if-eqz v0, :cond_1

    const v2, 0x7f0805fe

    .line 197
    invoke-virtual {v0, v2}, Lsmartisanos/widget/SmartisanButton;->setBackgroundResource(I)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lsmartisanos/widget/SmartisanButton;->setTextColor(I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/TitleBar;->setCenterTextColor(I)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/BaseActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    invoke-virtual {v0}, Lsmartisanos/widget/TitleBar;->getShadowView()Landroid/view/View;

    move-result-object v0

    const v1, 0x202008a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BaseActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    iget-object v2, p0, Lcom/android/settings/BaseActivity;->mStatusBarTintView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/BaseActivity;->mStatusBarObserver:Ljava/util/Observer;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/BaseActivity;->checkFromSecurityCenter(Landroid/app/Activity;Landroid/view/Window;Lsmartisanos/widget/TitleBar;Landroid/view/View;Ljava/util/Observer;)V

    :cond_2
    return-void
.end method
