.class Lcom/android/settings/BaseFingerprintEnrollingActivity$1;
.super Landroid/os/Handler;
.source "BaseFingerprintEnrollingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BaseFingerprintEnrollingActivity;
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

    .line 84
    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 87
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 101
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-boolean p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsFromSetupWizard:Z

    if-eqz p1, :cond_1

    .line 102
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->access$000(Lcom/android/settings/BaseFingerprintEnrollingActivity;I)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->finish()V

    goto :goto_0

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-boolean p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mIsFingerPressing:Z

    if-eqz p1, :cond_4

    .line 91
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->clearTipsAnimation()V

    .line 92
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {p1}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->isFrontFingerPrint()Z

    move-result p1

    if-nez p1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-virtual {v0}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    const v0, 0x7f12080a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p1, p1, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mTextTips:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/BaseFingerprintEnrollingActivity;->getAlphaAnimation(FFJI)Landroid/view/animation/AlphaAnimation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_0
    return-void
.end method
