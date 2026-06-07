.class public interface abstract Lcom/android/quicksearchbox/ShortcutRepository;
.super Ljava/lang/Object;
.source "ShortcutRepository.java"


# virtual methods
.method public abstract clearHistory()V
.end method

.method public abstract close()V
.end method

.method public abstract getCorpusScores(Lcom/android/quicksearchbox/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/android/quicksearchbox/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;Z",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "Lb/a/a/k0;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasHistory(Lcom/android/quicksearchbox/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeFromHistory(Lcom/android/quicksearchbox/SuggestionCursor;I)V
.end method

.method public abstract reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V
.end method

.method public abstract updateShortcut(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
.end method
