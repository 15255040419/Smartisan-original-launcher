.class public Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->j(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getParentEnd()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getParentStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result v0

    return v0
.end method
