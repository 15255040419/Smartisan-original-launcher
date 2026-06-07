.class public Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;
.super Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;
.source "HeadersListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/quicksearchbox/ui/SuggestionsListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcom/android/quicksearchbox/ui/SuggestionsListView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Landroid/widget/AbsListView$OnScrollListener;

.field public d:Z

.field public e:I

.field public f:Landroid/view/View;

.field public g:I

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/Long;

.field public l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

.field public m:F

.field public n:Z

.field public o:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;

.field public p:I

.field public q:Landroid/view/ViewConfiguration;

.field public r:Z

.field public s:I

.field public final t:I

.field public u:Z

.field public v:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;

.field public x:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "listViewStyle"

    const-string v1, "attr"

    .line 2
    invoke-static {v0, v1}, Lb/a/a/n1/h0;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 4
    iput-boolean p3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->d:Z

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->k:Ljava/lang/Long;

    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    iput v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->m:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->n:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->r:Z

    .line 10
    iput v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->s:I

    .line 11
    new-instance v1, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$a;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$a;-><init>(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;)V

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->w:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;

    .line 12
    new-instance v1, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$b;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$b;-><init>(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;)V

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->x:Landroid/database/DataSetObserver;

    .line 13
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 14
    invoke-super {p0, p3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-super {p0, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 17
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->q:Landroid/view/ViewConfiguration;

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/smartisanos/quicksearch/R$styleable;->HeadersListView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->t:I

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 21
    :cond_0
    iput v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->t:I

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;)Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->o:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->b()V

    return-void
.end method

.method private getHeaderHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    return p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ltz v3, :cond_1

    add-int/2addr p1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->i:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_3

    .line 15
    invoke-super {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_3

    if-lez p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    return p1
.end method

.method public final a()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    .line 5
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ListView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getRight()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 10
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    return-void
.end method

.method public final b(I)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->getCount()I

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->d:Z

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->a(I)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 6
    iput-object v3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->k:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-eqz v2, :cond_3

    .line 8
    :cond_2
    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->p:I

    .line 9
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    iget-object v2, v2, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    iget v4, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->p:I

    iget-object v5, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-interface {v2, v4, v5, p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    .line 10
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->a()V

    .line 12
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->k:Ljava/lang/Long;

    .line 13
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const v2, 0x1869f

    move v4, v2

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_9

    .line 14
    invoke-super {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 15
    instance-of v6, v5, Lb/a/a/m1/h/b;

    if-nez v6, :cond_4

    goto :goto_3

    .line 16
    :cond_4
    check-cast v5, Lb/a/a/m1/h/b;

    .line 17
    iget-boolean v6, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->i:Z

    if-eqz v6, :cond_5

    .line 18
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    :goto_2
    if-gez v6, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    .line 20
    invoke-virtual {v3}, Lb/a/a/m1/h/b;->a()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 21
    invoke-virtual {v5}, Lb/a/a/m1/h/b;->a()Z

    move-result v7

    if-eqz v7, :cond_8

    if-ge v6, v4, :cond_8

    :cond_7
    move-object v3, v5

    move v4, v6

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22
    :cond_9
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->getHeaderHeight()I

    move-result v2

    if-eqz v3, :cond_e

    .line 23
    invoke-virtual {v3}, Lb/a/a/m1/h/b;->a()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez p1, :cond_a

    .line 24
    invoke-super {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->i:Z

    if-nez p1, :cond_a

    .line 25
    iput v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    goto :goto_5

    .line 26
    :cond_a
    iget-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->i:Z

    if-eqz p1, :cond_c

    .line 27
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v2

    .line 29
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    .line 30
    iget p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    if-ge p1, v3, :cond_b

    .line 31
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_4

    :cond_b
    iget v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    :goto_4
    iput v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    goto :goto_5

    .line 32
    :cond_c
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    .line 33
    iget p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    if-gez p1, :cond_d

    move p1, v2

    :cond_d
    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    goto :goto_5

    .line 34
    :cond_e
    iput v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    .line 35
    iget-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->i:Z

    if-eqz p1, :cond_f

    .line 36
    iget p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    .line 37
    :cond_f
    :goto_5
    iget-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->i:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p1

    goto :goto_6

    :cond_10
    move p1, v1

    :goto_6
    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_14

    .line 38
    invoke-super {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 39
    instance-of v4, v3, Lb/a/a/m1/h/b;

    if-nez v4, :cond_11

    goto :goto_8

    .line 40
    :cond_11
    check-cast v3, Lb/a/a/m1/h/b;

    .line 41
    invoke-virtual {v3}, Lb/a/a/m1/h/b;->a()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 42
    iget-object v4, v3, Lb/a/a/m1/h/b;->d:Landroid/view/View;

    .line 43
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    if-ge v3, p1, :cond_12

    const/4 v3, 0x4

    .line 44
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 45
    :cond_12
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    :goto_9
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->v:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060251

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->v:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v1, v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setMaxPromoted(I)V

    :cond_1
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->b(I)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAreHeadersSticky()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->d:Z

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedSuggestion()Lb/a/a/w0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/w0;

    return-object v0
.end method

.method public getSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->v:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->t:I

    if-lez v1, :cond_0

    if-ge v1, v0, :cond_0

    const/high16 p2, -0x80000000

    .line 3
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->r:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->s:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3
    iput-boolean v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->r:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 6
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x8

    if-lt p1, p3, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->b(I)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->u:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->c()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    if-nez v1, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->m:F

    .line 6
    iput-boolean v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->n:Z

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    invoke-virtual {p0, v2, v2, p1, v0}, Landroid/widget/ListView;->invalidate(IIII)V

    return v1

    .line 10
    :cond_1
    iget-boolean v3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->n:Z

    if-eqz v3, :cond_5

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->m:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->q:Landroid/view/ViewConfiguration;

    .line 12
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    const/high16 v4, -0x40800000    # -1.0f

    if-gez v3, :cond_4

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 13
    :cond_2
    iput v4, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->m:F

    .line 14
    iput-boolean v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->n:Z

    .line 15
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 16
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 17
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    invoke-virtual {p0, v2, v2, p1, v0}, Landroid/widget/ListView;->invalidate(IIII)V

    .line 18
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->o:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;

    if-eqz v3, :cond_3

    .line 19
    iget-object v5, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    iget v6, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->p:I

    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->k:Ljava/lang/Long;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v9, 0x1

    move-object v4, p0

    .line 21
    invoke-interface/range {v3 .. v9}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;->onHeaderClick(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;Landroid/view/View;IJZ)V

    :cond_3
    return v1

    .line 22
    :cond_4
    iput v4, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->m:F

    .line 23
    iput-boolean v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->n:Z

    .line 24
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 25
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 26
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->e:I

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/widget/ListView;->invalidate(IIII)V

    .line 27
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->i:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->x:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 6
    instance-of v0, p1, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-direct {v0, v1, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->a(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    iget v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->g:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->b(I)V

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->x:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->w:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->setOnHeaderClickListener(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Adapter must implement StickyListHeadersAdapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->setOnHeaderClickListener(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;)V

    .line 15
    :cond_4
    iput-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->b()V

    .line 17
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->d:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 4
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->d:Z

    :cond_1
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->i:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->j:Z

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->h:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setDividerHeight(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->a(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->g:I

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->l:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->b(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLimitSuggestionsToViewHeight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->u:Z

    .line 2
    iget-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->u:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->c()V

    :cond_0
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->o:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->s:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->r:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;->layoutChildren()V

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/AutoScrollListView;->layoutChildren()V

    return-void
.end method

.method public setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "Landroid/widget/ListAdapter;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->v:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 4
    iget-boolean p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->u:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->c()V

    :cond_1
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->d:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    :goto_0
    return-void
.end method
