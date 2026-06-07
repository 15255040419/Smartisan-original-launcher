.class public Lcom/android/quicksearchbox/ui/SuggestionsView;
.super Landroid/widget/ListView;
.source "SuggestionsView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionsListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ListView;",
        "Lcom/android/quicksearchbox/ui/SuggestionsListView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->b:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

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
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->b:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v1, v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setMaxPromoted(I)V

    :cond_1
    return-void
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
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->b:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

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

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->a:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->a()V

    :cond_0
    return-void
.end method

.method public setLimitSuggestionsToViewHeight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->a:Z

    .line 2
    iget-boolean p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->a:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->a()V

    :cond_0
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

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->b:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 3
    iget-boolean p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->a:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->a()V

    :cond_1
    return-void
.end method
