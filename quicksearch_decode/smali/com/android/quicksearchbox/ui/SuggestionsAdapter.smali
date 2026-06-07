.class public interface abstract Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;
.end method

.method public abstract getListAdapter()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract getSuggestion(J)Lb/a/a/w0;
.end method

.method public abstract getSuggestions()Lb/a/a/y0;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract onSuggestionClicked(Landroid/view/View;J)V
.end method

.method public abstract onSuggestionContactCallClicked(J)V
.end method

.method public abstract onSuggestionContactSmsClicked(J)V
.end method

.method public abstract onSuggestionForceTouch(Landroid/view/View;J)V
.end method

.method public abstract onSuggestionLongClicked(Landroid/view/View;J)V
.end method

.method public abstract onSuggestionMusicClicked(J)V
.end method

.method public abstract onSuggestionQueryRefineClicked(J)V
.end method

.method public abstract onSuggestionQuickContactClicked(J)V
.end method

.method public abstract onSuggestionRemoveFromHistoryClicked(J)V
.end method

.method public abstract setMaxPromoted(I)V
.end method

.method public abstract setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.end method

.method public abstract setPromoter(Lcom/android/quicksearchbox/Promoter;)V
.end method

.method public abstract setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
.end method

.method public abstract setSuggestions(Lb/a/a/y0;)V
.end method
