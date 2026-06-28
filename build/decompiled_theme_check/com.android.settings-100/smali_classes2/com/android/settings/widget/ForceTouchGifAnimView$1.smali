.class Lcom/android/settings/widget/ForceTouchGifAnimView$1;
.super Ljava/lang/Object;
.source "ForceTouchGifAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/ForceTouchGifAnimView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ForceTouchGifAnimView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ForceTouchGifAnimView;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView$1;->this$0:Lcom/android/settings/widget/ForceTouchGifAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 188
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView$1;->this$0:Lcom/android/settings/widget/ForceTouchGifAnimView;

    invoke-static {p1}, Lcom/android/settings/widget/ForceTouchGifAnimView;->access$000(Lcom/android/settings/widget/ForceTouchGifAnimView;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/settings/widget/ForceTouchGifAnimView$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/ForceTouchGifAnimView$1$1;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
