.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment23;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# static fields
.field private static final CHOOSE_LOCK_REQUEST:I = 0x66

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final ENABLE_ENCRYPTION_REQUEST:I = 0x65

.field public static final ENCRYPT_REQUESTED_DISABLED:Ljava/lang/String; = "encrypt_requested_disabled"

.field public static final ENCRYPT_REQUESTED_QUALITY:Ljava/lang/String; = "encrypt_requested_quality"

.field private static final FINISH_PENDING:Ljava/lang/String; = "finish_pending"

.field public static final HIDE_DISABLED_PREFS:Ljava/lang/String; = "hide_disabled_prefs"

.field private static final KEY_UNLOCK_BACKUP_INFO:Ljava/lang/String; = "unlock_backup_info"

.field private static final KEY_UNLOCK_SET_BIOMETRIC_WEAK:Ljava/lang/String; = "unlock_set_biometric_weak"

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_OFF:Ljava/lang/String; = "unlock_set_off"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN_FOUR:Ljava/lang/String; = "unlock_set_pin_four"

.field private static final KEY_UNLOCK_SET_PIN_SIX:Ljava/lang/String; = "unlock_set_pin_six"

.field public static final MINIMUM_QUALITY_KEY:Ljava/lang/String; = "minimum_quality"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"

.field private static final TAG:Ljava/lang/String; = "ChooseLockGenericFragment"

.field private static final WAITING_FOR_CONFIRMATION:Ljava/lang/String; = "waiting_for_confirmation"


# instance fields
.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFaceRecognitionEnable:Z

.field private mFaceRecognitionHelper:Lcom/android/settings/FaceRecognitionHelper;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForFingerprint:Z

.field private mHasChallenge:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mRemovalCallback:Lcom/android/settings/MultiSDKAdapter$RemovalCallback;

.field private mRequirePassword:Z

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment23;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionEnable:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 117
    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRemovalCallback:Lcom/android/settings/MultiSDKAdapter$RemovalCallback;

    return-void
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "unlock_set_off"

    return-object p0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_2

    const/high16 p0, 0x40000

    if-eq v0, p0, :cond_1

    const/high16 p0, 0x50000

    if-eq v0, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string/jumbo p0, "unlock_set_password"

    return-object p0

    .line 346
    :cond_2
    iget-object p0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordLengthSmartisan(I)J

    move-result-wide v0

    long-to-int p0, v0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    const-string/jumbo p0, "unlock_set_pin_six"

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "unlock_set_pin_four"

    :goto_0
    return-object p0

    :cond_4
    const-string/jumbo p0, "unlock_set_pattern"

    return-object p0

    :cond_5
    const-string/jumbo p0, "unlock_set_none"

    return-object p0
.end method

.method private maybeEnableEncryption(IIZ)V
    .locals 3

    const-string v0, "device_policy"

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 253
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iput p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 256
    iput-boolean p3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    .line 261
    invoke-static {p3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    .line 263
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object p1

    .line 264
    iget-boolean p3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    const-string v0, "for_fingerprint"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "extra_pin_length"

    .line 266
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p2, 0x65

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IIZ)V

    :goto_0
    return-void
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 1

    const/4 v0, 0x4

    .line 240
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IIZ)V

    return-void
.end method

.method private removeAllFingerprintTemplates()V
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRemovalCallback:Lcom/android/settings/MultiSDKAdapter$RemovalCallback;

    invoke-static {v0, p0}, Lcom/android/settings/LockScreenModeActivity;->removeAllFingerprintTemplates(Landroid/content/Context;Lcom/android/settings/MultiSDKAdapter$RemovalCallback;)Z

    return-void
.end method

.method private removeFaceRecognitionIfExist()V
    .locals 1

    .line 556
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionHelper:Lcom/android/settings/FaceRecognitionHelper;

    invoke-static {v0, p0}, Lcom/android/settings/LockScreenModeActivity;->removeFaceRecognitionIfExist(Landroid/content/Context;Lcom/android/settings/FaceRecognitionHelper;)V

    return-void
.end method

.method private sanitizePassword()V
    .locals 4

    .line 578
    :try_start_0
    const-class v0, Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v1, "sanitizePassword"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 579
    iget-object p0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 585
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 583
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 581
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 1

    .line 330
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f120543

    .line 333
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 11

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 431
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f12115c

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    .line 438
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 440
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 441
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v7, "unlock_set_pin_six"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v9

    goto :goto_2

    :sswitch_1
    const-string/jumbo v7, "unlock_set_pattern"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v3

    goto :goto_2

    :sswitch_2
    const-string/jumbo v7, "unlock_set_password"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_2

    :sswitch_3
    const-string/jumbo v7, "unlock_set_pin_four"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v10

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v1

    :goto_2
    if-eqz v6, :cond_2

    if-eq v6, v10, :cond_2

    if-eq v6, v9, :cond_2

    if-eq v6, v8, :cond_2

    goto :goto_3

    .line 446
    :cond_2
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a967a18 -> :sswitch_3
        0x27e176f3 -> :sswitch_2
        0x53ec4438 -> :sswitch_1
        0x613523e0 -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePreferencesOrFinish()V
    .locals 4

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "lockscreen.password_type"

    .line 309
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    const-string v2, "minimum_quality"

    .line 312
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 313
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v1

    const-string v2, "hide_disabled_prefs"

    .line 314
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v2, 0x7f15004c

    .line 320
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 321
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 322
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    .line 323
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :goto_0
    return-void
.end method

.method private upgradeQuality(I)I
    .locals 0

    .line 359
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p0

    return p0
.end method

.method private upgradeQualityForDPM(I)I
    .locals 1

    .line 365
    iget-object p0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method protected disableUnusablePreferences(IZ)V
    .locals 0

    .line 381
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 7

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_a

    .line 394
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 396
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unlock_set_off"

    .line 399
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_2

    :cond_1
    const-string/jumbo v4, "unlock_set_none"

    .line 401
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "unlock_set_pattern"

    .line 403
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v3, 0x10000

    if-gt p1, v3, :cond_0

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "unlock_set_pin_four"

    .line 405
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v6, 0x30000

    if-eqz v4, :cond_4

    if-gt p1, v6, :cond_0

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "unlock_set_pin_six"

    .line 407
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-gt p1, v6, :cond_0

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "unlock_set_password"

    .line 409
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x60000

    if-gt p1, v3, :cond_0

    :cond_6
    :goto_1
    move v3, v1

    :goto_2
    if-eqz p2, :cond_7

    move v4, v3

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    if-nez v4, :cond_8

    .line 416
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_8
    if-nez v3, :cond_9

    const v3, 0x7f1215c1

    .line 418
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 419
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_a
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    .line 490
    invoke-static {p1, p2, p3, p0}, Lcom/android/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getHelpResource()I
    .locals 0

    const p0, 0x7f120921

    return p0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;
    .locals 0

    .line 462
    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 468
    invoke-static/range {p1 .. p6}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 0

    .line 455
    invoke-static/range {p1 .. p6}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 0

    .line 480
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p1, p2, p3, p4, p0}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 485
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p1, p2, p3, p0}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 0

    .line 475
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    .line 474
    invoke-static {p1, p2, p3, p0}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onActivityCreated(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 188
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v2, 0x7f0d008a

    .line 192
    invoke-virtual {p0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 194
    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 276
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment23;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x64

    if-ne p1, v3, :cond_0

    if-ne p2, v2, :cond_0

    .line 279
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string/jumbo p1, "password"

    .line 280
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 281
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_0

    :cond_0
    const/16 v3, 0x65

    if-ne p1, v3, :cond_1

    if-ne p2, v2, :cond_1

    const-string p1, "extra_require_password"

    .line 284
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    const/4 p1, 0x4

    const-string p2, "extra_pin_length"

    .line 286
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 287
    iget p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    iget-boolean p3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IIZ)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x66

    if-ne p1, v1, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isFaceRecognitionEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionEnable:Z

    .line 135
    new-instance v0, Lcom/android/settings/FaceRecognitionHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/FaceRecognitionHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionHelper:Lcom/android/settings/FaceRecognitionHelper;

    .line 136
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionHelper:Lcom/android/settings/FaceRecognitionHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/FaceRecognitionHelper;->bind(Lcom/android/settings/FaceRecognitionHelper$FaceRecognitionConnectionCallback;)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const-string v0, "device_policy"

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 141
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 142
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 143
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 144
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sanitizePassword()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "confirm_credentials"

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->getBooleanExtraSafely(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    if-eqz v2, :cond_1

    xor-int/2addr v0, v1

    .line 149
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-string v5, "challenge"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "for_fingerprint"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz p1, :cond_2

    const-string/jumbo v0, "password_confirmed"

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string/jumbo v0, "waiting_for_confirmation"

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const-string v0, "encrypt_requested_quality"

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    const-string v0, "encrypt_requested_disabled"

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 167
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz p1, :cond_3

    .line 168
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_0

    .line 169
    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez p1, :cond_5

    .line 170
    new-instance p1, Lcom/android/settings/ChooseLockSettingsHelper;

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v0, 0x64

    const v2, 0x7f1215c5

    .line 173
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 172
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;IZ)Z

    move-result p1

    if-nez p1, :cond_4

    .line 174
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 175
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_0

    .line 177
    :cond_4
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 568
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onDestroy()V

    .line 569
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sanitizePassword()V

    .line 570
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionEnable:Z

    if-eqz v0, :cond_0

    .line 571
    iget-object p0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionHelper:Lcom/android/settings/FaceRecognitionHelper;

    invoke-virtual {p0}, Lcom/android/settings/FaceRecognitionHelper;->unbind()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .line 201
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "unlock_set_off"

    .line 206
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 207
    iget-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionEnable:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionHelper:Lcom/android/settings/FaceRecognitionHelper;

    invoke-virtual {p1}, Lcom/android/settings/FaceRecognitionHelper;->isReady()Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 210
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "unlock_set_none"

    .line 212
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 213
    iget-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionEnable:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceRecognitionHelper:Lcom/android/settings/FaceRecognitionHelper;

    invoke-virtual {p1}, Lcom/android/settings/FaceRecognitionHelper;->isReady()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 216
    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    :cond_3
    const-string/jumbo p2, "unlock_set_biometric_weak"

    .line 218
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const p1, 0x8000

    .line 219
    invoke-direct {p0, p1, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    :cond_4
    const-string/jumbo p2, "unlock_set_pattern"

    .line 221
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/high16 p1, 0x10000

    .line 222
    invoke-direct {p0, p1, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    :cond_5
    const-string/jumbo p2, "unlock_set_pin_four"

    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/high16 v2, 0x20000

    if-eqz p2, :cond_6

    .line 225
    invoke-direct {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    :cond_6
    const-string/jumbo p2, "unlock_set_pin_six"

    .line 227
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p1, 0x6

    .line 228
    invoke-direct {p0, v2, p1, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IIZ)V

    goto :goto_0

    :cond_7
    const-string/jumbo p2, "unlock_set_password"

    .line 230
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/high16 p1, 0x40000

    .line 231
    invoke-direct {p0, p1, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 299
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 301
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string/jumbo v1, "password_confirmed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 302
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const-string/jumbo v1, "waiting_for_confirmation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    iget v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    const-string v1, "encrypt_requested_quality"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    iget-boolean p0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    const-string v0, "encrypt_requested_disabled"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method updateUnlockMethodAndFinish(IIZ)V
    .locals 8

    .line 507
    iget-boolean p3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz p3, :cond_6

    .line 511
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v2

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 p1, 0x20000

    const/16 p3, 0x66

    if-lt v2, p1, :cond_2

    .line 515
    iget-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p1

    .line 519
    :goto_0
    iget-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 521
    iget-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz p1, :cond_1

    .line 522
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    .line 525
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_1
    const-string v0, "extra_pin_length"

    .line 528
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, p1, p3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_2
    const/high16 p1, 0x10000

    if-ne v2, p1, :cond_4

    .line 532
    iget-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz p1, :cond_3

    .line 533
    iget-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-wide v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object p1

    goto :goto_2

    .line 536
    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    iget-object p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 539
    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    .line 541
    iget-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/settings/InvisibleApi;->clearLock(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    const/4 p2, 0x0

    .line 543
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    .line 542
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 544
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintTemplates()V

    .line 545
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeFaceRecognitionIfExist()V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_3

    .line 549
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintTemplates()V

    .line 550
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeFaceRecognitionIfExist()V

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :goto_3
    return-void

    .line 508
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried to update password without confirming it"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 1

    const/4 v0, 0x4

    .line 494
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IIZ)V

    return-void
.end method
