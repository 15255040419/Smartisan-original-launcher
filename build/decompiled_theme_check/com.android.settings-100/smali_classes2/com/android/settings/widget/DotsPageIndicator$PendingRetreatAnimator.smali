.class public Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;
.super Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingRetreatAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
    .locals 7

    .line 759
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    .line 760
    invoke-direct {p0, p1, p5}, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    .line 761
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$700(Lcom/android/settings/widget/DotsPageIndicator;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 762
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$800(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/view/animation/Interpolator;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-le p3, p2, :cond_0

    .line 767
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object p5

    aget p5, p5, p2

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$300(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p5

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v0

    goto :goto_0

    .line 768
    :cond_0
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object p5

    aget p5, p5, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v0

    :goto_0
    sub-float/2addr p5, v0

    move v4, p5

    if-le p3, p2, :cond_1

    .line 769
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object p5

    aget p5, p5, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v0

    goto :goto_1

    .line 770
    :cond_1
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object p5

    aget p5, p5, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v0

    :goto_1
    sub-float/2addr p5, v0

    if-le p3, p2, :cond_2

    .line 771
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget v0, v0, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    goto :goto_2

    .line 772
    :cond_2
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget v0, v0, p2

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$300(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v1

    :goto_2
    add-float/2addr v0, v1

    move v5, v0

    if-le p3, p2, :cond_3

    .line 773
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget p3, v0, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v0

    goto :goto_3

    .line 774
    :cond_3
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v0

    aget p3, v0, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v0

    :goto_3
    add-float/2addr p3, v0

    .line 775
    new-array v0, p4, [Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->access$1102(Lcom/android/settings/widget/DotsPageIndicator;[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    .line 780
    new-array v3, p4, [I

    cmpl-float v0, v4, p5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    new-array p3, v1, [F

    aput v4, p3, v6

    aput p5, p3, v2

    .line 782
    invoke-virtual {p0, p3}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setFloatValues([F)V

    :goto_4
    if-ge v6, p4, :cond_4

    .line 785
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1100(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    move-result-object p3

    new-instance p5, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    add-int v0, p2, v6

    new-instance v1, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;

    .line 786
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v2

    aget v2, v2, v0

    invoke-direct {v1, p1, v2}, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    invoke-direct {p5, p1, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    aput-object p5, p3, v6

    .line 787
    aput v0, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 789
    :cond_4
    new-instance p2, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_6

    :cond_5
    new-array p5, v1, [F

    aput v5, p5, v6

    aput p3, p5, v2

    .line 802
    invoke-virtual {p0, p5}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setFloatValues([F)V

    :goto_5
    if-ge v6, p4, :cond_6

    .line 805
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$1100(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    move-result-object p3

    new-instance p5, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    sub-int v0, p2, v6

    new-instance v1, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    .line 806
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v2

    aget v2, v2, v0

    invoke-direct {v1, p1, v2}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    invoke-direct {p5, p1, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    aput-object p5, p3, v6

    .line 807
    aput v0, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 809
    :cond_6
    new-instance p2, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 823
    :goto_6
    new-instance p2, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;Lcom/android/settings/widget/DotsPageIndicator;[IFF)V

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
