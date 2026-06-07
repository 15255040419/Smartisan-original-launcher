.class public Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;
.super Landroid/widget/ListView;
.source "AutoScrollListView.java"


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;->a:I

    return-void
.end method


# virtual methods
.method public layoutChildren()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2
    iget v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iput v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;->a:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-lt v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 7
    iget-boolean v4, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;->b:Z

    if-nez v4, :cond_2

    .line 8
    invoke-virtual {p0, v0, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 9
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_1

    :cond_2
    sub-int v4, v2, v1

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v1, :cond_4

    add-int/2addr v4, v0

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-lt v4, v2, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :cond_3
    if-ge v4, v1, :cond_6

    .line 12
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 13
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_0

    :cond_4
    sub-int v1, v0, v4

    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    if-le v1, v2, :cond_6

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 15
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 16
    :cond_6
    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    :goto_1
    return-void
.end method
