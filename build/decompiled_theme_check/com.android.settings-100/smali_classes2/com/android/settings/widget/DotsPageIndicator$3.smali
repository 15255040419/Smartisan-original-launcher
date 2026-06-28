.class Lcom/android/settings/widget/DotsPageIndicator$3;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator;->createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$3;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$3;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$302(Lcom/android/settings/widget/DotsPageIndicator;F)F

    .line 608
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$3;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$400(Lcom/android/settings/widget/DotsPageIndicator;)Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$3;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {v0}, Lcom/android/settings/widget/DotsPageIndicator;->access$300(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->startIfNecessary(F)V

    .line 609
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$3;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method
