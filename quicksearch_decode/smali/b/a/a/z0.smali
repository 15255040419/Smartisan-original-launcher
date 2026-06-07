.class public Lb/a/a/z0;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/z0$a;
    }
.end annotation


# instance fields
.field public final a:Lb/a/a/m;

.field public final b:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field public final c:Landroid/os/Handler;

.field public final d:Lb/a/a/n0;

.field public final e:Lcom/android/quicksearchbox/Logger;

.field public f:Lb/a/a/n1/g;


# direct methods
.method public constructor <init>(Lb/a/a/m;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/z0;->a:Lb/a/a/m;

    .line 3
    iput-object p2, p0, Lb/a/a/z0;->b:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 4
    iput-object p3, p0, Lb/a/a/z0;->c:Landroid/os/Handler;

    .line 5
    iput-object p4, p0, Lb/a/a/z0;->e:Lcom/android/quicksearchbox/Logger;

    .line 6
    new-instance p1, Lb/a/a/n0;

    iget-object p2, p0, Lb/a/a/z0;->a:Lb/a/a/m;

    invoke-direct {p1, p2}, Lb/a/a/n0;-><init>(Lb/a/a/m;)V

    iput-object p1, p0, Lb/a/a/z0;->d:Lb/a/a/n0;

    return-void
.end method

.method public static synthetic a(Lb/a/a/z0;)Lcom/android/quicksearchbox/Logger;
    .locals 0

    .line 2
    iget-object p0, p0, Lb/a/a/z0;->e:Lcom/android/quicksearchbox/Logger;

    return-object p0
.end method

.method public static synthetic a(Lb/a/a/z0;Lcom/android/quicksearchbox/CorpusResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/z0;->a(Lcom/android/quicksearchbox/CorpusResult;)V

    return-void
.end method

.method public static b(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 2
    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p2

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 9
    invoke-virtual {p0, v1, p1}, Lb/a/a/z0;->a(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 17
    iget-object v2, p0, Lb/a/a/z0;->a:Lb/a/a/m;

    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/a/m;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-object p1

    .line 11
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    .line 13
    iget-object v1, p0, Lb/a/a/z0;->a:Lb/a/a/m;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/m;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lb/a/a/z0;->f:Lb/a/a/n1/g;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lb/a/a/n1/g;->cancelPendingTasks()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb/a/a/z0;->f:Lb/a/a/n1/g;

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/quicksearchbox/CorpusResult;)V
    .locals 2

    .line 20
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lb/a/a/z0;->d:Lb/a/a/n0;

    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    .line 22
    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getUserQuery()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v0, v1, p1}, Lb/a/a/n0;->a(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)Z
    .locals 1

    .line 19
    iget-object v0, p0, Lb/a/a/z0;->d:Lb/a/a/n0;

    invoke-virtual {v0, p1, p2}, Lb/a/a/n0;->b(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/z0;->a:Lb/a/a/m;

    invoke-virtual {v0}, Lb/a/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lb/a/a/z0;->a:Lb/a/a/m;

    invoke-virtual {p1}, Lb/a/a/m;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/z0;->a()V

    return-void
.end method

.method public getSuggestions(Ljava/lang/String;Ljava/util/List;ZIZZ)Lb/a/a/y0;
    .locals 8
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

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lb/a/a/z0;->getSuggestions(Ljava/lang/String;Ljava/util/List;ZIZZLcom/android/quicksearchbox/tnt/QueryFinishListener;)Lb/a/a/y0;

    move-result-object p1

    return-object p1
.end method

.method public getSuggestions(Ljava/lang/String;Ljava/util/List;ZIZZLcom/android/quicksearchbox/tnt/QueryFinishListener;)Lb/a/a/y0;
    .locals 22
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

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move/from16 v15, p4

    .line 2
    invoke-static {}, Lb/c/a/a/d;->c()Lb/c/a/a/d;

    move-result-object v1

    move-object/from16 v9, p1

    invoke-virtual {v1, v9}, Lb/c/a/a/d;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    if-eqz p3, :cond_0

    .line 3
    iget-object v1, v8, Lb/a/a/z0;->d:Lb/a/a/n0;

    invoke-virtual {v1}, Lb/a/a/n0;->a()V

    :cond_0
    const/4 v1, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v15, v1, :cond_1

    move v13, v12

    goto :goto_0

    :cond_1
    move v13, v11

    :goto_0
    if-eqz v13, :cond_2

    .line 4
    invoke-virtual {v8, v0}, Lb/a/a/z0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v8, v0, v15}, Lb/a/a/z0;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 6
    :goto_1
    invoke-virtual {v8, v10, v0}, Lb/a/a/z0;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 7
    new-instance v20, Lb/a/a/y0;

    .line 8
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v8, Lb/a/a/z0;->a:Lb/a/a/m;

    .line 9
    invoke-virtual {v0}, Lb/a/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    move v5, v12

    goto :goto_2

    :cond_3
    move v5, v11

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v14

    move/from16 v4, p4

    move-object/from16 v6, p7

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lb/a/a/y0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/android/quicksearchbox/tnt/QueryFinishListener;Z)V

    .line 10
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    return-object v20

    .line 11
    :cond_4
    invoke-static {v14}, Lb/a/a/z0;->b(Ljava/util/List;)I

    move-result v0

    if-nez p6, :cond_5

    if-eqz p5, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    if-nez v0, :cond_6

    .line 12
    invoke-static {}, Lb/a/a/m;->n()I

    move-result v0

    :cond_6
    move v7, v0

    .line 13
    new-instance v0, Lb/a/a/n1/g;

    iget-object v1, v8, Lb/a/a/z0;->b:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    invoke-direct {v0, v1}, Lb/a/a/n1/g;-><init>(Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    iput-object v0, v8, Lb/a/a/z0;->f:Lb/a/a/n1/g;

    .line 14
    invoke-static {}, Lb/a/a/m;->p()J

    move-result-wide v5

    .line 15
    invoke-virtual {v8, v10}, Lb/a/a/z0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    new-instance v16, Lb/a/a/z0$a;

    iget-object v2, v8, Lb/a/a/z0;->f:Lb/a/a/n1/g;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v3, v20

    move v4, v7

    move/from16 v21, v7

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lb/a/a/z0$a;-><init>(Lb/a/a/z0;Lb/a/a/n1/g;Lb/a/a/y0;IJZ)V

    goto :goto_3

    :cond_7
    move/from16 v21, v7

    .line 17
    new-instance v0, Lb/a/a/n1/t;

    invoke-direct {v0}, Lb/a/a/n1/t;-><init>()V

    .line 18
    invoke-virtual/range {v20 .. v20}, Lb/a/a/y0;->d()V

    .line 19
    :goto_3
    invoke-static {v13}, Lb/a/a/m;->a(Z)I

    move-result v1

    .line 20
    iget-object v13, v8, Lb/a/a/z0;->f:Lb/a/a/n1/g;

    iget-object v2, v8, Lb/a/a/z0;->c:Landroid/os/Handler;

    .line 21
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v12, :cond_8

    move/from16 v16, v12

    goto :goto_4

    :cond_8
    move/from16 v16, v11

    :goto_4
    move-object/from16 v9, p1

    move v11, v1

    move-object v12, v14

    move-object v14, v2

    move-object v15, v0

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    .line 22
    invoke-static/range {v9 .. v19}, Lb/a/a/c0;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Iterable;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;ZIZZ)V

    .line 23
    iget-object v0, v8, Lb/a/a/z0;->f:Lb/a/a/n1/g;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lb/a/a/n1/g;->a(I)V

    return-object v20
.end method
