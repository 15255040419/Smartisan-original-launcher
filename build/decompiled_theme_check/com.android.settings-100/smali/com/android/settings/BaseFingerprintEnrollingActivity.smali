.class public abstract Lcom/android/settings/BaseFingerprintEnrollingActivity;
.super Lcom/android/settings/BaseActivity;
.source "BaseFingerprintEnrollingActivity.java"

# interfaces
.implements Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;
.implements Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;
    }
.end annotation


# static fields
.field protected static final CONFIRM_REQUEST:I = 0x1

.field protected static final DELAY_TIME_OF_PROMPT:I = 0x3e8

.field protected static final EVENT_ENROLLING_PROGRESS_CHANGED:I = 0x6c

.field public static final EVENT_ENROLLMENT_HELP_MSG_CODE:I = 0x6

.field public static final EXTRA_PWD:Ljava/lang/String; = "extra_pwd"

.field protected static final MSG_FINISH_ACTIVITY:I = 0x2

.field protected static final MSG_PROMPT_FINGER_UP:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "Fingerprint"

.field protected static final TAG_SIDECAR:Ljava/lang/String; = "sidecar"


# instance fields
.field protected isFirstFingerprint:Z

.field protected mAddAnotherTv:Landroid/widget/TextView;

.field protected mCompletedBtn:Landroid/widget/Button;

.field protected mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

.field protected mEnrollResultImage:Landroid/widget/ImageView;

.field protected mEnrollingFaceRecognitionData:Z

.field protected mFingerprintAnimView:Lcom/android/settings/widget/BaseFingerprintAnimView;

.field protected mFingerprintProgressIllustration:Landroid/widget/FrameLayout;

.field protected mHandler:Landroid/os/Handler;

.field protected mIsClickBackButton:Z

.field protected mIsFingerPressing:Z

.field protected mIsFromSetupWizard:Z

.field protected mIsFromWallet:Z

.field protected mLastRemainCount:I

.field protected mLockedFingerNum:I

.field protected mMaxFingerNum:I

.field protected mPassword:Ljava/lang/String;

.field protected mResultIcon:Landroid/widget/ImageView;

.field protected mRightBtn:Landroid/view/View;

.field protected mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

.field protected mTarget:Ljava/lang/String;

.field protected mTextTips:Landroid/widget/TextView;

.field protected mToken:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    .line 61
    sget v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->MAX_ENROLL_STEP:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLastRemainCount:I

    .line 81
    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->INIT:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    iput-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    .line 84
    new-instance v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;-><init>(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V

    iput-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BaseFingerprintEnrollingActivity;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->turnToSetupWizardCompleteActivity(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->turnOnDefaultFingerprintSettings()V

    return-void
.end method

.method private addSideCar()V
    .locals 4

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 247
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    sget-object v2, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->EXTRA_TOKEN:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mToken:[B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 251
    iget-object v2, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v2, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setArguments(Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    return-void
.end method

.method private varargs contains(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 473
    array-length v0, p2

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 474
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method private getResultImageResource(ZZ)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const p0, 0x7f0804ad

    return p0

    :cond_0
    const p0, 0x7f0804b0

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f0804ac

    return p0

    :cond_2
    const p0, 0x7f0804af

    return p0
.end method

.method private launchConfirmLock()V
    .locals 9

    .line 324
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 325
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f1211b4

    .line 327
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x2

    .line 326
    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->finish()V

    :cond_0
    return-void
.end method

.method public static launchFingerprintEnrollingActivity(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .line 622
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportFrontFP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/FrontFingerprintEnrollingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 625
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/BackFingerprintEnrollingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method private shouldFilterMsg(ILjava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const p1, 0x7f120828

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f120827

    .line 463
    invoke-virtual {p0, v1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120829

    .line 464
    invoke-virtual {p0, v2}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    aput-object v1, v3, p1

    const/4 p1, 0x2

    aput-object v2, v3, p1

    .line 465
    invoke-direct {p0, p2, v3}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->contains(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private turnOnDefaultFingerprintSettings()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isPrivacyPasswordEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFirstFingerprint:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/PrivacySecurity;->getInstance(Landroid/content/Context;)Lcom/android/settings/PrivacySecurity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySecurity;->setFingerprintUnlock(Z)V

    :cond_0
    return-void
.end method

.method private turnToSetupWizardCompleteActivity(I)V
    .locals 4

    .line 317
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 318
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.smartisanos.setupwizard"

    const-string v3, "com.smartisanos.setupwizard.SetupWizardCompleteActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 320
    invoke-static {p0, v0, p1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected clearTipsAnimation()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 513
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method protected getAlphaAnimation(FFJI)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 308
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 309
    invoke-virtual {p0, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p1, 0x2

    .line 310
    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 311
    invoke-virtual {p0, p5}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 312
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method protected getCompletedBtnTextRes()I
    .locals 0

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isAddFaceDataAllowable()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f120d2c

    goto :goto_0

    :cond_0
    const p0, 0x7f120703

    :goto_0
    return p0
.end method

.method protected abstract getContentLayout()I
.end method

.method protected abstract getCorrectImageResource()I
.end method

.method protected abstract getDefaultTips()I
.end method

.method protected abstract getErrorImageResource()I
.end method

.method protected getScaleAnim(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p3, p0, v0

    const/4 p3, 0x1

    aput p4, p0, p3

    .line 603
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 604
    invoke-virtual {p0, p5, p6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 605
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 606
    invoke-virtual {p0, p7, p8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method protected isAddFaceDataAllowable()Z
    .locals 1

    .line 303
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isFaceRecognitionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsFromSetupWizard:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isFingerprintEnrolled()Z
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ENROLLED:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->DONE:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    if-ne p0, v0, :cond_0

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

.method protected abstract isFrontFingerPrint()Z
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 561
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "hw_auth_token"

    .line 564
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mToken:[B

    .line 565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " GET token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mToken:[B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fingerprint"

    invoke-static {p2, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->addSideCar()V

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimDone()V
    .locals 2

    .line 338
    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->DONE:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    iput-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    const-string v0, "Fingerprint"

    const-string v1, "onAnimDone..."

    .line 339
    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateUI()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 288
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isFingerprintNavigationDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFingerprintEnrolled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 295
    :cond_1
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getContentLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->setContentView(I)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isFingerprintExists(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFirstFingerprint:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_pwd"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mPassword:Ljava/lang/String;

    .line 120
    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceSetupComplete(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsFromSetupWizard:Z

    .line 121
    iget-boolean p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsFromSetupWizard:Z

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->setupReceiver()V

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsFromSetupWizard "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsFromSetupWizard:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Fingerprint"

    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "extra_source"

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->getStringExtraSafely(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_target"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getStringExtraSafely(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTarget:Ljava/lang/String;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , mTarget = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.smartisanos.wallet"

    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iput-boolean v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsFromWallet:Z

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mToken:[B

    .line 133
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mToken:[B

    if-nez p1, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->launchConfirmLock()V

    :cond_2
    const p1, 0x7f0a0312

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mFingerprintProgressIllustration:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0310

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mEnrollResultImage:Landroid/widget/ImageView;

    const p1, 0x7f0a0313

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mResultIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a02e2

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCompletedBtn:Landroid/widget/Button;

    .line 141
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCompletedBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getCompletedBtnTextRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 143
    iget-boolean p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsFromSetupWizard:Z

    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCompletedBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070200

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 147
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCompletedBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const p1, 0x7f0a0062

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mAddAnotherTv:Landroid/widget/TextView;

    const p1, 0x7f0a0311

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/BaseFingerprintAnimView;

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mFingerprintAnimView:Lcom/android/settings/widget/BaseFingerprintAnimView;

    .line 152
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mFingerprintAnimView:Lcom/android/settings/widget/BaseFingerprintAnimView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->setCallback(Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;)V

    const p1, 0x7f0a095d

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    .line 155
    invoke-static {}, Lcom/android/settings/Utils;->isEnglishLocale()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 156
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 158
    :cond_4
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    const v2, 0x20200a4

    invoke-virtual {p1, v2}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mBackView:Landroid/widget/ImageView;

    .line 159
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mBackView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/BaseFingerprintEnrollingActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity$2;-><init>(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "fingerprint"

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 178
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintHelper;->getMaxFingerprintPerUser(Landroid/content/res/Resources;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mMaxFingerNum:I

    if-nez p1, :cond_5

    goto :goto_0

    .line 180
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLockedFingerNum:I

    .line 181
    iget p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLockedFingerNum:I

    iget v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mMaxFingerNum:I

    if-lt p1, v0, :cond_6

    const-string/jumbo p1, "the finger num is overflow!"

    .line 182
    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_6
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCompletedBtn:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;-><init>(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mAddAnotherTv:Landroid/widget/TextView;

    new-instance v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;-><init>(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 612
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onDestroy()V

    .line 613
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mFingerprintAnimView:Lcom/android/settings/widget/BaseFingerprintAnimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/BaseFingerprintAnimView;->setCallback(Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;)V

    .line 614
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mFingerprintAnimView:Lcom/android/settings/widget/BaseFingerprintAnimView;

    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->recycleBitmaps()V

    return-void
.end method

.method public onEnrollmentError(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v0, -0x1

    .line 485
    iput v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLastRemainCount:I

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsClickBackButton:Z

    if-eqz v0, :cond_1

    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->INIT:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    if-ne v0, v1, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->retryEnrolling()V

    return-void

    .line 497
    :cond_2
    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ERROR:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    iput-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->setResult(I)V

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFrontFingerPrint()Z

    move-result v0

    if-nez v0, :cond_3

    .line 501
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->clearTipsAnimation()V

    .line 505
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getAlphaAnimation(FFJI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateUI()V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->shouldFilterMsg(ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateTipsView(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 4

    const/16 p1, 0x6c

    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateTipsView(ILjava/lang/CharSequence;)V

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastRemainCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLastRemainCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",remaining:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fingerprint"

    invoke-static {v0, p1}, Lsmartisanos/util/LogTag;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLastRemainCount:I

    if-ne p1, p2, :cond_1

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShowTips:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->isShowTips()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lsmartisanos/util/LogTag;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->isShowTips()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 523
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    const p2, 0x10402bf

    invoke-virtual {p0, p2}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string p0, "ignore refresh UI if same progress"

    .line 525
    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 528
    :cond_1
    iput p2, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLastRemainCount:I

    .line 529
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->INIT:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    .line 530
    sget-object p1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ENROLLING:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    .line 531
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateUI()V

    goto :goto_0

    .line 534
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateUI()V

    if-nez p2, :cond_3

    .line 536
    sget-object p1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ENROLLED:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->onFingerprintEnrollDone()V

    const/4 p1, -0x1

    .line 538
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->setResult(I)V

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateUI()V

    goto :goto_0

    .line 541
    :cond_3
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method protected onFingerprintEnrollDone()V
    .locals 4

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFingerprintEnrolled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFirstFingerprint:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "use_fingerprint_in_lockscreen"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    invoke-static {p0}, Lcom/android/settings/SettingsFeature;->isWalletFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "use_fingerprint_in_wallet"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 555
    :cond_0
    iget v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLockedFingerNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLockedFingerNum:I

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locked fingerprint count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLockedFingerNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Fingerprint"

    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 228
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ENROLLING:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    if-eq v0, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateUI()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 236
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onStart()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mToken:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->addSideCar()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 270
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onStop()V

    .line 271
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mToken:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->finish()V

    .line 277
    iget-boolean v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mEnrollingFaceRecognitionData:Z

    if-eqz v0, :cond_2

    const v0, 0x2030003

    const v1, 0x2030004

    .line 278
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 281
    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->overridePendingTransition(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected playEnrollFinishAnim()V
    .locals 13

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    iget-object v1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mEnrollResultImage:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 576
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 577
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 578
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v5, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mResultIcon:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v9, 0x96

    const-wide/16 v11, 0x96

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getScaleAnim(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 581
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v3, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mResultIcon:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleY"

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x96

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getScaleAnim(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 584
    new-instance v2, Lcom/android/settings/BaseFingerprintEnrollingActivity$7;

    invoke-direct {v2, p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity$7;-><init>(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 595
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 598
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 599
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected playEnrollingAnim()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 441
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getCurrentStep()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 442
    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v1

    sub-int v1, v0, v1

    .line 443
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playEnrollingAnim currentStep:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fingerprint"

    invoke-static {v3, v2}, Lsmartisanos/util/LogTag;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 445
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mFingerprintAnimView:Lcom/android/settings/widget/BaseFingerprintAnimView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->setStatus(I)V

    return-void

    :cond_1
    if-lez v0, :cond_2

    .line 449
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mFingerprintAnimView:Lcom/android/settings/widget/BaseFingerprintAnimView;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->playAnimation(II)V

    :cond_2
    return-void
.end method

.method protected retryEnrolling()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "Fingerprint"

    const-string/jumbo v1, "retryEnrolling"

    .line 259
    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$5;

    invoke-direct {v1, p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity$5;-><init>(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected turnToFaceRecognitionEnrollActivity()V
    .locals 3

    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mEnrollingFaceRecognitionData:Z

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/Settings$FaceRecognitionEnrollActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "password_confirmed"

    .line 430
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected turnToFingerprintManage()V
    .locals 3

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings$FingerprintManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    iget-object v1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mPassword:Ljava/lang/String;

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    iget-object v1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string/jumbo v2, "password_confirmed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 424
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract updateTipsView(ILjava/lang/CharSequence;)V
.end method

.method protected updateUI()V
    .locals 5

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    invoke-virtual {v0}, Lsmartisanos/widget/TitleBar;->removeAllRightViews()V

    .line 346
    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$8;->$SwitchMap$com$android$settings$BaseFingerprintEnrollingActivity$STEP:[I

    iget-object v1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    invoke-virtual {v1}, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v1, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    const v1, 0x7f1200c5

    invoke-virtual {v0, v3, v1}, Lsmartisanos/widget/TitleBar;->addRightButton(II)Lsmartisanos/widget/SmartisanButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mRightBtn:Landroid/view/View;

    .line 383
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mRightBtn:Landroid/view/View;

    new-instance v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$6;

    invoke-direct {v1, p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity$6;-><init>(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mEnrollResultImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getErrorImageResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mEnrollResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mResultIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFrontFingerPrint()Z

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getResultImageResource(ZZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->playEnrollFinishAnim()V

    goto/16 :goto_1

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mEnrollResultImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getCorrectImageResource()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mEnrollResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mResultIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFrontFingerPrint()Z

    move-result v4

    invoke-direct {p0, v4, v1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getResultImageResource(ZZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCompletedBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mAddAnotherTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mLockedFingerNum:I

    iget v4, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mMaxFingerNum:I

    if-ge v1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->playEnrollFinishAnim()V

    goto :goto_1

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getDefaultTips()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->clearTipsAnimation()V

    .line 364
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mEnrollResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mResultIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->playEnrollingAnim()V

    goto :goto_1

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mFingerprintAnimView:Lcom/android/settings/widget/BaseFingerprintAnimView;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/BaseFingerprintAnimView;->setStatus(I)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mEnrollResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mResultIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCompletedBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getDefaultTips()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mAddAnotherTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mAddAnotherTv:Landroid/widget/TextView;

    const v0, 0x7f1200df

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method
