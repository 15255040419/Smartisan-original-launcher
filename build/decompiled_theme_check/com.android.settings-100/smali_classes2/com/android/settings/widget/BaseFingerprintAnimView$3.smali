.class Lcom/android/settings/widget/BaseFingerprintAnimView$3;
.super Ljava/lang/Object;
.source "BaseFingerprintAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/BaseFingerprintAnimView;->playAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/BaseFingerprintAnimView;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$3;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 226
    iget-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$3;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget v0, p1, Lcom/android/settings/widget/BaseFingerprintAnimView;->mRunningAnimCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/settings/widget/BaseFingerprintAnimView;->mRunningAnimCount:I

    .line 227
    iget-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$3;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget p1, p1, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCurrentStep:I

    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$3;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget v0, v0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mMaxStep:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$3;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget p1, p1, Lcom/android/settings/widget/BaseFingerprintAnimView;->mRunningAnimCount:I

    if-nez p1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$3;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xb

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$3;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mRunningAnimCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mRunningAnimCount:I

    return-void
.end method
