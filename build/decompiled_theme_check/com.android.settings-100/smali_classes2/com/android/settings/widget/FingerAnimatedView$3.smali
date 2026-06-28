.class Lcom/android/settings/widget/FingerAnimatedView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerAnimatedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/FingerAnimatedView;->startEndAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/FingerAnimatedView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/FingerAnimatedView;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/settings/widget/FingerAnimatedView$3;->this$0:Lcom/android/settings/widget/FingerAnimatedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/widget/FingerAnimatedView$3;->this$0:Lcom/android/settings/widget/FingerAnimatedView;

    invoke-static {p1}, Lcom/android/settings/widget/FingerAnimatedView;->access$000(Lcom/android/settings/widget/FingerAnimatedView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/android/settings/widget/FingerAnimatedView$3;->this$0:Lcom/android/settings/widget/FingerAnimatedView;

    invoke-static {p1}, Lcom/android/settings/widget/FingerAnimatedView;->access$100(Lcom/android/settings/widget/FingerAnimatedView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 157
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView$3;->this$0:Lcom/android/settings/widget/FingerAnimatedView;

    invoke-static {p0}, Lcom/android/settings/widget/FingerAnimatedView;->access$200(Lcom/android/settings/widget/FingerAnimatedView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 165
    iget-object p1, p0, Lcom/android/settings/widget/FingerAnimatedView$3;->this$0:Lcom/android/settings/widget/FingerAnimatedView;

    invoke-static {p1}, Lcom/android/settings/widget/FingerAnimatedView;->access$000(Lcom/android/settings/widget/FingerAnimatedView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/android/settings/widget/FingerAnimatedView$3;->this$0:Lcom/android/settings/widget/FingerAnimatedView;

    invoke-static {p1}, Lcom/android/settings/widget/FingerAnimatedView;->access$100(Lcom/android/settings/widget/FingerAnimatedView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 167
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView$3;->this$0:Lcom/android/settings/widget/FingerAnimatedView;

    invoke-static {p0}, Lcom/android/settings/widget/FingerAnimatedView;->access$200(Lcom/android/settings/widget/FingerAnimatedView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
