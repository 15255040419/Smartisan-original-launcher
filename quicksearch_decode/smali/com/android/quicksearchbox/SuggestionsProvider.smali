.class public interface abstract Lcom/android/quicksearchbox/SuggestionsProvider;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getSuggestions(Ljava/lang/String;Ljava/util/List;ZIZZ)Lb/a/a/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;ZIZZ)",
            "Lb/a/a/y0;"
        }
    .end annotation
.end method

.method public abstract getSuggestions(Ljava/lang/String;Ljava/util/List;ZIZZLcom/android/quicksearchbox/tnt/QueryFinishListener;)Lb/a/a/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;ZIZZ",
            "Lcom/android/quicksearchbox/tnt/QueryFinishListener;",
            ")",
            "Lb/a/a/y0;"
        }
    .end annotation
.end method
