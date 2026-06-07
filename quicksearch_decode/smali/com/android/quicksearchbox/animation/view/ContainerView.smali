.class public Lcom/android/quicksearchbox/animation/view/ContainerView;
.super Landroid/widget/FrameLayout;
.source "ContainerView.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/android/quicksearchbox/animation/view/ForegroundView;

.field public c:Lcom/android/quicksearchbox/animation/view/BackgroundView;

.field public d:F

.field public e:J

.field public f:J

.field public g:F

.field public h:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/animation/view/ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quicksearchbox/animation/view/ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-class p1, Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x7f0b0021

    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/animation/view/BackgroundView;

    iput-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->c:Lcom/android/quicksearchbox/animation/view/BackgroundView;

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->c:Lcom/android/quicksearchbox/animation/view/BackgroundView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0b0042

    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/animation/view/ForegroundView;

    iput-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->b:Lcom/android/quicksearchbox/animation/view/ForegroundView;

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->b:Lcom/android/quicksearchbox/animation/view/ForegroundView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/android/quicksearchbox/animation/view/ContainerView$a;

    invoke-direct {p2, p0}, Lcom/android/quicksearchbox/animation/view/ContainerView$a;-><init>(Lcom/android/quicksearchbox/animation/view/ContainerView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/animation/view/ContainerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->h:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/animation/view/ContainerView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/animation/view/ContainerView;I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/animation/view/ContainerView;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 18
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    const-string v1, "mContainerView.init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->c:Lcom/android/quicksearchbox/animation/view/BackgroundView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/animation/view/BackgroundView;->a()V

    .line 21
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->b:Lcom/android/quicksearchbox/animation/view/ForegroundView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/animation/view/ForegroundView;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 9
    iget v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    const/high16 v1, 0x43960000    # 300.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    sget-boolean v1, Lb/a/a/c1/c;->e:Z

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyWindow! mDY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", show = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    .line 12
    invoke-static {}, Lb/a/a/c1/a;->h()V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 13
    iget p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    const/16 p1, 0x8

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    invoke-virtual {p0}, Lcom/android/quicksearchbox/animation/view/ContainerView;->b()V

    .line 16
    sget-boolean p1, Lb/a/a/c1/c;->e:Z

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    const-string v0, "Window hide!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->c:Lcom/android/quicksearchbox/animation/view/BackgroundView;

    iget v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/animation/view/BackgroundView;->a(F)V

    .line 7
    iget p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    const/high16 v0, 0x43160000    # 150.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->b:Lcom/android/quicksearchbox/animation/view/ForegroundView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/animation/view/ForegroundView;->b(F)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    .line 18
    iput v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->g:F

    .line 19
    iget-object v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->b:Lcom/android/quicksearchbox/animation/view/ForegroundView;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/animation/view/ForegroundView;->a()V

    .line 20
    iget-object v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->c:Lcom/android/quicksearchbox/animation/view/BackgroundView;

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/animation/view/BackgroundView;->a(F)V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->e:J

    .line 22
    iput-wide v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->f:J

    .line 23
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->h:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 24
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    const-string v1, "initDY -> stop animation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 27
    :cond_1
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDY mDY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mPreLocationY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->g:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final b(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->h:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/16 v0, 0x12c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v0, :cond_3

    .line 3
    iget v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-nez v4, :cond_2

    new-array v0, v3, [F

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5
    sget-boolean v1, Lb/a/a/c1/a;->e:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x15e

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x12c

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    :goto_0
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_2
    new-array v3, v3, [F

    aput v0, v3, v2

    int-to-float v0, p1

    aput v0, v3, v1

    .line 9
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/high16 v1, 0x43960000    # 300.0f

    .line 10
    iget v2, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_3
    new-array v0, v3, [F

    .line 11
    iget v3, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    aput v3, v0, v2

    int-to-float v2, p1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 12
    iget v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    :goto_1
    new-instance v1, Lb/a/a/c1/h/b;

    invoke-direct {v1, p0}, Lb/a/a/c1/h/b;-><init>(Lcom/android/quicksearchbox/animation/view/ContainerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    new-instance v1, Lcom/android/quicksearchbox/animation/view/ContainerView$b;

    invoke-direct {v1, p0, p1}, Lcom/android/quicksearchbox/animation/view/ContainerView$b;-><init>(Lcom/android/quicksearchbox/animation/view/ContainerView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->h:Landroid/animation/ValueAnimator;

    .line 16
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43960000    # 300.0f
    .end array-data
.end method

.method public synthetic c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lb/a/a/c1/g/c;->a(Z)V

    .line 2
    invoke-static {p0}, Lb/a/a/c1/g/c;->a(Landroid/view/View;)Z

    const/16 v0, 0x12c

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/animation/view/ContainerView;->b(I)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->b:Lcom/android/quicksearchbox/animation/view/ForegroundView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/quicksearchbox/animation/view/ForegroundView;->b()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lb/a/a/c1/a;->d()V

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->e:J

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    new-instance v0, Lb/a/a/c1/h/a;

    invoke-direct {v0, p0}, Lb/a/a/c1/h/a;-><init>(Lcom/android/quicksearchbox/animation/view/ContainerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    sget-boolean v1, Lb/a/a/c1/c;->e:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent event action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    const/high16 v2, 0x43960000    # 300.0f

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->g:F

    float-to-double v0, v0

    const-wide/16 v3, 0x0

    cmpl-double v0, v0, v3

    const-string v1, ", mDY = "

    const-string v3, ", event.getY() = "

    if-nez v0, :cond_3

    .line 4
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent() -> MotionEvent.ACTION_MOVE init mPreLocationY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->g:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->g:F

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->g:F

    sub-float/2addr v0, v4

    .line 10
    sget-boolean v4, Lb/a/a/c1/c;->f:Z

    if-eqz v4, :cond_4

    .line 11
    iget-object v4, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() -> MotionEvent.ACTION_MOVE mPreLocationY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->g:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", dy = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->g:F

    .line 15
    iget-object v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->h:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 17
    :cond_5
    iget v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    .line 18
    iget v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    .line 19
    iput v2, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    .line 20
    :cond_6
    iget v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    .line 21
    iput v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    .line 22
    :cond_7
    sget-boolean v0, Lb/a/a/c1/c;->f:Z

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent() -> MotionEvent.ACTION_MOVE updateBackgroundView mDY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->c:Lcom/android/quicksearchbox/animation/view/BackgroundView;

    iget v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/animation/view/BackgroundView;->a(F)V

    .line 25
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->b:Lcom/android/quicksearchbox/animation/view/ForegroundView;

    iget v1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/animation/view/ForegroundView;->b(F)V

    goto/16 :goto_0

    .line 26
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->f:J

    .line 27
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_a

    .line 28
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent() -> MotionEvent.ACTION_UP mDY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", durationTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->f:J

    iget-wide v5, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->e:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_a
    iget v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->d:F

    cmpl-float v1, v0, v2

    const/16 v2, 0x12c

    if-ltz v1, :cond_b

    .line 30
    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/animation/view/ContainerView;->a(I)V

    goto :goto_0

    :cond_b
    const/high16 v1, 0x43160000    # 150.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    .line 31
    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/animation/view/ContainerView;->b(I)V

    goto :goto_0

    .line 32
    :cond_c
    iget-wide v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->f:J

    iget-wide v3, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->e:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0xc8

    cmp-long v0, v0, v3

    if-gez v0, :cond_d

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/animation/view/ContainerView;->b(I)V

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/animation/view/ContainerView;->b(I)V

    goto :goto_0

    .line 35
    :cond_e
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_f

    .line 36
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \nActionMasked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nLocation     = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], \nPointerCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->g:F

    .line 42
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView;->h:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_10

    .line 43
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 44
    :cond_10
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    invoke-static {}, Lb/a/a/c1/e;->a()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    if-ne p2, p1, :cond_1

    .line 3
    invoke-static {}, Lb/a/a/c1/e;->b()V

    :cond_1
    :goto_0
    return-void
.end method
