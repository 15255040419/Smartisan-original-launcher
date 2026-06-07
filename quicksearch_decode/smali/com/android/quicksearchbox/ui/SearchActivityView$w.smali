.class public Lcom/android/quicksearchbox/ui/SearchActivityView$w;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$w;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->A()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    move v2, v0

    .line 2
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {v3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {v3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lcom/android/quicksearchbox/ui/SearchActivityView;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {v2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 6
    array-length v2, p1

    :goto_1
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {v3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {v3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_1
    array-length p1, p1

    if-lez p1, :cond_2

    const-string p1, "A170082"

    .line 9
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->g(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->B()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->g(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$w;->a([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
