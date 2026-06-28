.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$14;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->playDotShakeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .line 1698
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$14;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

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

    .line 1707
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$14;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$800(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;IZ)V

    .line 1708
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$14;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$4300(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1709
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$14;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$4402(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1710
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$14;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$600(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$14;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$900(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
