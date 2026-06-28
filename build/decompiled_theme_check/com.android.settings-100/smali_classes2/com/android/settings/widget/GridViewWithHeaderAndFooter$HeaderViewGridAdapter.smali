.class Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewGridAdapter"
.end annotation


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field private mCacheFirstHeaderView:Z

.field private mCachePlaceHoldView:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mNumColumns:I

.field private mRowHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    const/4 v0, 0x1

    .line 487
    iput v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    const/4 v1, -0x1

    .line 488
    iput v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mRowHeight:I

    .line 491
    iput-boolean v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    const/4 v1, 0x0

    .line 493
    iput-boolean v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    .line 496
    iput-object p3, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 497
    instance-of p3, p3, Landroid/widget/Filterable;

    iput-boolean p3, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mIsFilterable:Z

    if-nez p1, :cond_0

    .line 499
    sget-object p1, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 501
    :cond_0
    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    :goto_0
    if-nez p2, :cond_1

    .line 505
    sget-object p1, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 507
    :cond_1
    iput-object p2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 509
    :goto_1
    iget-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 510
    invoke-direct {p0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    return-void
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 548
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 549
    iget-boolean p1, p1, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private getAdapterAndPlaceHolderCount()I
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    int-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz p0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getCount()I
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 831
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFootersCount()I
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getHeadersCount()I
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_1

    .line 633
    rem-int v0, p1, v1

    if-nez v0, :cond_0

    .line 634
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    div-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object v2

    :cond_1
    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 642
    iget-object v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    .line 643
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 645
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 646
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2

    :cond_3
    sub-int/2addr p1, v0

    .line 655
    iget v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v0, p1, v0

    if-nez v0, :cond_4

    .line 656
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    return-object p0

    :cond_4
    return-object v2
.end method

.method public getItemId(I)J
    .locals 2

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    .line 665
    iget-object v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 667
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 669
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 7

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    .line 746
    iget-object v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_0
    const/4 v4, -0x2

    .line 748
    iget-boolean v5, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v5, :cond_2

    if-ge p1, v0, :cond_2

    if-nez p1, :cond_1

    .line 752
    iget-boolean v5, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    if-eqz v5, :cond_1

    .line 753
    iget-object v4, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v4, v3

    .line 756
    :cond_1
    iget v5, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v6, p1, v5

    if-eqz v6, :cond_2

    .line 757
    div-int v4, p1, v5

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    :cond_2
    sub-int v0, p1, v0

    .line 765
    iget-object v5, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_4

    .line 766
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v5

    if-ltz v0, :cond_5

    if-ge v0, v5, :cond_5

    .line 768
    iget-object v6, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 769
    iget-object v4, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    goto :goto_1

    .line 771
    :cond_3
    iget-boolean v6, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v6, :cond_5

    .line 772
    iget-object v4, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    goto :goto_1

    :cond_4
    move v5, v2

    .line 778
    :cond_5
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v6, :cond_6

    sub-int/2addr v0, v5

    if-ltz v0, :cond_6

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_6

    iget v5, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v5, v0, v5

    if-eqz v5, :cond_6

    .line 782
    iget-object v4, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    iget v4, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int/2addr v0, v4

    add-int/2addr v0, v3

    add-int v4, v1, v0

    .line 785
    :cond_6
    sget-boolean v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 786
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const/4 p1, 0x2

    iget-boolean v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x3

    iget-boolean p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, p1

    const-string p0, "getItemViewType: pos: %s, result: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridViewHeaderAndFooter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 682
    sget-boolean v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 683
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "getView: %s, reused: %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GridViewHeaderAndFooter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v2

    const/4 v3, 0x4

    if-ge p1, v0, :cond_4

    .line 688
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    div-int v1, p1, v2

    .line 689
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 690
    iget p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int/2addr p1, p0

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    if-nez p2, :cond_3

    .line 694
    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 698
    :cond_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 699
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p2

    :cond_4
    sub-int v0, p1, v0

    .line 706
    iget-object v2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_7

    .line 707
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 709
    iget-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 710
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, v0, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p2, :cond_6

    .line 713
    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 715
    :cond_6
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mRowHeight:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p2

    :cond_7
    sub-int/2addr v0, v1

    .line 723
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 724
    iget-object v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int/2addr v0, v2

    .line 725
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 726
    iget p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int/2addr p1, p0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    if-nez p2, :cond_9

    .line 730
    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 734
    :cond_9
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 735
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p2

    .line 739
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public getViewTypeCount()I
    .locals 4

    .line 798
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 799
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v2, :cond_2

    .line 800
    iget-object v2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 801
    iget-boolean p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    if-eqz p0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    .line 806
    :cond_2
    sget-boolean p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz p0, :cond_3

    new-array p0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 807
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    const-string v1, "getViewTypeCount: %s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "GridViewHeaderAndFooter"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEnabled(I)Z
    .locals 4

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_1

    .line 608
    rem-int v0, p1, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    div-int/2addr p1, v1

    .line 609
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-boolean p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    sub-int/2addr p1, v0

    .line 615
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 616
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 618
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    move v0, v3

    :cond_4
    sub-int/2addr p1, v0

    .line 624
    iget v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v1, p1, v0

    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    div-int/2addr p1, v0

    .line 625
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-boolean p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 842
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 815
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    .line 816
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 572
    :goto_0
    iget-object v2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 573
    iget-object v2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 574
    iget-object v2, v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 575
    iget-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 576
    iget-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 577
    invoke-direct {p0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 578
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 558
    :goto_0
    iget-object v2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 559
    iget-object v2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 560
    iget-object v2, v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 561
    iget-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 562
    iget-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 563
    invoke-direct {p0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 564
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public setNumColumns(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    .line 517
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    if-eq v0, p1, :cond_1

    .line 518
    iput p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setRowHeight(I)V
    .locals 0

    .line 524
    iput p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mRowHeight:I

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 823
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    .line 824
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
