.class public Lcom/android/settings/wifi/TrustedNetworkHelper;
.super Ljava/lang/Object;
.source "TrustedNetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;,
        Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_REQUEST_RESULT:Ljava/lang/String; = "extra_request_result"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field public static final REQ_CODE_CHOOSE_LOCK_PASSWORD:I = 0xa

.field public static final REQ_CODE_CONFIRM_LOCK_PASSWORD:I = 0xb


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelCallback:Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockQualityHelper:Lcom/android/settings/LockPasswordQualityHelper;

.field private mMenuDialog:Lsmartisanos/app/MenuDialog;

.field private mWarnToChoosePasswordDialog:Landroid/app/AlertDialog;

.field private passwordConfirmed:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    .line 63
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 64
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 65
    new-instance p1, Lcom/android/settings/LockPasswordQualityHelper;

    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/android/settings/LockPasswordQualityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mLockQualityHelper:Lcom/android/settings/LockPasswordQualityHelper;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .line 69
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/TrustedNetworkHelper;-><init>(Landroid/app/Activity;)V

    .line 70
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/TrustedNetworkHelper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->cancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/TrustedNetworkHelper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->showChooseLockscreenModeDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/TrustedNetworkHelper;)Lsmartisanos/app/MenuDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    return-object p0
.end method

.method private cancel()V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mCancelCallback:Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method private isDeviceEncrypted()Z
    .locals 3

    .line 243
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    const-string v0, "device_policy"

    .line 244
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 245
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result p0

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    :goto_1
    return v2
.end method

.method private showChooseLockscreenModeDialog()V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Lsmartisanos/app/MenuDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lsmartisanos/app/MenuDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    const v1, 0x7f121542

    invoke-virtual {v0, v1}, Lsmartisanos/app/MenuDialog;->setTitle(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    new-instance v1, Lcom/android/settings/wifi/TrustedNetworkHelper$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/TrustedNetworkHelper$4;-><init>(Lcom/android/settings/wifi/TrustedNetworkHelper;)V

    invoke-virtual {v0, v1}, Lsmartisanos/app/MenuDialog;->setNegativeButton(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    new-instance v1, Lcom/android/settings/wifi/TrustedNetworkHelper$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/TrustedNetworkHelper$5;-><init>(Lcom/android/settings/wifi/TrustedNetworkHelper;)V

    invoke-virtual {v0, v1}, Lsmartisanos/app/MenuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->isDeviceEncrypted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120b8f

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;

    const/high16 v3, 0x10000

    invoke-direct {v1, p0, v3}, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;-><init>(Lcom/android/settings/wifi/TrustedNetworkHelper;I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120b91

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;

    const/4 v3, 0x4

    const/high16 v4, 0x20000

    invoke-direct {v1, p0, v4, v3}, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;-><init>(Lcom/android/settings/wifi/TrustedNetworkHelper;II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120b92

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;

    const/4 v3, 0x6

    invoke-direct {v1, p0, v4, v3}, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;-><init>(Lcom/android/settings/wifi/TrustedNetworkHelper;II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120b8d

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;

    const/high16 v3, 0x40000

    invoke-direct {v1, p0, v3}, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;-><init>(Lcom/android/settings/wifi/TrustedNetworkHelper;I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 179
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 181
    new-instance v1, Lsmartisanos/app/MenuDialogListAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3, v0, v2}, Lsmartisanos/app/MenuDialogListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0, v1}, Lsmartisanos/app/MenuDialog;->setAdapter(Lsmartisanos/app/MenuDialogListAdapter;)V

    .line 185
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    invoke-virtual {p0}, Lsmartisanos/app/MenuDialog;->show()V

    return-void
.end method


# virtual methods
.method public chooseOrConfirmPasswordDialog()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->isLockScreenSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->passwordConfirmed:Z

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    :goto_0
    const/16 v0, 0xb

    .line 110
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f121543

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    .line 110
    invoke-virtual {v1, v0, p0, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;I)Z

    goto :goto_1

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mWarnToChoosePasswordDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121541

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12153f

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1203dd

    new-instance v2, Lcom/android/settings/wifi/TrustedNetworkHelper$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/TrustedNetworkHelper$3;-><init>(Lcom/android/settings/wifi/TrustedNetworkHelper;)V

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121540

    new-instance v2, Lcom/android/settings/wifi/TrustedNetworkHelper$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/TrustedNetworkHelper$2;-><init>(Lcom/android/settings/wifi/TrustedNetworkHelper;)V

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/TrustedNetworkHelper$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/TrustedNetworkHelper$1;-><init>(Lcom/android/settings/wifi/TrustedNetworkHelper;)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mWarnToChoosePasswordDialog:Landroid/app/AlertDialog;

    .line 140
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mWarnToChoosePasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method public handleChooseOrConfirmPasswordResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->passwordConfirmed:Z

    :cond_1
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mWarnToChoosePasswordDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    if-eqz p0, :cond_2

    .line 146
    invoke-virtual {p0}, Lsmartisanos/app/MenuDialog;->isShowing()Z

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

.method public isLockScreenSecure()Z
    .locals 1

    .line 74
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isPasswordConfirmedSuccess()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->passwordConfirmed:Z

    return p0
.end method

.method public resetPasswordConfirmedFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->passwordConfirmed:Z

    return-void
.end method

.method public setCancelCallback(Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mCancelCallback:Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;

    return-void
.end method

.method updateUnlockMethodAndFinish(II)V
    .locals 10

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mLockQualityHelper:Lcom/android/settings/LockPasswordQualityHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/LockPasswordQualityHelper;->upgradeQuality(I)I

    move-result p1

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "extra_request_result"

    const-string v3, "lockscreen.biometric_weak_fallback"

    const-string v4, "confirm_credentials"

    const/4 v5, 0x0

    const/high16 v6, 0x20000

    if-lt p1, v6, :cond_1

    .line 212
    iget-object v6, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    move v6, v7

    .line 216
    :cond_0
    iget-object v7, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v7

    .line 217
    iget-object v8, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    const-class v9, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v8, "lockscreen.password_type"

    .line 218
    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "lockscreen.password_min"

    .line 219
    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "lockscreen.password_max"

    .line 220
    invoke-virtual {v0, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_pin_length"

    .line 221
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/high16 p2, 0x10000

    if-ne p1, p2, :cond_2

    .line 226
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    const-class p2, Lcom/android/settings/ChooseLockPattern;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p1, 0x3

    const-string p2, "pattern_size"

    .line 227
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "key_lock_method"

    const-string p2, "pattern"

    .line 228
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mFragment:Landroid/app/Fragment;

    const/16 p2, 0xa

    if-eqz p1, :cond_3

    .line 235
    invoke-static {p1, v0, v5, p2}, Lcom/android/settings/Utils;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;II)V

    goto :goto_1

    .line 237
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0, v5, p2}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    :goto_1
    return-void
.end method
