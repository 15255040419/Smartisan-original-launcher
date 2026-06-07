.class public Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$b;
.super La/o/a/e;
.source "GravitySnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic p:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$b;->p:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    invoke-direct {p0, p2}, La/o/a/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$b;->p:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->b(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;)F

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$a;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$b;->p:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    invoke-static {p2}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$b;->p:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    invoke-static {p2}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$b;->p:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    invoke-static {p2}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 4
    aget p1, p1, v0

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, La/o/a/e;->d(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v1, p0, La/o/a/e;->j:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$a;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    :goto_0
    return-void
.end method
