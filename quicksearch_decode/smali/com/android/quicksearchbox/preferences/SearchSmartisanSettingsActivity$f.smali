.class public Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;
.super Landroid/widget/BaseAdapter;
.source "SearchSmartisanSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/view/LayoutInflater;

.field public final synthetic c:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->c:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0b008a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$g;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$g;-><init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;)V

    const v0, 0x7f080118

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$g;->a:Landroid/widget/CheckBox;

    const v0, 0x7f08011b

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$g;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p3, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$g;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f$a;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f$a;-><init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$g;

    .line 9
    :goto_0
    iget-object v0, p3, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$g;->b:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p3, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$g;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->c:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;

    invoke-static {v1}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->c(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lb/a/a/e0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb/a/a/e0;->d(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 11
    iget-object p3, p3, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$g;->a:Landroid/widget/CheckBox;

    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
