.class public Lcom/android/quicksearchbox/ui/SearchActivityView$y;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "y"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$y;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/quicksearchbox/ui/SuggestionsListView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/quicksearchbox/ui/SuggestionsListView;

    .line 3
    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->getSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->getSelectedItemId()J

    move-result-wide v1

    .line 5
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;JILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$y;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {p1, p2, p3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lcom/android/quicksearchbox/ui/SearchActivityView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
