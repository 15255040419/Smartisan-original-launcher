.class public Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$c;
.super Ljava/lang/Object;
.source "SearchSmartisanSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$c;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$c;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->a(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->getDragState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$c;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    .line 2
    invoke-static {p1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->a(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->getDragState()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$c;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    :cond_1
    return-void
.end method
