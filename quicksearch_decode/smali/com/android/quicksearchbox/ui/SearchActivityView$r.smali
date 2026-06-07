.class public Lcom/android/quicksearchbox/ui/SearchActivityView$r;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "r"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$r;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$r;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->O()V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$r;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$r;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZ)V

    :cond_0
    return-void
.end method
