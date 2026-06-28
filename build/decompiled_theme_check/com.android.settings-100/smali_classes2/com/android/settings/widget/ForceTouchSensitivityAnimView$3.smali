.class Lcom/android/settings/widget/ForceTouchSensitivityAnimView$3;
.super Ljava/lang/Object;
.source "ForceTouchSensitivityAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->getRadiationAnim()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$3;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 365
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$3;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    invoke-static {p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->access$500(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 366
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$3;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    invoke-static {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->access$500(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
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
