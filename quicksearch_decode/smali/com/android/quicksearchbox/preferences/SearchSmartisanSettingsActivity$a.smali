.class public Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;
.super Ljava/lang/Object;
.source "SearchSmartisanSettingsActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/dslv/SlideListView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->a:I

    return-void
.end method


# virtual methods
.method public onDown(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->a(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    .line 2
    invoke-static {v1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->a(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080118

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 5
    iput p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->a:I

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v2}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->a(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    if-eqz p1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->c(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lb/a/a/e0;

    move-result-object v0

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, p1, v2}, Lb/a/a/e0;->a(Lcom/android/quicksearchbox/Corpus;Z)V

    xor-int/lit8 v0, v1, 0x1

    .line 11
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lb/a/a/n1/d$s;->a(ZLjava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->d(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setChecked(IZ)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->a:I

    add-int/lit8 v1, v0, 0x1

    if-le v0, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    move v1, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-gt v1, v0, :cond_4

    .line 2
    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v2}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v3}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->a(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/Corpus;

    if-nez v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v3, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v3}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->a(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    .line 4
    invoke-static {v4}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->a(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v1, v4

    .line 5
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080118

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v3, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    iget-object v3, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->b:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v3}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->c(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lb/a/a/e0;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lb/a/a/e0;->a(Lcom/android/quicksearchbox/Corpus;Z)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_4
    iput p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;->a:I

    return-void
.end method
