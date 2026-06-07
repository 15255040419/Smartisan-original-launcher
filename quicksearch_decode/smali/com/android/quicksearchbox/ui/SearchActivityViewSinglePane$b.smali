.class public Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;
.super Ljava/lang/Object;
.source "SearchActivityViewSinglePane.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    invoke-virtual {p1}, Lsmartisan/widget/SearchBar;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-virtual {p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQueryInner()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/n1/h0;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->E()V

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->A()Z

    move-result p1

    invoke-static {p1}, Lb/a/a/n1/d$n;->a(I)V

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQueryInner()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/d$p;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZ)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    return p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
