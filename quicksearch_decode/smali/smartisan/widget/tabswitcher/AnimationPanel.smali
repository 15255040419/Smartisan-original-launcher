.class public Lsmartisan/widget/tabswitcher/AnimationPanel;
.super Landroid/widget/FrameLayout;
.source "AnimationPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/tabswitcher/AnimationPanel$e;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/PointF;

.field public b:Landroid/graphics/PointF;

.field public c:Landroid/graphics/Paint;

.field public d:I

.field public e:Li/t/h/b;

.field public f:Li/t/h/b;

.field public final g:F

.field public h:Lsmartisan/widget/tabswitcher/Pickable;

.field public i:Lsmartisan/widget/tabswitcher/Putable;

.field public j:Lsmartisan/widget/tabswitcher/model/TabBrick;

.field public k:Lsmartisan/widget/tabswitcher/model/TabBrick;

.field public l:Z

.field public m:F

.field public n:F

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li/t/h/b;Li/t/h/b;F)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x190

    .line 2
    iput v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->d:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->p:Z

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 5
    iput-object p2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->e:Li/t/h/b;

    .line 6
    iput-object p3, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->f:Li/t/h/b;

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->c:Landroid/graphics/Paint;

    .line 8
    iput p4, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->g:F

    .line 9
    invoke-static {p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->o:I

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic a(Lsmartisan/widget/tabswitcher/AnimationPanel;FF)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(FF)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/tabswitcher/AnimationPanel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->q:Z

    return p0
.end method

.method public static synthetic a(Lsmartisan/widget/tabswitcher/AnimationPanel;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->p:Z

    return p1
.end method

.method public static synthetic b(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/Putable;
    .locals 0

    .line 2
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->i:Lsmartisan/widget/tabswitcher/Putable;

    return-object p0
.end method

.method public static synthetic b(Lsmartisan/widget/tabswitcher/AnimationPanel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->l:Z

    return p1
.end method

.method public static synthetic c(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->k:Lsmartisan/widget/tabswitcher/model/TabBrick;

    return-object p0
.end method

.method public static synthetic d(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/Pickable;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->h:Lsmartisan/widget/tabswitcher/Pickable;

    return-object p0
.end method

.method public static synthetic e(Lsmartisan/widget/tabswitcher/AnimationPanel;)Lsmartisan/widget/tabswitcher/model/TabBrick;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    return-object p0
.end method

.method public static synthetic f(Lsmartisan/widget/tabswitcher/AnimationPanel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->b()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/animation/Animator;
    .locals 3

    .line 29
    new-instance v0, Lsmartisan/widget/tabswitcher/AnimationPanel$c;

    invoke-direct {v0, p0}, Lsmartisan/widget/tabswitcher/AnimationPanel$c;-><init>(Lsmartisan/widget/tabswitcher/AnimationPanel;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 30
    iget p2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->d:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    new-instance p2, Lsmartisan/widget/tabswitcher/AnimationPanel$d;

    invoke-direct {p2, p0, p3}, Lsmartisan/widget/tabswitcher/AnimationPanel$d;-><init>(Lsmartisan/widget/tabswitcher/AnimationPanel;Landroid/graphics/PointF;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final a(Lsmartisan/widget/tabswitcher/model/TabBrick;)Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 26
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 27
    invoke-interface {p1}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->o:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 28
    :goto_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public final a()V
    .locals 2

    .line 22
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    invoke-virtual {p0, v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Lsmartisan/widget/tabswitcher/model/TabBrick;)Landroid/graphics/PointF;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->a:Landroid/graphics/PointF;

    invoke-virtual {p0, v1, v0, v1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/animation/Animator;

    move-result-object v0

    .line 24
    new-instance v1, Lsmartisan/widget/tabswitcher/AnimationPanel$b;

    invoke-direct {v1, p0}, Lsmartisan/widget/tabswitcher/AnimationPanel$b;-><init>(Lsmartisan/widget/tabswitcher/AnimationPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final a(FF)V
    .locals 1

    .line 4
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->h:Lsmartisan/widget/tabswitcher/Pickable;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->e:Li/t/h/b;

    invoke-interface {v0, p1, p2}, Lsmartisan/widget/tabswitcher/Pickable;->peek(FF)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->e:Li/t/h/b;

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->h:Lsmartisan/widget/tabswitcher/Pickable;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->f:Li/t/h/b;

    invoke-interface {v0, p1, p2}, Lsmartisan/widget/tabswitcher/Pickable;->peek(FF)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->f:Li/t/h/b;

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->h:Lsmartisan/widget/tabswitcher/Pickable;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->h:Lsmartisan/widget/tabswitcher/Pickable;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0, p1, p2}, Lsmartisan/widget/tabswitcher/Pickable;->pick(FF)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    .line 11
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    invoke-virtual {p0, p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Lsmartisan/widget/tabswitcher/model/TabBrick;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->a:Landroid/graphics/PointF;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public final a(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->e:Li/t/h/b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lsmartisan/widget/tabswitcher/Pickable;->peek(FF)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    invoke-interface {v1}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->e:Li/t/h/b;

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->i:Lsmartisan/widget/tabswitcher/Putable;

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->f:Li/t/h/b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lsmartisan/widget/tabswitcher/Pickable;->peek(FF)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    invoke-interface {v1}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->f:Li/t/h/b;

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->i:Lsmartisan/widget/tabswitcher/Putable;

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->i:Lsmartisan/widget/tabswitcher/Putable;

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lsmartisan/widget/tabswitcher/Putable;->peek(FF)Lsmartisan/widget/tabswitcher/model/TabBrick;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->k:Lsmartisan/widget/tabswitcher/model/TabBrick;

    .line 21
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->k:Lsmartisan/widget/tabswitcher/model/TabBrick;

    invoke-virtual {p0, p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Lsmartisan/widget/tabswitcher/model/TabBrick;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->b:Landroid/graphics/PointF;

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->h:Lsmartisan/widget/tabswitcher/Pickable;

    .line 4
    iput-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->i:Lsmartisan/widget/tabswitcher/Putable;

    .line 5
    iput-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    .line 6
    iput-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->k:Lsmartisan/widget/tabswitcher/model/TabBrick;

    return-void
.end method

.method public final c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->i:Lsmartisan/widget/tabswitcher/Putable;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->r:Landroid/animation/AnimatorSet;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->k:Lsmartisan/widget/tabswitcher/model/TabBrick;

    invoke-virtual {p0, v1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Lsmartisan/widget/tabswitcher/model/TabBrick;)Landroid/graphics/PointF;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->a:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v1, v2}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/animation/Animator;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    invoke-virtual {p0, v1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Lsmartisan/widget/tabswitcher/model/TabBrick;)Landroid/graphics/PointF;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->b:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v1, v2}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/animation/Animator;

    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 12
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->r:Landroid/animation/AnimatorSet;

    new-instance v1, Lsmartisan/widget/tabswitcher/AnimationPanel$a;

    invoke-direct {v1, p0}, Lsmartisan/widget/tabswitcher/AnimationPanel$a;-><init>(Lsmartisan/widget/tabswitcher/AnimationPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->r:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->k:Lsmartisan/widget/tabswitcher/model/TabBrick;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getDrawable()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->k:Lsmartisan/widget/tabswitcher/model/TabBrick;

    invoke-interface {v2}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getDrawableOffsetX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->g:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->a:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Landroid/graphics/PointF;)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getDrawable()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->j:Lsmartisan/widget/tabswitcher/model/TabBrick;

    invoke-interface {v2}, Lsmartisan/widget/tabswitcher/model/TabBrick;->getDrawableOffsetX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->g:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->h:Lsmartisan/widget/tabswitcher/Pickable;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->p:Z

    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->m:F

    sub-float/2addr v0, v2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->n:F

    sub-float/2addr v2, v3

    .line 6
    iget-object v3, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->a:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 7
    iget v0, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    iput v0, v3, Landroid/graphics/PointF;->y:F

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->h:Lsmartisan/widget/tabswitcher/Pickable;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->p:Z

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0, p1}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Landroid/view/MotionEvent;)V

    .line 11
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->i:Lsmartisan/widget/tabswitcher/Putable;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->c()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->a()V

    .line 14
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->p:Z

    .line 15
    iput-boolean v1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->q:Z

    goto :goto_1

    .line 16
    :cond_5
    iput-boolean v2, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->q:Z

    .line 17
    new-instance v0, Lsmartisan/widget/tabswitcher/AnimationPanel$e;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {v0, p0, v2, v3}, Lsmartisan/widget/tabswitcher/AnimationPanel$e;-><init>(Lsmartisan/widget/tabswitcher/AnimationPanel;FF)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->m:F

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lsmartisan/widget/tabswitcher/AnimationPanel;->n:F

    return v1
.end method
