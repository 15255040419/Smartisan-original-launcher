.class Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    return-void
.end method
