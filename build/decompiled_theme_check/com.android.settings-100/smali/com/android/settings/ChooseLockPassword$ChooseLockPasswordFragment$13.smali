.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$13;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->playHeaderTextViewAnim()V
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

    .line 1669
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$13;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1678
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$13;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$4202(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1679
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$13;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$600(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
