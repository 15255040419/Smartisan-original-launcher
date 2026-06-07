.class public Lcom/android/quicksearchbox/SearchActivity$s;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "s"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchActivity$s;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onSuggestionClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;",
            "Landroid/view/View;",
            "J)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {p2, p1, p3, p4}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p1, p1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQueryInner()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/d$p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSuggestionContactCallClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p1, p1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getAgentSearchMode()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lb/a/a/n1/d$g;->a(II)V

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "A170017"

    .line 4
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/SearchActivity;->c(Lcom/android/quicksearchbox/SearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lb/a/a/n1/d$g;->a(I)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p2}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/n1/h0;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p1, p1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->E()V

    return-void
.end method

.method public onSuggestionContactSmsClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->h(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p1, p1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getAgentSearchMode()I

    move-result p1

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lb/a/a/n1/d$g;->a(II)V

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "A170018"

    .line 4
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/SearchActivity;->c(Lcom/android/quicksearchbox/SearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Lb/a/a/n1/d$g;->a(I)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p2}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/n1/h0;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p1, p1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->E()V

    return-void
.end method

.method public onSuggestionForceTouch(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;",
            "Landroid/view/View;",
            "J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;JZ)V

    return-void
.end method

.method public onSuggestionLongClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;",
            "Landroid/view/View;",
            "J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;JZ)V

    return-void
.end method

.method public onSuggestionMusicClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->d(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p2}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/n1/h0;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p1, p1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->E()V

    return-void
.end method

.method public onSuggestionQueryRefineClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->e(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method

.method public onSuggestionQuickContactClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->b(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method

.method public onSuggestionRemoveFromHistoryClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$s;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->g(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method
