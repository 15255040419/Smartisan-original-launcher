.class Landroid/support/v4/widget/CircularProgressDrawable$2;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/CircularProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CircularProgressDrawable;Landroid/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

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
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Landroid/support/v4/widget/CircularProgressDrawable;->access$100(Landroid/support/v4/widget/CircularProgressDrawable;FLandroid/support/v4/widget/CircularProgressDrawable$Ring;Z)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->goToNextColor()V

    .line 4
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->access$300(Landroid/support/v4/widget/CircularProgressDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->access$302(Landroid/support/v4/widget/CircularProgressDrawable;Z)Z

    .line 6
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v2, 0x534

    .line 7
    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 9
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->val$ring:Landroid/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {p0}, Landroid/support/v4/widget/CircularProgressDrawable;->access$200(Landroid/support/v4/widget/CircularProgressDrawable;)F

    move-result p1

    add-float/2addr p1, v2

    invoke-static {p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->access$202(Landroid/support/v4/widget/CircularProgressDrawable;F)F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/widget/CircularProgressDrawable$2;->this$0:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->access$202(Landroid/support/v4/widget/CircularProgressDrawable;F)F

    return-void
.end method
