.class public Li/t/a;
.super Ljava/lang/Object;
.source "BarsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/t/a$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lsmartisan/widget/R$dimen;->bar_and_bottom_sheet_extra_space:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    int-to-float v0, v0

    aput v0, v2, v1

    const/4 v0, 0x1

    int-to-float p1, p1

    aput p1, v2, v0

    .line 4
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 5
    new-instance v0, Li/t/a$a;

    invoke-direct {v0, p0}, Li/t/a$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Li/t/a$c;
    .locals 2

    .line 1
    new-instance v0, Li/t/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li/t/a$c;-><init>(Landroid/content/Context;Li/t/a$a;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-static {p0, v0}, Li/t/a;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Li/t/a$b;

    invoke-direct {p1}, Li/t/a$b;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
