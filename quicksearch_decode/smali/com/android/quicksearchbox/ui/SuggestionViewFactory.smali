.class public interface abstract Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
.super Ljava/lang/Object;
.source "SuggestionViewFactory.java"


# virtual methods
.method public abstract canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
.end method

.method public abstract getSuggestionViewTypes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
.end method
