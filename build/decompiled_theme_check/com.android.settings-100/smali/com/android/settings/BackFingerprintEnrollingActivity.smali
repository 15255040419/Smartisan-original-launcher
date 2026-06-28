.class public Lcom/android/settings/BackFingerprintEnrollingActivity;
.super Lcom/android/settings/BaseFingerprintEnrollingActivity;
.source "BackFingerprintEnrollingActivity.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
.implements Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;


# instance fields
.field mEnrollingLayout:Landroid/view/View;

.field mFindSensorLayout:Landroid/widget/LinearLayout;

.field private mSetupForPayment:Landroid/widget/TextView;

.field private mSetupForPaymentDialog:Landroid/app/AlertDialog;

.field mTextProgress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BackFingerprintEnrollingActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->showSetupForPaymentDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/BackFingerprintEnrollingActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->gotoSetupForPayment()V

    return-void
.end method

.method private areAllPaymentWaysFingerprintSetted()Z
    .locals 7

    const-string v0, "fingerprint"

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    .line 107
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    move v3, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "quick_app_via_fingerprint_id_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/settings/InvisibleApi;->getFingerId(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v5, "com.eg.android.AlipayGphone"

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    move v1, v6

    goto :goto_1

    :cond_4
    const-string v5, "com.tencent.mm"

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v6

    :cond_5
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    return v6

    :cond_6
    return v2
.end method

.method private getAlphaAnimation(FF)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 177
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p1, 0x96

    .line 178
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object p0
.end method

.method private getLastCompletedFingerprintID()I
    .locals 1

    const-string v0, "fingerprint"

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 154
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {p0}, Lcom/android/settings/InvisibleApi;->getFingerId(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private getProgress(II)I
    .locals 1

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    sub-int p2, p1, p2

    .line 187
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    .line 188
    div-int/2addr p0, p1

    return p0
.end method

.method private gotoSetupForPayment()V
    .locals 3

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings$FingerprintSetupForPaymentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getLastCompletedFingerprintID()I

    move-result v1

    const-string v2, "extra_fingerprint_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "password_confirmed"

    const/4 v2, 0x1

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private playEnrollingProgressAnim()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 162
    iget-object v2, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v2

    sub-int v2, v0, v2

    if-lez v0, :cond_1

    const v0, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 164
    invoke-direct {p0, v0, v3}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getAlphaAnimation(FF)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    if-ne v2, v1, :cond_0

    const-wide/16 v1, 0x96

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextProgress:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private setSetupForPaymentTextView()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPayment:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mIsFromSetupWizard:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->isFingerprintEnrolled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->areAllPaymentWaysFingerprintSetted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPayment:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPayment:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120825

    invoke-virtual {p0, v1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120a9e

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 79
    new-instance v2, Lcom/android/settings/BackFingerprintEnrollingActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/BackFingerprintEnrollingActivity$1;-><init>(Lcom/android/settings/BackFingerprintEnrollingActivity;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 79
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPayment:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPayment:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPayment:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    .line 69
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPayment:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showSetupForPaymentDialog()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPaymentDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120fe5

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00e0

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12046e

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1208c3

    new-instance v2, Lcom/android/settings/BackFingerprintEnrollingActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/BackFingerprintEnrollingActivity$2;-><init>(Lcom/android/settings/BackFingerprintEnrollingActivity;)V

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPaymentDialog:Landroid/app/AlertDialog;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPaymentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object p0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPaymentDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getContentLayout()I
    .locals 0

    const p0, 0x7f0d0119

    return p0
.end method

.method protected getCorrectImageResource()I
    .locals 0

    const p0, 0x7f0804ab

    return p0
.end method

.method protected getDefaultTips()I
    .locals 0

    const p0, 0x7f120784

    return p0
.end method

.method protected getErrorImageResource()I
    .locals 0

    const p0, 0x7f0804ae

    return p0
.end method

.method protected isFrontFingerPrint()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a02e1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mFindSensorLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a02ae

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mEnrollingLayout:Landroid/view/View;

    const p1, 0x7f0a074f

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextProgress:Landroid/widget/TextView;

    const p1, 0x7f0a0818

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSetupForPayment:Landroid/widget/TextView;

    .line 57
    invoke-direct {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->setSetupForPaymentTextView()V

    const p1, 0x7f0a09b0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isFingerprintSensorInBackside()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120808

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected onFingerprintEnrollDone()V
    .locals 1

    .line 297
    invoke-super {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->onFingerprintEnrollDone()V

    .line 298
    iget-object p0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected updateTipsView(ILjava/lang/CharSequence;)V
    .locals 6

    .line 235
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    .line 236
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x6c

    const-string v3, "mIsFingerPressing "

    const-string v4, "Fingerprint"

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x452

    if-eq p1, v0, :cond_1

    const/16 v0, 0x44e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x44f

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_1
    const p1, 0x7f120823

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 247
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mIsFingerPressing:Z

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mIsFingerPressing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f12080a

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f120784

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    move v1, v2

    goto :goto_1

    .line 242
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mIsFingerPressing:Z

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mIsFingerPressing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const p1, 0x7f12080f

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 263
    :cond_5
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 264
    iget-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 265
    iget-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_6

    .line 267
    iget-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060059

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getAlphaAnimation(FFJI)Landroid/view/animation/AlphaAnimation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 270
    :cond_6
    iget-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f06005a

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected updateUI()V
    .locals 5

    .line 192
    invoke-super {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateUI()V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/android/settings/BackFingerprintEnrollingActivity$3;->$SwitchMap$com$android$settings$BaseFingerprintEnrollingActivity$STEP:[I

    iget-object v1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    invoke-virtual {v1}, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextProgress:Landroid/widget/TextView;

    const v1, 0x7f120787

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextProgress:Landroid/widget/TextView;

    const v1, 0x7f120788

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mEnrollingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mFindSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 211
    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v3

    .line 210
    invoke-direct {p0, v0, v3}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getProgress(II)I

    move-result v0

    const v3, 0x7f120782

    new-array v1, v1, [Ljava/lang/Object;

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->playEnrollingProgressAnim()V

    goto :goto_1

    .line 196
    :cond_3
    invoke-static {p0}, Lcom/android/settings/Utils;->isFingerprintExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mEnrollingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mFindSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mEnrollingLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mFindSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity;->mTextProgress:Landroid/widget/TextView;

    const v1, 0x7f120fdc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->setSetupForPaymentTextView()V

    return-void
.end method
