.class public final La/o/a/g$b;
.super La/o/a/g;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/o/a/g;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, La/o/a/g;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;La/o/a/g$a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 4
    iget-object v1, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e(I)V

    return-void
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h()I

    move-result v0

    iget-object v1, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3
    iget-object v1, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public c()I
    .locals 1

    .line 3
    iget-object v0, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->j(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public e()I
    .locals 1

    .line 3
    iget-object v0, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->i()I

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 3

    .line 1
    iget-object v0, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, La/o/a/g;->c:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, La/o/a/g;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public f()I
    .locals 1

    .line 3
    iget-object v0, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->s()I

    move-result v0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    .line 1
    iget-object v0, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, La/o/a/g;->c:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, La/o/a/g;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    .line 1
    iget-object v0, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h()I

    move-result v0

    iget-object v1, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, La/o/a/g;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
