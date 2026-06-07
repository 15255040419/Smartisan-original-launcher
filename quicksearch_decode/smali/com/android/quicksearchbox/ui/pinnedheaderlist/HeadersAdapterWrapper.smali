.class public final Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "HeadersAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Landroid/database/DataSetObserver;

.field public g:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$a;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$a;-><init>(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->f:Landroid/database/DataSetObserver;

    .line 4
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->f:Landroid/database/DataSetObserver;

    invoke-interface {p2, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;)Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->g:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;

    return-object p0
.end method


# virtual methods
.method public final a(Lb/a/a/m1/h/b;I)Landroid/view/View;
    .locals 2

    .line 5
    iget-object v0, p1, Lb/a/a/m1/h/b;->d:Landroid/view/View;

    .line 6
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v1, p2, v0, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 8
    new-instance v0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$b;

    invoke-direct {v0, p0, p2}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$b;-><init>(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Header view must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(Lb/a/a/m1/h/b;)V
    .locals 1

    .line 3
    iget-object p1, p1, Lb/a/a/m1/h/b;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    .line 11
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    add-int/lit8 v3, p1, -0x1

    .line 12
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->e:I

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    instance-of v0, p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    check-cast p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;

    .line 2
    invoke-virtual {p3}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->a()I

    move-result p3

    if-ne v0, p3, :cond_4

    .line 3
    instance-of p3, p2, Lcom/android/quicksearchbox/ui/pinnedheaderlist/SyncStateLayout;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/android/quicksearchbox/ui/pinnedheaderlist/SyncStateLayout;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/quicksearchbox/ui/pinnedheaderlist/SyncStateLayout;

    iget-object p3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->b:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/SyncStateLayout;-><init>(Landroid/content/Context;)V

    .line 4
    :goto_0
    iget-object p3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p3, p1, v2, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq p3, v0, :cond_1

    .line 6
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 8
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    const p1, 0x7f0701f1

    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_3

    const p1, 0x7f0701ec

    .line 11
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const p1, 0x7f0701ef

    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_1
    return-object p2

    .line 13
    :cond_4
    instance-of p3, p2, Lb/a/a/m1/h/b;

    if-eqz p3, :cond_5

    check-cast p2, Lb/a/a/m1/h/b;

    goto :goto_2

    :cond_5
    new-instance p2, Lb/a/a/m1/h/b;

    iget-object p3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->b:Landroid/content/Context;

    invoke-direct {p2, p3}, Lb/a/a/m1/h/b;-><init>(Landroid/content/Context;)V

    .line 14
    :goto_2
    iget-object p3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    iget-object v0, p2, Lb/a/a/m1/h/b;->a:Landroid/view/View;

    invoke-interface {p3, p1, v0, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->a(Lb/a/a/m1/h/b;)V

    goto :goto_3

    .line 17
    :cond_6
    invoke-virtual {p0, p2, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->a(Lb/a/a/m1/h/b;I)Landroid/view/View;

    move-result-object v1

    .line 18
    :goto_3
    instance-of p1, p3, Landroid/widget/Checkable;

    if-eqz p1, :cond_7

    instance-of v0, p2, Lb/a/a/m1/h/a;

    if-nez v0, :cond_7

    .line 19
    new-instance p2, Lb/a/a/m1/h/a;

    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->b:Landroid/content/Context;

    invoke-direct {p2, p1}, Lb/a/a/m1/h/a;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :cond_7
    if-nez p1, :cond_8

    .line 20
    instance-of p1, p2, Lb/a/a/m1/h/a;

    if-eqz p1, :cond_8

    .line 21
    new-instance p2, Lb/a/a/m1/h/b;

    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->b:Landroid/content/Context;

    invoke-direct {p2, p1}, Lb/a/a/m1/h/b;-><init>(Landroid/content/Context;)V

    .line 22
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->d:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->e:I

    invoke-virtual {p2, p3, v1, p1, v0}, Lb/a/a/m1/h/b;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public setOnHeaderClickListener(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->g:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
