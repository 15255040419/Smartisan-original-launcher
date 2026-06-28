.class public Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
.super Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingRevealAnimator"
.end annotation


# instance fields
.field private final dot:I

.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    .line 854
    invoke-direct {p0, p1, p3}, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    .line 855
    iput p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->dot:I

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 856
    fill-array-data p2, :array_0

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->setFloatValues([F)V

    .line 857
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$700(Lcom/android/settings/widget/DotsPageIndicator;)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 858
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$800(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 860
    new-instance p2, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 869
    new-instance p2, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$2;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3727c5ac    # 1.0E-5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1700(Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)I
    .locals 0

    .line 849
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->dot:I

    return p0
.end method
