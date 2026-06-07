.class public La/p/a/b;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/p/a/b$c;
    }
.end annotation


# static fields
.field public static final g:Landroid/view/animation/Interpolator;

.field public static final h:Landroid/view/animation/Interpolator;

.field public static final i:[I


# instance fields
.field public final a:La/p/a/b$c;

.field public b:F

.field public c:Landroid/content/res/Resources;

.field public d:Landroid/animation/Animator;

.field public e:F

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, La/p/a/b;->g:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, La/k/a/a/b;

    invoke-direct {v0}, La/k/a/a/b;-><init>()V

    sput-object v0, La/p/a/b;->h:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 3
    sput-object v0, La/p/a/b;->i:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    invoke-static {p1}, La/g/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, La/p/a/b;->c:Landroid/content/res/Resources;

    .line 3
    new-instance p1, La/p/a/b$c;

    invoke-direct {p1}, La/p/a/b$c;-><init>()V

    iput-object p1, p0, La/p/a/b;->a:La/p/a/b$c;

    .line 4
    iget-object p1, p0, La/p/a/b;->a:La/p/a/b$c;

    sget-object v0, La/p/a/b;->i:[I

    invoke-virtual {p1, v0}, La/p/a/b$c;->a([I)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 5
    invoke-virtual {p0, p1}, La/p/a/b;->d(F)V

    .line 6
    invoke-virtual {p0}, La/p/a/b;->a()V

    return-void
.end method


# virtual methods
.method public final a(FII)I
    .locals 6

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method public final a()V
    .locals 3

    .line 44
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 45
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 46
    new-instance v2, La/p/a/b$a;

    invoke-direct {v2, p0, v0}, La/p/a/b$a;-><init>(La/p/a/b;La/p/a/b$c;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    .line 47
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 49
    sget-object v2, La/p/a/b;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    new-instance v2, La/p/a/b$b;

    invoke-direct {v2, p0, v0}, La/p/a/b$b;-><init>(La/p/a/b;La/p/a/b$c;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    iput-object v1, p0, La/p/a/b;->d:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(F)V
    .locals 1

    .line 13
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0, p1}, La/p/a/b$c;->a(F)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(FF)V
    .locals 1

    .line 15
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0, p1}, La/p/a/b$c;->e(F)V

    .line 16
    iget-object p1, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {p1, p2}, La/p/a/b$c;->c(F)V

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final a(FFFF)V
    .locals 2

    .line 1
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    .line 2
    iget-object v1, p0, La/p/a/b;->c:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, v1

    .line 4
    invoke-virtual {v0, p2}, La/p/a/b$c;->f(F)V

    mul-float/2addr p1, v1

    .line 5
    invoke-virtual {v0, p1}, La/p/a/b$c;->b(F)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, La/p/a/b$c;->c(I)V

    mul-float/2addr p3, v1

    mul-float/2addr p4, v1

    .line 7
    invoke-virtual {v0, p3, p4}, La/p/a/b$c;->a(FF)V

    return-void
.end method

.method public final a(FLa/p/a/b$c;)V
    .locals 4

    .line 21
    invoke-virtual {p0, p1, p2}, La/p/a/b;->b(FLa/p/a/b$c;)V

    .line 22
    invoke-virtual {p2}, La/p/a/b$c;->h()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 23
    invoke-virtual {p2}, La/p/a/b$c;->i()F

    move-result v1

    .line 24
    invoke-virtual {p2}, La/p/a/b$c;->g()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    sub-float/2addr v2, v3

    invoke-virtual {p2}, La/p/a/b$c;->i()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 25
    invoke-virtual {p2, v1}, La/p/a/b$c;->e(F)V

    .line 26
    invoke-virtual {p2}, La/p/a/b$c;->g()F

    move-result v1

    invoke-virtual {p2, v1}, La/p/a/b$c;->c(F)V

    .line 27
    invoke-virtual {p2}, La/p/a/b$c;->h()F

    move-result v1

    .line 28
    invoke-virtual {p2}, La/p/a/b$c;->h()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 29
    invoke-virtual {p2, v1}, La/p/a/b$c;->d(F)V

    return-void
.end method

.method public a(FLa/p/a/b$c;Z)V
    .locals 7

    .line 30
    iget-boolean v0, p0, La/p/a/b;->f:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, p1, p2}, La/p/a/b;->a(FLa/p/a/b$c;)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    .line 32
    :cond_1
    invoke-virtual {p2}, La/p/a/b$c;->h()F

    move-result p3

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v1

    const v3, 0x3c23d70a    # 0.01f

    const v4, 0x3f4a3d71    # 0.79f

    if-gez v2, :cond_2

    div-float v0, p1, v1

    .line 33
    invoke-virtual {p2}, La/p/a/b$c;->i()F

    move-result v1

    .line 34
    sget-object v2, La/p/a/b;->h:Landroid/view/animation/Interpolator;

    .line 35
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_2
    sub-float v2, p1, v1

    div-float/2addr v2, v1

    .line 36
    invoke-virtual {p2}, La/p/a/b$c;->i()F

    move-result v1

    add-float/2addr v1, v4

    .line 37
    sget-object v5, La/p/a/b;->h:Landroid/view/animation/Interpolator;

    .line 38
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    sub-float v0, v1, v0

    :goto_0
    const v2, 0x3e570a3c    # 0.20999998f

    mul-float/2addr v2, p1

    add-float/2addr p3, v2

    const/high16 v2, 0x43580000    # 216.0f

    .line 39
    iget v3, p0, La/p/a/b;->e:F

    add-float/2addr p1, v3

    mul-float/2addr p1, v2

    .line 40
    invoke-virtual {p2, v0}, La/p/a/b$c;->e(F)V

    .line 41
    invoke-virtual {p2, v1}, La/p/a/b$c;->c(F)V

    .line 42
    invoke-virtual {p2, p3}, La/p/a/b$c;->d(F)V

    .line 43
    invoke-virtual {p0, p1}, La/p/a/b;->c(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 3

    if-nez p1, :cond_0

    const/high16 p1, 0x41300000    # 11.0f

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40c00000    # 6.0f

    .line 8
    invoke-virtual {p0, p1, v0, v1, v2}, La/p/a/b;->a(FFFF)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40f00000    # 7.5f

    const/high16 v0, 0x40200000    # 2.5f

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x40a00000    # 5.0f

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, La/p/a/b;->a(FFFF)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 11
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0, p1}, La/p/a/b$c;->a(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public varargs a([I)V
    .locals 1

    .line 18
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0, p1}, La/p/a/b$c;->a([I)V

    .line 19
    iget-object p1, p0, La/p/a/b;->a:La/p/a/b$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, La/p/a/b$c;->c(I)V

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 1
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0, p1}, La/p/a/b$c;->d(F)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public b(FLa/p/a/b$c;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 3
    invoke-virtual {p2}, La/p/a/b$c;->f()I

    move-result v0

    .line 4
    invoke-virtual {p2}, La/p/a/b$c;->c()I

    move-result v1

    .line 5
    invoke-virtual {p0, p1, v0, v1}, La/p/a/b;->a(FII)I

    move-result p1

    invoke-virtual {p2, p1}, La/p/a/b$c;->b(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, La/p/a/b$c;->f()I

    move-result p1

    invoke-virtual {p2, p1}, La/p/a/b$c;->b(I)V

    :goto_0
    return-void
.end method

.method public final c(F)V
    .locals 0

    .line 1
    iput p1, p0, La/p/a/b;->b:F

    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0, p1}, La/p/a/b$c;->f(F)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget v1, p0, La/p/a/b;->b:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4
    iget-object v1, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v1, p1, v0}, La/p/a/b$c;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0}, La/p/a/b$c;->a()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/p/a/b;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0, p1}, La/p/a/b$c;->a(I)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0, p1}, La/p/a/b$c;->a(Landroid/graphics/ColorFilter;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, La/p/a/b;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0}, La/p/a/b$c;->l()V

    .line 3
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0}, La/p/a/b$c;->b()F

    move-result v0

    iget-object v1, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v1}, La/p/a/b$c;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, La/p/a/b;->f:Z

    .line 5
    iget-object v0, p0, La/p/a/b;->d:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6
    iget-object v0, p0, La/p/a/b;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/p/a/b$c;->c(I)V

    .line 8
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0}, La/p/a/b$c;->k()V

    .line 9
    iget-object v0, p0, La/p/a/b;->d:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 10
    iget-object v0, p0, La/p/a/b;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, La/p/a/b;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, La/p/a/b;->c(F)V

    .line 3
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/p/a/b$c;->a(Z)V

    .line 4
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0, v1}, La/p/a/b$c;->c(I)V

    .line 5
    iget-object v0, p0, La/p/a/b;->a:La/p/a/b$c;

    invoke-virtual {v0}, La/p/a/b$c;->k()V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
