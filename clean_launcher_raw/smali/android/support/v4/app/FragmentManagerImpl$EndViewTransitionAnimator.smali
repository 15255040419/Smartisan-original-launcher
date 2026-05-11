.class Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;
.super Landroid/view/animation/AnimationSet;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    .line 3
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mChild:Landroid/view/View;

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p0, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    xor-int/2addr p0, v1

    return p0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    .line 5
    iget-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    :cond_1
    return v1
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 2

    .line 6
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget-boolean p0, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    xor-int/2addr p0, v1

    return p0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    .line 10
    iget-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    :cond_1
    return v1
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    return-void
.end method
