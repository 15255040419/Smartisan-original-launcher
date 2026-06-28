.class Lcom/android/settings/widget/ForceTouchSensitivityAnimView$2;
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

    .line 329
    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$2;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 332
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$2;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    invoke-static {p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->access$400(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$2;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    invoke-static {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->access$300(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
