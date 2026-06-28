.class Lcom/android/settings/BaseFingerprintEnrollingActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseFingerprintEnrollingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseFingerprintEnrollingActivity;->playEnrollFinishAnim()V
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

    .line 584
    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$7;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$7;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object v0, v0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->INIT:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$7;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object v0, v0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ENROLLING:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$7;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mResultIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 588
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    return-void
.end method
