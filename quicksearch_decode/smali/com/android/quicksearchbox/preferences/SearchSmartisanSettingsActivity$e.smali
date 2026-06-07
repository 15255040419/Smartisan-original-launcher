.class public Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$e;
.super Ljava/lang/Object;
.source "SearchSmartisanSettingsActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;
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
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$e;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 1

    if-eq p1, p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$e;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$e;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$e;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$e;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$e;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->b(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$e;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->d(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V

    :cond_0
    return-void
.end method
