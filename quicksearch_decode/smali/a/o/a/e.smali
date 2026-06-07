.class public La/o/a/e;
.super Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# instance fields
.field public final i:Landroid/view/animation/LinearInterpolator;

.field public final j:Landroid/view/animation/DecelerateInterpolator;

.field public final k:Landroid/util/DisplayMetrics;

.field public l:Z

.field public m:F

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, La/o/a/e;->i:Landroid/view/animation/LinearInterpolator;

    .line 3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, La/o/a/e;->j:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, La/o/a/e;->l:Z

    .line 5
    iput v0, p0, La/o/a/e;->n:I

    iput v0, p0, La/o/a/e;->o:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, La/o/a/e;->k:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public a(Landroid/util/DisplayMetrics;)F
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public a(IILandroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a()I

    move-result p3

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->h()V

    return-void

    .line 3
    :cond_0
    iget p3, p0, La/o/a/e;->n:I

    invoke-virtual {p0, p3, p1}, La/o/a/e;->b(II)I

    move-result p1

    iput p1, p0, La/o/a/e;->n:I

    .line 4
    iget p1, p0, La/o/a/e;->o:I

    invoke-virtual {p0, p1, p2}, La/o/a/e;->b(II)I

    move-result p1

    iput p1, p0, La/o/a/e;->o:I

    .line 5
    iget p1, p0, La/o/a/e;->n:I

    if-nez p1, :cond_1

    iget p1, p0, La/o/a/e;->o:I

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0, p4}, La/o/a/e;->a(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$a;)V

    :cond_1
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$a;)V
    .locals 4

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a(Landroid/graphics/PointF;)V

    .line 10
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, La/o/a/e;->n:I

    .line 11
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, La/o/a/e;->o:I

    const/16 v0, 0x2710

    .line 12
    invoke-virtual {p0, v0}, La/o/a/e;->e(I)I

    move-result v0

    .line 13
    iget v1, p0, La/o/a/e;->n:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, La/o/a/e;->o:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, La/o/a/e;->i:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$a;->a(IIILandroid/view/animation/Interpolator;)V

    return-void

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->c()I

    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$a;->a(I)V

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->h()V

    return-void
.end method

.method public final b(II)I
    .locals 0

    sub-int p2, p1, p2

    mul-int/2addr p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method

.method public d(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, La/o/a/e;->e(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public e(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, La/o/a/e;->i()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, La/o/a/e;->o:I

    iput v0, p0, La/o/a/e;->n:I

    return-void
.end method

.method public final i()F
    .locals 1

    .line 1
    iget-boolean v0, p0, La/o/a/e;->l:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, La/o/a/e;->k:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, La/o/a/e;->a(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, La/o/a/e;->m:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, La/o/a/e;->l:Z

    .line 4
    :cond_0
    iget v0, p0, La/o/a/e;->m:F

    return v0
.end method
