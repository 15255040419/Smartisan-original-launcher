.class public interface abstract Lcom/android/quicksearchbox/ui/SuggestionsListView;
.super Ljava/lang/Object;
.source "SuggestionsListView.java"


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
.method public abstract getSelectedItemId()J
.end method

.method public abstract getSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract setLimitSuggestionsToViewHeight(Z)V
.end method

.method public abstract setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.end method

.method public abstract setOnKeyListener(Landroid/view/View$OnKeyListener;)V
.end method

.method public abstract setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
.end method

.method public abstract setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "TA;>;)V"
        }
    .end annotation
.end method

.method public abstract setVisibility(I)V
.end method
