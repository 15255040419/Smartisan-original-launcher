.class public abstract La/o/a/k;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SnapHelper.java"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Landroid/widget/Scroller;

.field public final c:Landroidx/recyclerview/widget/RecyclerView$n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    .line 2
    new-instance v0, La/o/a/k$a;

    invoke-direct {v0, p0}, La/o/a/k$a;-><init>(La/o/a/k;)V

    iput-object v0, p0, La/o/a/k;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end method

.method public final a()V
    .locals 2

    .line 13
    iget-object v0, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, La/o/a/k;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 14
    iget-object v0, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 6
    iget-object v0, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, La/o/a/k;->a()V

    .line 8
    :cond_1
    iput-object p1, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iget-object p1, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0}, La/o/a/k;->b()V

    .line 11
    new-instance p1, Landroid/widget/Scroller;

    iget-object v0, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, La/o/a/k;->b:Landroid/widget/Scroller;

    .line 12
    invoke-virtual {p0}, La/o/a/k;->c()V

    :cond_2
    return-void
.end method

.method public a(II)Z
    .locals 4

    .line 1
    iget-object v0, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v2, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v2

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0, v0, p1, p2}, La/o/a/k;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, La/o/a/k;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 3
    iget-object v0, p0, La/o/a/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 2

    .line 8
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, La/o/a/k;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, La/o/a/k;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    return v1

    .line 11
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->c(I)V

    .line 12
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(II)[I
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iget-object v1, p0, La/o/a/k;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 6
    iget-object p1, p0, La/o/a/k;->b:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    const/4 p2, 0x0

    aput p1, v0, p2

    .line 7
    iget-object p1, p0, La/o/a/k;->b:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    const/4 p2, 0x1

    aput p1, v0, p2

    return-object v0
.end method

.method public abstract c()V
.end method
