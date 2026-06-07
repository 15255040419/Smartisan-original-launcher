.class public Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$d;
.super Ljava/lang/Object;
.source "SearchSmartisanSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$d;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const p1, 0x7f080118

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$d;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {p2}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    move-result-object p2

    iget-object p4, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$d;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {p4}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->a(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p2, p3}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quicksearchbox/Corpus;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object p3, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$d;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {p3}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->c(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lb/a/a/e0;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p4

    invoke-virtual {p3, p2, p4}, Lb/a/a/e0;->a(Lcom/android/quicksearchbox/Corpus;Z)V

    .line 6
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-interface {p2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/n1/d$s;->a(ZLjava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$d;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->d(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
