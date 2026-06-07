.class public interface abstract Lcom/android/quicksearchbox/Corpora;
.super Ljava/lang/Object;
.source "Corpora.java"


# virtual methods
.method public abstract getAllCorpora()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCorporaInAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCorpus(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;
.end method

.method public abstract getCorpusForSource(Lcom/android/quicksearchbox/Source;)Lcom/android/quicksearchbox/Corpus;
.end method

.method public abstract getEnabledCorpora()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;
.end method

.method public abstract getWebCorpus()Lcom/android/quicksearchbox/Corpus;
.end method

.method public abstract registerDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract update()V
.end method
