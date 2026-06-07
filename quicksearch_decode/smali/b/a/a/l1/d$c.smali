.class public final Lb/a/a/l1/d$c;
.super Ljava/lang/Object;
.source "TNTSuggestionsListener.kt"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/l1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/l1/d;


# direct methods
.method public constructor <init>(Lb/a/a/l1/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;",
            "Landroid/view/View;",
            "J)V"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p2, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {p2, p1, p3, p4}, Lb/a/a/l1/d;->c(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z

    .line 2
    iget-object p1, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {p1}, Lb/a/a/l1/d;->e(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getQueryInner()Ljava/lang/String;

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
    iget-object v0, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {v0, p1, p2, p3}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 2
    iget-object p1, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {p1}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object p1

    iget-object p2, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-virtual {p2}, Lb/a/a/l1/d;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/n1/h0;->f(Landroid/content/Context;Ljava/lang/String;)V

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
    iget-object v0, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {v0, p1, p2, p3}, Lb/a/a/l1/d;->h(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 2
    iget-object p1, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {p1}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object p1

    iget-object p2, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-virtual {p2}, Lb/a/a/l1/d;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/n1/h0;->f(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSuggestionForceTouch(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;",
            "Landroid/view/View;",
            "J)V"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p2, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;JZ)V

    return-void
.end method

.method public onSuggestionLongClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;J)V
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

    const-string p1, "v"

    invoke-static {p2, p1}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object v0, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {v0, p1, p2, p3}, Lb/a/a/l1/d;->d(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 2
    iget-object p1, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {p1}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object p1

    iget-object p2, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-virtual {p2}, Lb/a/a/l1/d;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/n1/h0;->f(Landroid/content/Context;Ljava/lang/String;)V

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
    iget-object v0, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {v0, p1, p2, p3}, Lb/a/a/l1/d;->e(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

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
    iget-object v0, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {v0, p1, p2, p3}, Lb/a/a/l1/d;->b(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

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
    iget-object v0, p0, Lb/a/a/l1/d$c;->a:Lb/a/a/l1/d;

    invoke-static {v0, p1, p2, p3}, Lb/a/a/l1/d;->g(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method
