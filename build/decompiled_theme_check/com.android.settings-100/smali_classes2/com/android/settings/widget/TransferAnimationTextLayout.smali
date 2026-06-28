.class public Lcom/android/settings/widget/TransferAnimationTextLayout;
.super Landroid/widget/LinearLayout;
.source "TransferAnimationTextLayout.java"


# static fields
.field private static final ANIMATION_DURATION:J = 0x96L

.field private static final FIXED_CHILD_COUNT:I = 0x2


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFirstView:Landroid/view/View;

.field private mSecondView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/TransferAnimationTextLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/TransferAnimationTextLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/TransferAnimationTextLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TransferAnimationTextLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/widget/TransferAnimationTextLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/TransferAnimationTextLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mFirstView:Landroid/view/View;

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/TransferAnimationTextLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mSecondView:Landroid/view/View;

    return-void

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong child count"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startTransferAnimation(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 8

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/widget/TransferAnimationTextLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mFirstView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 54
    iget-object v1, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mFirstView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    const/4 v5, 0x0

    aput v5, v3, v0

    const-string v5, "translationX"

    invoke-static {v1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 55
    iget-object v3, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mSecondView:Landroid/view/View;

    new-array v5, v2, [F

    fill-array-data v5, :array_0

    const-string v6, "alpha"

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 57
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 58
    iget-object v5, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 59
    iget-object v5, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v4

    aput-object v3, v2, v0

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    iget-object p0, p0, Lcom/android/settings/widget/TransferAnimationTextLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
