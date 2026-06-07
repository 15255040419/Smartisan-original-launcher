.class public interface abstract Lcom/android/quicksearchbox/Corpus;
.super Ljava/lang/Object;
.source "Corpus.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionCursorProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/SuggestionCursorProvider<",
        "Lcom/android/quicksearchbox/CorpusResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract clearSortScore()V
.end method

.method public abstract createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method public abstract createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method public abstract getCorpusIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getCorpusIconUri()Landroid/net/Uri;
.end method

.method public abstract getHint()Ljava/lang/CharSequence;
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getQueryThreshold()I
.end method

.method public abstract getSettingsDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getSortScore()I
.end method

.method public abstract getSources()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end method

.method public abstract includeInAll()Z
.end method

.method public abstract isCorpusDefaultEnabled()Z
.end method

.method public abstract isCorpusHidden()Z
.end method

.method public abstract isWebCorpus()Z
.end method

.method public abstract queryAfterZeroResults()Z
.end method

.method public abstract voiceSearchEnabled()Z
.end method
