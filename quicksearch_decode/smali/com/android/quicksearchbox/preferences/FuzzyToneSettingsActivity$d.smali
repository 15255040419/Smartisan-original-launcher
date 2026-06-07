.class public Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;
.super Ljava/lang/Object;
.source "FuzzyToneSettingsActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/dslv/SlideListView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;->b:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;->a:I

    return-void
.end method


# virtual methods
.method public onDown(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;->b:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-static {v0}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)Lcom/android/quicksearchbox/dslv/SlideListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;->b:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-static {v1}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)Lcom/android/quicksearchbox/dslv/SlideListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v2, 0x7f080119

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3
    iput p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;->a:I

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public setChecked(IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;->a:I

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
    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;->b:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-static {v2}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)Lcom/android/quicksearchbox/dslv/SlideListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;->b:Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-static {v3}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)Lcom/android/quicksearchbox/dslv/SlideListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const v3, 0x7f080119

    .line 3
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v2, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_4
    iput p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;->a:I

    return-void
.end method
