.class Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/android/settings/wifi/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 1

    .line 679
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    .line 680
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 681
    iput-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 683
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper$1;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;Lcom/android/settings/wifi/dslv/DragSortListView;)V

    invoke-interface {p2, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    .line 715
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p0

    return p0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 695
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    .line 710
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_1

    .line 752
    check-cast p2, Lcom/android/settings/wifi/dslv/DragSortItemView;

    const/4 p3, 0x0

    .line 753
    invoke-virtual {p2, p3}, Lcom/android/settings/wifi/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_3

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p2, p3}, Lcom/android/settings/wifi/dslv/DragSortItemView;->removeViewAt(I)V

    .line 762
    :cond_0
    invoke-virtual {p2, v1}, Lcom/android/settings/wifi/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 765
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-interface {p2, p1, p3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 766
    instance-of p3, p2, Landroid/widget/Checkable;

    if-eqz p3, :cond_2

    .line 767
    new-instance p3, Lcom/android/settings/wifi/dslv/DragSortItemViewCheckable;

    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/settings/wifi/dslv/DragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 769
    :cond_2
    new-instance p3, Lcom/android/settings/wifi/dslv/DragSortItemView;

    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/settings/wifi/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    .line 771
    :goto_0
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Lcom/android/settings/wifi/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    invoke-virtual {p3, p2}, Lcom/android/settings/wifi/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    move-object p2, p3

    .line 779
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result p3

    add-int/2addr p1, p3

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$200(Lcom/android/settings/wifi/dslv/DragSortListView;ILandroid/view/View;Z)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    .line 730
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result p0

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    .line 735
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 740
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    return p0
.end method
