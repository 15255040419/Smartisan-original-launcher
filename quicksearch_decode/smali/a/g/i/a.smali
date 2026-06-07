.class public abstract La/g/i/a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/g/i/a$a;,
        La/g/i/a$b;
    }
.end annotation


# static fields
.field public static final r:I


# instance fields
.field public final a:La/g/i/a$a;

.field public final b:Landroid/view/animation/Interpolator;

.field public final c:Landroid/view/View;

.field public d:Ljava/lang/Runnable;

.field public e:[F

.field public f:[F

.field public g:I

.field public h:I

.field public i:[F

.field public j:[F

.field public k:[F

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, La/g/i/a;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/g/i/a$a;

    invoke-direct {v0}, La/g/i/a$a;-><init>()V

    iput-object v0, p0, La/g/i/a;->a:La/g/i/a$a;

    .line 3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, La/g/i/a;->b:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    iput-object v1, p0, La/g/i/a;->e:[F

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_1

    iput-object v1, p0, La/g/i/a;->f:[F

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_2

    iput-object v1, p0, La/g/i/a;->i:[F

    new-array v1, v0, [F

    .line 7
    fill-array-data v1, :array_3

    iput-object v1, p0, La/g/i/a;->j:[F

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_4

    iput-object v0, p0, La/g/i/a;->k:[F

    .line 9
    iput-object p1, p0, La/g/i/a;->c:Landroid/view/View;

    .line 10
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 11
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x44c4e000    # 1575.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const v2, 0x439d8000    # 315.0f

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    .line 12
    invoke-virtual {p0, v0, v0}, La/g/i/a;->c(FF)La/g/i/a;

    int-to-float p1, p1

    .line 13
    invoke-virtual {p0, p1, p1}, La/g/i/a;->d(FF)La/g/i/a;

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, La/g/i/a;->d(I)La/g/i/a;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 15
    invoke-virtual {p0, p1, p1}, La/g/i/a;->b(FF)La/g/i/a;

    const p1, 0x3e4ccccd    # 0.2f

    .line 16
    invoke-virtual {p0, p1, p1}, La/g/i/a;->e(FF)La/g/i/a;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p0, p1, p1}, La/g/i/a;->f(FF)La/g/i/a;

    .line 18
    sget p1, La/g/i/a;->r:I

    invoke-virtual {p0, p1}, La/g/i/a;->c(I)La/g/i/a;

    const/16 p1, 0x1f4

    .line 19
    invoke-virtual {p0, p1}, La/g/i/a;->f(I)La/g/i/a;

    .line 20
    invoke-virtual {p0, p1}, La/g/i/a;->e(I)La/g/i/a;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static a(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static a(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public final a(FF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return v0

    .line 18
    :cond_0
    iget v1, p0, La/g/i/a;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_2
    cmpg-float v1, p1, p2

    if-gez v1, :cond_4

    cmpl-float v1, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_3

    div-float/2addr p1, p2

    sub-float/2addr v3, p1

    return v3

    .line 19
    :cond_3
    iget-boolean p1, p0, La/g/i/a;->o:Z

    if-eqz p1, :cond_4

    iget p1, p0, La/g/i/a;->g:I

    if-ne p1, v2, :cond_4

    return v3

    :cond_4
    :goto_0
    return v0
.end method

.method public final a(FFFF)F
    .locals 1

    mul-float/2addr p1, p2

    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0, p3}, La/g/i/a;->a(FFF)F

    move-result p1

    .line 13
    invoke-virtual {p0, p4, p1}, La/g/i/a;->a(FF)F

    move-result p3

    sub-float/2addr p2, p4

    .line 14
    invoke-virtual {p0, p2, p1}, La/g/i/a;->a(FF)F

    move-result p1

    sub-float/2addr p1, p3

    cmpg-float p2, p1, v0

    if-gez p2, :cond_0

    .line 15
    iget-object p2, p0, La/g/i/a;->b:Landroid/view/animation/Interpolator;

    neg-float p1, p1

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    neg-float p1, p1

    goto :goto_0

    :cond_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    .line 16
    iget-object p2, p0, La/g/i/a;->b:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :goto_0
    const/high16 p2, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    .line 17
    invoke-static {p1, p2, p3}, La/g/i/a;->a(FFF)F

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final a(IFFF)F
    .locals 3

    .line 4
    iget-object v0, p0, La/g/i/a;->e:[F

    aget v0, v0, p1

    .line 5
    iget-object v1, p0, La/g/i/a;->f:[F

    aget v1, v1, p1

    .line 6
    invoke-virtual {p0, v0, p3, v1, p2}, La/g/i/a;->a(FFFF)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    return p3

    .line 7
    :cond_0
    iget-object p3, p0, La/g/i/a;->i:[F

    aget p3, p3, p1

    .line 8
    iget-object v1, p0, La/g/i/a;->j:[F

    aget v1, v1, p1

    .line 9
    iget-object v2, p0, La/g/i/a;->k:[F

    aget p1, v2, p1

    mul-float/2addr p3, p4

    if-lez v0, :cond_1

    mul-float/2addr p2, p3

    .line 10
    invoke-static {p2, v1, p1}, La/g/i/a;->a(FFF)F

    move-result p1

    return p1

    :cond_1
    neg-float p2, p2

    mul-float/2addr p2, p3

    .line 11
    invoke-static {p2, v1, p1}, La/g/i/a;->a(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method public a(Z)La/g/i/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, La/g/i/a;->p:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, La/g/i/a;->b()V

    .line 3
    :cond_0
    iput-boolean p1, p0, La/g/i/a;->p:Z

    return-object p0
.end method

.method public a()V
    .locals 8

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 21
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 22
    iget-object v1, p0, La/g/i/a;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public abstract a(II)V
.end method

.method public abstract a(I)Z
.end method

.method public b(FF)La/g/i/a;
    .locals 2

    .line 1
    iget-object v0, p0, La/g/i/a;->f:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public final b()V
    .locals 1

    .line 3
    iget-boolean v0, p0, La/g/i/a;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, La/g/i/a;->o:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, La/g/i/a;->a:La/g/i/a$a;

    invoke-virtual {v0}, La/g/i/a$a;->g()V

    :goto_0
    return-void
.end method

.method public abstract b(I)Z
.end method

.method public c(FF)La/g/i/a;
    .locals 3

    .line 1
    iget-object v0, p0, La/g/i/a;->k:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public c(I)La/g/i/a;
    .locals 0

    .line 3
    iput p1, p0, La/g/i/a;->h:I

    return-object p0
.end method

.method public c()Z
    .locals 2

    .line 4
    iget-object v0, p0, La/g/i/a;->a:La/g/i/a$a;

    .line 5
    invoke-virtual {v0}, La/g/i/a$a;->e()I

    move-result v1

    .line 6
    invoke-virtual {v0}, La/g/i/a$a;->d()I

    move-result v0

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, v1}, La/g/i/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v0}, La/g/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(FF)La/g/i/a;
    .locals 3

    .line 1
    iget-object v0, p0, La/g/i/a;->j:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public d(I)La/g/i/a;
    .locals 0

    .line 3
    iput p1, p0, La/g/i/a;->g:I

    return-object p0
.end method

.method public final d()V
    .locals 6

    .line 4
    iget-object v0, p0, La/g/i/a;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, La/g/i/a$b;

    invoke-direct {v0, p0}, La/g/i/a$b;-><init>(La/g/i/a;)V

    iput-object v0, p0, La/g/i/a;->d:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, La/g/i/a;->o:Z

    .line 7
    iput-boolean v0, p0, La/g/i/a;->m:Z

    .line 8
    iget-boolean v1, p0, La/g/i/a;->l:Z

    if-nez v1, :cond_1

    iget v1, p0, La/g/i/a;->h:I

    if-lez v1, :cond_1

    .line 9
    iget-object v2, p0, La/g/i/a;->c:Landroid/view/View;

    iget-object v3, p0, La/g/i/a;->d:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, La/g/i/a;->d:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 11
    :goto_0
    iput-boolean v0, p0, La/g/i/a;->l:Z

    return-void
.end method

.method public e(FF)La/g/i/a;
    .locals 2

    .line 1
    iget-object v0, p0, La/g/i/a;->e:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public e(I)La/g/i/a;
    .locals 1

    .line 3
    iget-object v0, p0, La/g/i/a;->a:La/g/i/a$a;

    invoke-virtual {v0, p1}, La/g/i/a$a;->a(I)V

    return-object p0
.end method

.method public f(FF)La/g/i/a;
    .locals 3

    .line 1
    iget-object v0, p0, La/g/i/a;->i:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public f(I)La/g/i/a;
    .locals 1

    .line 3
    iget-object v0, p0, La/g/i/a;->a:La/g/i/a$a;

    invoke-virtual {v0, p1}, La/g/i/a$a;->b(I)V

    return-object p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, La/g/i/a;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, La/g/i/a;->b()V

    goto :goto_0

    .line 4
    :cond_2
    iput-boolean v2, p0, La/g/i/a;->n:Z

    .line 5
    iput-boolean v1, p0, La/g/i/a;->l:Z

    .line 6
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, La/g/i/a;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 7
    invoke-virtual {p0, v1, v0, v3, v4}, La/g/i/a;->a(IFFF)F

    move-result v0

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, La/g/i/a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 9
    invoke-virtual {p0, v2, p2, p1, v3}, La/g/i/a;->a(IFFF)F

    move-result p1

    .line 10
    iget-object p2, p0, La/g/i/a;->a:La/g/i/a$a;

    invoke-virtual {p2, v0, p1}, La/g/i/a$a;->a(FF)V

    .line 11
    iget-boolean p1, p0, La/g/i/a;->o:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, La/g/i/a;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p0}, La/g/i/a;->d()V

    .line 13
    :cond_4
    :goto_0
    iget-boolean p1, p0, La/g/i/a;->q:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, La/g/i/a;->o:Z

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method
