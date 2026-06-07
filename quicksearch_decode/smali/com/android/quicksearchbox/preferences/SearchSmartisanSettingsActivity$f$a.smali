.class public Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f$a;
.super Ljava/lang/Object;
.source "SearchSmartisanSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f$a;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 2
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    .line 4
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f$a;->a:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    iget-object v1, v1, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->c:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->c(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lb/a/a/e0;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lb/a/a/e0;->a(Lcom/android/quicksearchbox/Corpus;Z)V

    return-void
.end method
