.class Lcom/android/settings/BaseFingerprintEnrollingActivity$3;
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

    .line 186
    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isAddFaceDataAllowable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->turnToFaceRecognitionEnrollActivity()V

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-boolean p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsFromSetupWizard:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-boolean p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsFromWallet:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-boolean p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFirstFingerprint:Z

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->turnToFingerprintManage()V

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-static {p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->access$100(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V

    .line 196
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$3;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
