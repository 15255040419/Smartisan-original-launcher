.class public Lb/a/a/p0;
.super Lb/a/a/c;
.source "SingleSourceCorpus.java"


# instance fields
.field public final d:Lcom/android/quicksearchbox/Source;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/Source;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/a/c;-><init>(Landroid/content/Context;Lb/a/a/m;)V

    .line 2
    iput-object p3, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    return-void
.end method


# virtual methods
.method public createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0, p1, p2}, Lcom/android/quicksearchbox/Source;->createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/Source;->createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getCorpusIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCorpusIconUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getSourceIconUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryThreshold()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getQueryThreshold()I

    move-result v0

    return v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getSettingsDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSources()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/CorpusResult;
    .locals 2

    .line 2
    new-instance p3, Lb/a/a/v;

    invoke-direct {p3}, Lb/a/a/v;-><init>()V

    .line 3
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/android/quicksearchbox/Source;->getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SourceResult;

    move-result-object p2

    .line 4
    invoke-virtual {p3}, Lb/a/a/v;->a()I

    move-result p3

    .line 5
    new-instance p4, Lb/a/a/q0;

    invoke-direct {p4, p0, p1, p2, p3}, Lb/a/a/q0;-><init>(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;I)V

    return-object p4
.end method

.method public bridge synthetic getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/a/a/p0;->getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/CorpusResult;

    move-result-object p1

    return-object p1
.end method

.method public includeInAll()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->includeInAll()Z

    move-result v0

    return v0
.end method

.method public isWebCorpus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->queryAfterZeroResults()Z

    move-result v0

    return v0
.end method

.method public voiceSearchEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/p0;->d:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->voiceSearchEnabled()Z

    move-result v0

    return v0
.end method
