.class public Lb/a/a/m1/e;
.super Ljava/lang/Object;
.source "DelayingSuggestionsAdapter.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionsAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/m1/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public a:Landroid/database/DataSetObserver;

.field public b:Lb/a/a/y0;

.field public final c:Lb/a/a/m1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/m1/g<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/a/m1/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/m1/g<",
            "TA;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    return-void
.end method

.method public static b(Lb/a/a/y0;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 13
    iget-object v0, p0, Lb/a/a/m1/e;->b:Lb/a/a/y0;

    invoke-static {v0}, Lb/a/a/m1/e;->b(Lb/a/a/y0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    iget-object v1, p0, Lb/a/a/m1/e;->b:Lb/a/a/y0;

    invoke-virtual {v0, v1}, Lb/a/a/m1/g;->setSuggestions(Lb/a/a/y0;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lb/a/a/m1/e;->a(Lb/a/a/y0;)V

    :cond_0
    return-void
.end method

.method public final a(Lb/a/a/y0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->b:Lb/a/a/y0;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0}, Lb/a/a/m1/g;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lb/a/a/y0;->p()V

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lb/a/a/m1/e;->a:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 5
    new-instance v0, Lb/a/a/m1/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/a/m1/e$b;-><init>(Lb/a/a/m1/e;Lb/a/a/m1/e$a;)V

    iput-object v0, p0, Lb/a/a/m1/e;->a:Landroid/database/DataSetObserver;

    .line 6
    :cond_3
    iget-object v0, p0, Lb/a/a/m1/e;->b:Lb/a/a/y0;

    if-eqz v0, :cond_4

    .line 7
    iget-object v1, p0, Lb/a/a/m1/e;->a:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lb/a/a/y0;->b(Landroid/database/DataSetObserver;)V

    .line 8
    iget-object v0, p0, Lb/a/a/m1/e;->b:Lb/a/a/y0;

    invoke-virtual {p0}, Lb/a/a/m1/e;->getSuggestions()Lb/a/a/y0;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 9
    iget-object v0, p0, Lb/a/a/m1/e;->b:Lb/a/a/y0;

    invoke-virtual {v0}, Lb/a/a/y0;->p()V

    .line 10
    :cond_4
    iput-object p1, p0, Lb/a/a/m1/e;->b:Lb/a/a/y0;

    .line 11
    iget-object p1, p0, Lb/a/a/m1/e;->b:Lb/a/a/y0;

    if-eqz p1, :cond_5

    .line 12
    iget-object v0, p0, Lb/a/a/m1/e;->a:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lb/a/a/y0;->a(Landroid/database/DataSetObserver;)V

    :cond_5
    return-void
.end method

.method public getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0}, Lb/a/a/m1/g;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    return-object v0
.end method

.method public getListAdapter()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0}, Lb/a/a/m1/g;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion(J)Lb/a/a/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1, p2}, Lb/a/a/m1/g;->getSuggestion(J)Lb/a/a/w0;

    move-result-object p1

    return-object p1
.end method

.method public getSuggestions()Lb/a/a/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0}, Lb/a/a/m1/g;->getSuggestions()Lb/a/a/y0;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0}, Lb/a/a/m1/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onSuggestionClicked(Landroid/view/View;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/m1/g;->onSuggestionClicked(Landroid/view/View;J)V

    return-void
.end method

.method public onSuggestionContactCallClicked(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1, p2}, Lb/a/a/m1/g;->onSuggestionContactCallClicked(J)V

    return-void
.end method

.method public onSuggestionContactSmsClicked(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1, p2}, Lb/a/a/m1/g;->onSuggestionContactSmsClicked(J)V

    return-void
.end method

.method public onSuggestionForceTouch(Landroid/view/View;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/m1/g;->onSuggestionForceTouch(Landroid/view/View;J)V

    return-void
.end method

.method public onSuggestionLongClicked(Landroid/view/View;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/m1/g;->onSuggestionLongClicked(Landroid/view/View;J)V

    return-void
.end method

.method public onSuggestionMusicClicked(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1, p2}, Lb/a/a/m1/g;->onSuggestionMusicClicked(J)V

    return-void
.end method

.method public onSuggestionQueryRefineClicked(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1, p2}, Lb/a/a/m1/g;->onSuggestionQueryRefineClicked(J)V

    return-void
.end method

.method public onSuggestionQuickContactClicked(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1, p2}, Lb/a/a/m1/g;->onSuggestionQuickContactClicked(J)V

    return-void
.end method

.method public onSuggestionRemoveFromHistoryClicked(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1, p2}, Lb/a/a/m1/g;->onSuggestionRemoveFromHistoryClicked(J)V

    return-void
.end method

.method public setMaxPromoted(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1}, Lb/a/a/m1/g;->setMaxPromoted(I)V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1}, Lb/a/a/m1/g;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setPromoter(Lcom/android/quicksearchbox/Promoter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1}, Lb/a/a/m1/g;->setPromoter(Lcom/android/quicksearchbox/Promoter;)V

    return-void
.end method

.method public setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v0, p1}, Lb/a/a/m1/g;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    return-void
.end method

.method public setSuggestions(Lb/a/a/y0;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {p1, v0}, Lb/a/a/m1/g;->setSuggestions(Lb/a/a/y0;)V

    .line 2
    invoke-virtual {p0, v0}, Lb/a/a/m1/e;->a(Lb/a/a/y0;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lb/a/a/m1/e;->b(Lb/a/a/y0;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lb/a/a/m1/e;->c:Lb/a/a/m1/g;

    invoke-virtual {v1, p1}, Lb/a/a/m1/g;->setSuggestions(Lb/a/a/y0;)V

    .line 5
    invoke-virtual {p0, v0}, Lb/a/a/m1/e;->a(Lb/a/a/y0;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lb/a/a/m1/e;->a(Lb/a/a/y0;)V

    :goto_0
    return-void
.end method
