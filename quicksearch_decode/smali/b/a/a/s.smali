.class public Lb/a/a/s;
.super Ljava/lang/Object;
.source "EventLogLogger.java"

# interfaces
.implements Lcom/android/quicksearchbox/Logger;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/a/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/s;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lb/a/a/s;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lb/a/a/s;->b:Ljava/util/Random;

    return-void
.end method

.method public static a(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/quicksearchbox/SuggestionCursor;)Ljava/lang/String;
    .locals 7

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    if-lez v1, :cond_1

    const/16 v3, 0x7c

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-interface {p0, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 8
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v3

    .line 10
    :goto_1
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionLogType()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v4

    .line 11
    :cond_3
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v4, "shortcut"

    .line 12
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    :cond_1
    invoke-static {v1}, Lb/a/a/s;->a(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    invoke-static {}, Lb/a/a/m;->k()I

    move-result v0

    .line 2
    iget-object v1, p0, Lb/a/a/s;->b:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logExit(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/a/a/s;->a(Lcom/android/quicksearchbox/SuggestionCursor;)Ljava/lang/String;

    return-void
.end method

.method public logLatency(Lcom/android/quicksearchbox/CorpusResult;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/s;->a(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getLatency()I

    .line 4
    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getUserQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    return-void
.end method

.method public logSearch(Lcom/android/quicksearchbox/Corpus;II)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/a/a/s;->a(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    return-void
.end method

.method public logStart(IILjava/lang/String;Lcom/android/quicksearchbox/Corpus;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Corpus;",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lb/a/a/s;->a(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    .line 2
    invoke-static {p5}, Lb/a/a/s;->a(Ljava/util/Collection;)Ljava/lang/String;

    return-void
.end method

.method public logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lb/a/a/s;->a(Lcom/android/quicksearchbox/SuggestionCursor;)Ljava/lang/String;

    .line 2
    invoke-static {p4}, Lb/a/a/s;->a(Ljava/util/Collection;)Ljava/lang/String;

    .line 3
    invoke-interface {p3}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    return-void
.end method

.method public logVoiceSearch(Lcom/android/quicksearchbox/Corpus;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/a/a/s;->a(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    return-void
.end method
