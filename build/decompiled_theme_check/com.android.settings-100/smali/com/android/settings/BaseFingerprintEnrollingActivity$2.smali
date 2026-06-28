.class Lcom/android/settings/BaseFingerprintEnrollingActivity$2;
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

    .line 159
    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 162
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iput-boolean v0, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsClickBackButton:Z

    .line 164
    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 166
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "skip_fingerprint"

    .line 167
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object v0, v0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTarget:Ljava/lang/String;

    const-string v1, "create_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->setResult(ILandroid/content/Intent;)V

    .line 173
    :goto_0
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->finish()V

    return-void
.end method
