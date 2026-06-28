.class Lcom/android/settings/widget/FingerAnimatedView$4;
.super Ljava/lang/Object;
.source "FingerAnimatedView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 172
    iput-object p1, p0, Lcom/android/settings/widget/FingerAnimatedView$4;->this$0:Lcom/android/settings/widget/FingerAnimatedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView$4;->this$0:Lcom/android/settings/widget/FingerAnimatedView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/widget/FingerAnimatedView;->access$302(Lcom/android/settings/widget/FingerAnimatedView;F)F

    return-void
.end method
