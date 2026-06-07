.class public Lb/a/a/y0;
.super Ljava/lang/Object;
.source "Suggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/y0$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:Lb/a/a/k0;

.field public final f:Lb/a/a/y0$b;

.field public final g:Landroid/database/DataSetObservable;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final j:[Lcom/android/quicksearchbox/CorpusResult;

.field public k:Lcom/android/quicksearchbox/CorpusResult;

.field public l:I

.field public m:Ljava/util/concurrent/ExecutorService;

.field public final n:Z

.field public o:I

.field public p:Lcom/android/quicksearchbox/tnt/QueryFinishListener;

.field public q:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/android/quicksearchbox/tnt/QueryFinishListener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;IZ",
            "Lcom/android/quicksearchbox/tnt/QueryFinishListener;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/a/y0;->a:Z

    .line 3
    new-instance v1, Lb/a/a/y0$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lb/a/a/y0$b;-><init>(Lb/a/a/y0;Lb/a/a/y0$a;)V

    iput-object v1, p0, Lb/a/a/y0;->f:Lb/a/a/y0$b;

    .line 4
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lb/a/a/y0;->g:Landroid/database/DataSetObservable;

    .line 5
    iput v0, p0, Lb/a/a/y0;->l:I

    .line 6
    iput v0, p0, Lb/a/a/y0;->o:I

    .line 7
    iput-object p1, p0, Lb/a/a/y0;->c:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lb/a/a/y0;->b:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lb/a/a/y0;->h:Ljava/util/List;

    .line 10
    iput p4, p0, Lb/a/a/y0;->d:I

    .line 11
    iget-object p1, p0, Lb/a/a/y0;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/quicksearchbox/CorpusResult;

    iput-object p1, p0, Lb/a/a/y0;->j:[Lcom/android/quicksearchbox/CorpusResult;

    .line 12
    iput-boolean p5, p0, Lb/a/a/y0;->n:Z

    .line 13
    iput-object p6, p0, Lb/a/a/y0;->p:Lcom/android/quicksearchbox/tnt/QueryFinishListener;

    if-eqz p5, :cond_0

    .line 14
    iput-boolean p7, p0, Lb/a/a/y0;->q:Z

    .line 15
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/a/a/y0;->i:Ljava/util/HashMap;

    .line 16
    :goto_0
    iget-object p1, p0, Lb/a/a/y0;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 17
    iget-object p1, p0, Lb/a/a/y0;->i:Ljava/util/HashMap;

    iget-object p2, p0, Lb/a/a/y0;->h:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quicksearchbox/Corpus;

    invoke-interface {p2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/y0;->m:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/CorpusResult;

    if-eqz v1, :cond_0

    .line 24
    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/CorpusResult;
    .locals 5

    .line 32
    iget-object v0, p0, Lb/a/a/y0;->j:[Lcom/android/quicksearchbox/CorpusResult;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 33
    invoke-interface {v3}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/android/quicksearchbox/Promoter;I)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 2

    .line 30
    new-instance v0, Lb/a/a/x;

    iget-object v1, p0, Lb/a/a/y0;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lb/a/a/x;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-object v0

    .line 31
    :cond_0
    invoke-interface {p1, p0, p2, v0}, Lcom/android/quicksearchbox/Promoter;->pickPromoted(Lb/a/a/y0;ILb/a/a/w;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/y0;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/y0;->l:I

    return-void
.end method

.method public a(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 20
    iget-boolean v0, p0, Lb/a/a/y0;->a:Z

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lb/a/a/y0;->g:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "registerDataSetObserver() when closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 27
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 28
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lb/a/a/y0;->k()Lb/a/a/k0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb/a/a/k0;->d(Lcom/android/quicksearchbox/Suggestion;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lb/a/a/y0;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/CorpusResult;

    .line 4
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/CorpusResult;

    .line 6
    iget-object v1, p0, Lb/a/a/y0;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->getUserQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "INTERNAL_SEARCHABLE_LABEL_FILE"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got result for wrong query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/y0;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->getUserQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    :goto_2
    iget-object v1, p0, Lb/a/a/y0;->i:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected CorpusResult from corpus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSB.Suggestions"

    .line 14
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    goto/16 :goto_1

    .line 16
    :cond_5
    iget-object v2, p0, Lb/a/a/y0;->j:[Lcom/android/quicksearchbox/CorpusResult;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object v0, v2, v1

    .line 17
    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    iput-object v0, p0, Lb/a/a/y0;->k:Lcom/android/quicksearchbox/CorpusResult;

    goto/16 :goto_1

    .line 19
    :cond_6
    invoke-virtual {p0}, Lb/a/a/y0;->o()V

    return-void
.end method

.method public b(Lcom/android/quicksearchbox/Promoter;I)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 4

    .line 16
    invoke-virtual {p0, p1, p2}, Lb/a/a/y0;->a(Lcom/android/quicksearchbox/Promoter;I)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lb/a/a/y0;->a(Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 18
    iget p2, p0, Lb/a/a/y0;->o:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lb/a/a/y0;->o:I

    .line 19
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object p2

    invoke-static {p2}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lb/a/a/y0;->o:I

    iget-object v0, p0, Lb/a/a/y0;->h:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 21
    invoke-static {}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getQueryStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 22
    iget-object p2, p0, Lb/a/a/y0;->p:Lcom/android/quicksearchbox/tnt/QueryFinishListener;

    if-eqz p2, :cond_0

    .line 23
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/quicksearchbox/tnt/QueryFinishListener;->onQueryFinished(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final b()V
    .locals 6

    .line 2
    iget-boolean v0, p0, Lb/a/a/y0;->a:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lb/a/a/y0;->a:Z

    .line 4
    iget-object v0, p0, Lb/a/a/y0;->g:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 5
    iget-object v0, p0, Lb/a/a/y0;->e:Lb/a/a/k0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lb/a/a/y0;->r()V

    .line 7
    iget-object v0, p0, Lb/a/a/y0;->e:Lb/a/a/k0;

    invoke-virtual {v0}, Lb/a/a/k0;->close()V

    .line 8
    iput-object v1, p0, Lb/a/a/y0;->e:Lb/a/a/k0;

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v2, p0, Lb/a/a/y0;->j:[Lcom/android/quicksearchbox/CorpusResult;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v2, p0, Lb/a/a/y0;->j:[Lcom/android/quicksearchbox/CorpusResult;

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 14
    iget-object v1, p0, Lb/a/a/y0;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lb/a/a/b;

    invoke-direct {v2, v0}, Lb/a/a/b;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Double close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/y0;->g:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lb/a/a/y0;->j:[Lcom/android/quicksearchbox/CorpusResult;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb/a/a/y0;->j:[Lcom/android/quicksearchbox/CorpusResult;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lb/a/a/y0;->j:[Lcom/android/quicksearchbox/CorpusResult;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 4
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/y0;->h:Ljava/util/List;

    return-object v0
.end method

.method public finalize()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/a/a/y0;->a:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LEAK! Finalized without being closed: Suggestions["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/a/y0;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSB.Suggestions"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public g()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lb/a/a/y0;->j:[Lcom/android/quicksearchbox/CorpusResult;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v4}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/y0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/y0;->d:I

    return v0
.end method

.method public j()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/y0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/a/a/y0;->c()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getSourceCount() when closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Lb/a/a/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/y0;->e:Lb/a/a/k0;

    return-object v0
.end method

.method public l()Lcom/android/quicksearchbox/CorpusResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/y0;->k:Lcom/android/quicksearchbox/CorpusResult;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/y0;->a:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/y0;->q:Z

    return v0
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/y0;->g:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/y0;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/a/a/y0;->l:I

    .line 2
    iget v0, p0, Lb/a/a/y0;->l:I

    if-gtz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/y0;->b()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/a/y0;->q:Z

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/y0;->e:Lb/a/a/k0;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/a/y0;->f:Lb/a/a/y0$b;

    invoke-virtual {v0, v1}, Lb/a/a/w;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suggestions@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "{expectedCorpora="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/y0;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",countCorpusResults()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lb/a/a/y0;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/a/y0;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
