.class Lcom/android/settings/BaseFingerprintEnrollingActivity$6;
.super Ljava/lang/Object;
.source "BaseFingerprintEnrollingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateUI()V
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

    .line 383
    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$6;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 386
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$6;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ERROR:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    if-ne p1, v0, :cond_0

    .line 387
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$6;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mFingerprintAnimView:Lcom/android/settings/widget/BaseFingerprintAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->setStatus(I)V

    .line 388
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$6;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->retryEnrolling()V

    .line 389
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$6;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ENROLLING:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    iput-object v0, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mCurrentStep:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    .line 390
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$6;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->updateUI()V

    :cond_0
    return-void
.end method
