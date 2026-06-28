.class Lcom/android/settings/BaseFingerprintEnrollingActivity$4;
.super Ljava/lang/Object;
.source "BaseFingerprintEnrollingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseFingerprintEnrollingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ERROR:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->DONE:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    if-ne p1, v0, :cond_2

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->DONE:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    if-ne p1, v0, :cond_1

    const-string p1, "A130022"

    .line 206
    invoke-static {p1}, Lcom/android/settings/SettingsTracker;->onEvent(Ljava/lang/String;)V

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCompletedBtn:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mAddAnotherTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mFingerprintAnimView:Lcom/android/settings/widget/BaseFingerprintAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->setStatus(I)V

    .line 211
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 212
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->retryEnrolling()V

    .line 213
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->INIT:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    iput-object v0, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    .line 214
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$4;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateUI()V

    :cond_2
    return-void
.end method
