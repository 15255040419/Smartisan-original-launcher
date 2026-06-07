.class public Lcom/android/quicksearchbox/dslv/DragSortListView$f;
.super Lcom/android/quicksearchbox/dslv/DragSortListView$j;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public j:I

.field public k:I

.field public l:F

.field public m:F

.field public final synthetic n:Lcom/android/quicksearchbox/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/dslv/DragSortListView;FI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/dslv/DragSortListView$j;-><init>(Lcom/android/quicksearchbox/dslv/DragSortListView;FI)V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->e()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->u(Lcom/android/quicksearchbox/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    .line 4
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->u(Lcom/android/quicksearchbox/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    .line 5
    iget p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->l:F

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v2, p2

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->m:F

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v2, p2

    if-gez p2, :cond_1

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {p2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->u(Lcom/android/quicksearchbox/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object p2

    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->l:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->u(Lcom/android/quicksearchbox/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result p2

    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->m:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(Lcom/android/quicksearchbox/dslv/DragSortListView;Z)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->w(Lcom/android/quicksearchbox/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->j:I

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->x(Lcom/android/quicksearchbox/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->k:I

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(Lcom/android/quicksearchbox/dslv/DragSortListView;I)I

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->u(Lcom/android/quicksearchbox/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->e()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->l:F

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->u(Lcom/android/quicksearchbox/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->m:F

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->e(Lcom/android/quicksearchbox/dslv/DragSortListView;)V

    return-void
.end method

.method public final e()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(Lcom/android/quicksearchbox/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->j:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->j:I

    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->k:I

    if-ne v2, v3, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_1

    :cond_0
    if-ge v2, v3, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(Lcom/android/quicksearchbox/dslv/DragSortListView;)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView$j;->a()V

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$f;->n:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->e(Lcom/android/quicksearchbox/dslv/DragSortListView;)V

    const/4 v0, -0x1

    :goto_1
    return v0
.end method
