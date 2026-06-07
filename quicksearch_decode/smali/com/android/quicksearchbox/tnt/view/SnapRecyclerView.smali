.class public final Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SnapRecyclerView.kt"


# instance fields
.field public final F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

.field public G0:Z

.field public H0:F

.field public I0:F

.field public J0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget-object v0, Lcom/smartisanos/quicksearch/R$styleable;->SnapRecyclerView:[I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    const/16 p3, 0x30

    invoke-direct {p2, p3}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;-><init>(I)V

    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    .line 5
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    const/4 p3, 0x4

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->b(Z)V

    .line 6
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Z)V

    .line 7
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    const/4 v0, 0x2

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(F)V

    .line 8
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    const/4 v0, 0x3

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->b(F)V

    .line 9
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->d(Z)V

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RecyclerView Need LinearLayoutManager!"

    .line 12
    invoke-static {p1}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->J0:Z

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;-><init>(Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->G0:Z

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->G0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->g(I)V

    :cond_1
    return-void
.end method

.method public final getCurrentSnappedPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->e()I

    move-result v0

    return v0
.end method

.method public final getMSnapHelper()Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "layoutManager ?: return \u2026.onInterceptTouchEvent(e)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 5
    iget v3, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->H0:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 6
    iget v3, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->I0:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a()Z

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->H0:F

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->I0:F

    .line 10
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->J0:Z

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const-string v0, "newEvent"

    .line 12
    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 13
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 14
    :cond_4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_2
    return p1

    .line 15
    :cond_5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setSnapListener(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->F0:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;)V

    return-void
.end method
