.class public Lb/a/a/f0;
.super Ljava/lang/Object;
.source "SearchableCorpora.java"

# interfaces
.implements Lcom/android/quicksearchbox/Corpora;


# instance fields
.field public final a:Landroid/database/DataSetObservable;

.field public final b:Lcom/android/quicksearchbox/SearchSettings;

.field public final c:Lcom/android/quicksearchbox/CorpusFactory;

.field public d:Lcom/android/quicksearchbox/Sources;

.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/quicksearchbox/Source;",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/android/quicksearchbox/Corpus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/Sources;Lcom/android/quicksearchbox/CorpusFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/database/DataSetObservable;

    invoke-direct {p1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object p1, p0, Lb/a/a/f0;->a:Landroid/database/DataSetObservable;

    .line 3
    iput-object p2, p0, Lb/a/a/f0;->b:Lcom/android/quicksearchbox/SearchSettings;

    .line 4
    iput-object p4, p0, Lb/a/a/f0;->c:Lcom/android/quicksearchbox/CorpusFactory;

    .line 5
    iput-object p3, p0, Lb/a/a/f0;->d:Lcom/android/quicksearchbox/Sources;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/f0;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public getAllCorpora()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/f0;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCorporaInAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/a/a/f0;->getEnabledCorpora()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/Corpus;

    .line 4
    invoke-interface {v2}, Lcom/android/quicksearchbox/Corpus;->includeInAll()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCorpus(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/f0;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    return-object p1
.end method

.method public getCorpusForSource(Lcom/android/quicksearchbox/Source;)Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/f0;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    return-object p1
.end method

.method public declared-synchronized getEnabledCorpora()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/f0;->g:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "QSB.DefaultCorpora"

    const-string v0, "Empty source name"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/f0;->d:Lcom/android/quicksearchbox/Sources;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/Sources;->getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;

    move-result-object p1

    return-object p1
.end method

.method public getWebCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/f0;->h:Lcom/android/quicksearchbox/Corpus;

    return-object v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/f0;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/f0;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized update()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/f0;->d:Lcom/android/quicksearchbox/Sources;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Sources;->update()V

    .line 2
    iget-object v0, p0, Lb/a/a/f0;->c:Lcom/android/quicksearchbox/CorpusFactory;

    iget-object v1, p0, Lb/a/a/f0;->d:Lcom/android/quicksearchbox/Sources;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/CorpusFactory;->createCorpora(Lcom/android/quicksearchbox/Sources;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lb/a/a/f0;->e:Ljava/util/HashMap;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lb/a/a/f0;->f:Ljava/util/HashMap;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lb/a/a/f0;->g:Ljava/util/List;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lb/a/a/f0;->h:Lcom/android/quicksearchbox/Corpus;

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 8
    iget-object v2, p0, Lb/a/a/f0;->e:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->getSources()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/Source;

    .line 10
    iget-object v4, p0, Lb/a/a/f0;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_1
    iget-object v2, p0, Lb/a/a/f0;->b:Lcom/android/quicksearchbox/SearchSettings;

    invoke-interface {v2, v1}, Lcom/android/quicksearchbox/SearchSettings;->isCorpusEnabled(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v2, p0, Lb/a/a/f0;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    iget-object v2, p0, Lb/a/a/f0;->h:Lcom/android/quicksearchbox/Corpus;

    if-eqz v2, :cond_3

    const-string v2, "QSB.DefaultCorpora"

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple web corpora: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/a/a/f0;->h:Lcom/android/quicksearchbox/Corpus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_3
    iput-object v1, p0, Lb/a/a/f0;->h:Lcom/android/quicksearchbox/Corpus;

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lb/a/a/f0;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/f0;->g:Ljava/util/List;

    .line 18
    invoke-virtual {p0}, Lb/a/a/f0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
