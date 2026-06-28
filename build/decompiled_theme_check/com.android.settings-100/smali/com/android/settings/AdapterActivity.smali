.class public Lcom/android/settings/AdapterActivity;
.super Lcom/android/settings/BaseActivity;
.source "AdapterActivity.java"


# static fields
.field public static final EXTRA_ACTIVITY:Ljava/lang/String; = "extra_activity"

.field public static final EXTRA_ALLOW_FINGERPRINT:Ljava/lang/String; = "allow_fingerprint"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "extra_source"

.field public static final EXTRA_TARGET:Ljava/lang/String; = "extra_target"

.field public static final REQUEST_VERIFY_PASSWORD:I = 0x1

.field public static final TARGET_CREATE_PASSWORD:Ljava/lang/String; = "create_password"

.field public static final TARGET_SETUP_FINGERPRINT:Ljava/lang/String; = "setup_fingerprint"

.field public static final TARGET_START_SETTINGS_ACTIVITY:Ljava/lang/String; = "start_settings_activity"

.field public static final TARGET_VERIFY_PASSWORD:Ljava/lang/String; = "verify_password"

.field private static isWalletVerifyPassword:Z


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsFromTPassword:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    return-void
.end method

.method public static isWalletVerifyPassword()Z
    .locals 1

    .line 171
    sget-boolean v0, Lcom/android/settings/AdapterActivity;->isWalletVerifyPassword:Z

    return v0
.end method

.method private launchCreatePassword(I)V
    .locals 7

    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/settings/AdapterActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AdapterActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v2

    .line 121
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/android/settings/AdapterActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUnlockMethodAndFinish  quality:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lockscreen.password_type"

    .line 123
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "lockscreen.password_min"

    .line 124
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "lockscreen.password_max"

    .line 125
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_pin_length"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 127
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-class p1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdapterActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    const-string p1, "challenge"

    invoke-virtual {v3, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x1

    const-string v0, "has_challenge"

    .line 132
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_request_result"

    .line 133
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    iget-object p1, p0, Lcom/android/settings/AdapterActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    const-string v0, "confirm_credentials"

    .line 135
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x2000000

    .line 136
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 138
    invoke-static {p0, v3, p1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method private launchFingerprintEnrolling()V
    .locals 2

    .line 151
    invoke-static {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->launchFingerprintEnrollingActivity(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 154
    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method private launchFingerprintSetupWizard()V
    .locals 2

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/FingerprintEnrollWizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 147
    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-nez p3, :cond_0

    .line 162
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/AdapterActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "device_policy"

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/AdapterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/AdapterActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 45
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AdapterActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_target"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_source"

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/android/settings/AdapterActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.smartisanos.tpassword"

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 52
    iput-boolean v3, p0, Lcom/android/settings/AdapterActivity;->mIsFromTPassword:Z

    const-string v2, "from_security_center"

    .line 53
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v2, "create_password"

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v0, "extra_password_quality"

    .line 56
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 57
    iget-object v0, p0, Lcom/android/settings/AdapterActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/AdapterActivity;->launchCreatePassword(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->finish()V

    goto/16 :goto_3

    :cond_1
    const-string/jumbo v2, "setup_fingerprint"

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    iget-object p1, p0, Lcom/android/settings/AdapterActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/AdapterActivity;->mIsFromTPassword:Z

    if-nez p1, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/android/settings/AdapterActivity;->launchFingerprintEnrolling()V

    goto :goto_0

    .line 64
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/AdapterActivity;->launchFingerprintSetupWizard()V

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->finish()V

    goto/16 :goto_3

    :cond_3
    const-string/jumbo v2, "verify_password"

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "com.smartisanos.wallet"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    sput-boolean v3, Lcom/android/settings/AdapterActivity;->isWalletVerifyPassword:Z

    .line 71
    :cond_4
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const-string v1, "allow_fingerprint"

    .line 72
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 75
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;I)Z

    move-result p1

    goto :goto_1

    .line 77
    :cond_5
    invoke-virtual {v0, v3, v2, v3, v1}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    :goto_1
    if-nez p1, :cond_a

    .line 80
    invoke-virtual {p0, v4}, Lcom/android/settings/AdapterActivity;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->finish()V

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v1, "start_settings_activity"

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "extra_activity"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/settings/AdapterActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activityName "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 87
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "extra_outer"

    .line 88
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "packageName"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const-string v0, "appUid"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 95
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 94
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8
    const-string/jumbo v0, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 98
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_9
    const/4 p1, -0x1

    .line 104
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/AdapterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    move p1, v4

    .line 109
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/settings/AdapterActivity;->setResult(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/AdapterActivity;->finish()V

    :cond_a
    :goto_3
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 176
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onDestroy()V

    const/4 p0, 0x0

    .line 177
    sput-boolean p0, Lcom/android/settings/AdapterActivity;->isWalletVerifyPassword:Z

    return-void
.end method
