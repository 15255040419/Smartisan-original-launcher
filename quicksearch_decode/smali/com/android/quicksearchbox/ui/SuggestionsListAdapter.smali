.class public Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;
.super Lb/a/a/m1/g;
.source "SuggestionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;,
        Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$SuggestionsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/m1/g<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public m:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;

.field public n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/a/m1/g;-><init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 2
    iput-object p2, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->n:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;

    invoke-direct {p1, p0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;-><init>(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->m:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->n:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->m:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->m:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public getListAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->m:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;

    return-object v0
.end method

.method public bridge synthetic getListAdapter()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->getListAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion(J)Lb/a/a/w0;
    .locals 2

    .line 1
    new-instance v0, Lb/a/a/w0;

    invoke-virtual {p0}, Lb/a/a/m1/g;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    long-to-int p1, p1

    invoke-direct {v0, v1, p1}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->m:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
