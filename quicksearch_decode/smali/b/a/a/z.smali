.class public abstract Lb/a/a/z;
.super Lb/a/a/c;
.source "MultiSourceCorpus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/z$a;
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lb/a/a/m;Ljava/util/concurrent/Executor;[Lcom/android/quicksearchbox/Source;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/a/c;-><init>(Landroid/content/Context;Lb/a/a/m;)V

    .line 2
    iput-object p3, p0, Lb/a/a/z;->d:Ljava/util/concurrent/Executor;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/a/a/z;->e:Ljava/util/ArrayList;

    .line 4
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p4, p2

    .line 5
    invoke-virtual {p0, p3}, Lb/a/a/z;->a(Lcom/android/quicksearchbox/Source;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/util/ArrayList;I)Lb/a/a/z$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;I)",
            "Lb/a/a/z$a;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end method

.method public a(Lcom/android/quicksearchbox/Source;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lb/a/a/z;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lb/a/a/z;->f:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lb/a/a/z;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lb/a/a/z;->g:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lb/a/a/z;->h:Z

    .line 4
    iput-boolean v1, p0, Lb/a/a/z;->i:Z

    .line 5
    iput-boolean v1, p0, Lb/a/a/z;->j:Z

    .line 6
    invoke-virtual {p0}, Lb/a/a/z;->getSources()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/Source;

    .line 7
    iget v4, p0, Lb/a/a/z;->g:I

    invoke-interface {v3}, Lcom/android/quicksearchbox/Source;->getQueryThreshold()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lb/a/a/z;->g:I

    .line 8
    iget-boolean v4, p0, Lb/a/a/z;->h:Z

    invoke-interface {v3}, Lcom/android/quicksearchbox/Source;->queryAfterZeroResults()Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lb/a/a/z;->h:Z

    .line 9
    iget-boolean v4, p0, Lb/a/a/z;->i:Z

    invoke-interface {v3}, Lcom/android/quicksearchbox/Source;->voiceSearchEnabled()Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lb/a/a/z;->i:Z

    .line 10
    iget-boolean v4, p0, Lb/a/a/z;->j:Z

    invoke-interface {v3}, Lcom/android/quicksearchbox/Source;->includeInAll()Z

    move-result v3

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lb/a/a/z;->j:Z

    goto :goto_0

    .line 11
    :cond_1
    iget v2, p0, Lb/a/a/z;->g:I

    if-ne v2, v0, :cond_2

    .line 12
    iput v1, p0, Lb/a/a/z;->g:I

    :cond_2
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lb/a/a/z;->f:Z

    return-void
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
    iget-object v0, p0, Lb/a/a/z;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/CorpusResult;
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    .line 2
    new-instance v10, Lb/a/a/v;

    invoke-direct {v10}, Lb/a/a/v;-><init>()V

    move/from16 v1, p3

    .line 3
    invoke-virtual {p0, v9, v1}, Lb/a/a/z;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v11, Lb/a/a/n1/f;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v11, v2}, Lb/a/a/n1/f;-><init>(I)V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v12, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v12, v2

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/quicksearchbox/Source;

    .line 8
    new-instance v14, Lb/a/a/c0;

    const/4 v5, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v6, v11

    move v7, v12

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lb/a/a/c0;-><init>(Ljava/lang/String;ILcom/android/quicksearchbox/SuggestionCursorProvider;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;ZI)V

    .line 9
    iget-object v1, v0, Lb/a/a/z;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v11}, Lb/a/a/n1/f;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 11
    invoke-virtual {v10}, Lb/a/a/v;->a()I

    move-result v2

    .line 12
    invoke-virtual {p0, v9, v1, v2}, Lb/a/a/z;->a(Ljava/lang/String;Ljava/util/ArrayList;I)Lb/a/a/z$a;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lb/a/a/z$a;->j()V

    return-object v1
.end method

.method public bridge synthetic getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/a/a/z;->getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/CorpusResult;

    move-result-object p1

    return-object p1
.end method

.method public includeInAll()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/z;->b()V

    .line 2
    iget-boolean v0, p0, Lb/a/a/z;->j:Z

    return v0
.end method
