.class Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 7351
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 0

    .line 7364
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 7354
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 1

    .line 7388
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7389
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 1

    .line 7381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7382
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getParent()Landroid/view/View;
    .locals 0

    .line 7359
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getParentEnd()I
    .locals 1

    .line 7374
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7375
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getParentStart()I
    .locals 0

    .line 7369
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p0

    return p0
.end method
