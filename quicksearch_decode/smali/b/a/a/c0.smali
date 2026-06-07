.class public Lb/a/a/c0;
.super Ljava/lang/Object;
.source "QueryTask.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/android/quicksearchbox/SuggestionCursor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/NamedTask;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Lcom/android/quicksearchbox/SuggestionCursorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/SuggestionCursorProvider<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final e:Landroid/os/Handler;

.field public final f:Lcom/android/quicksearchbox/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/quicksearchbox/SuggestionCursorProvider;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/quicksearchbox/SuggestionCursorProvider<",
            "TC;>;",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TC;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/c0;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lb/a/a/c0;->b:I

    .line 4
    iput-object p3, p0, Lb/a/a/c0;->d:Lcom/android/quicksearchbox/SuggestionCursorProvider;

    .line 5
    iput-object p4, p0, Lb/a/a/c0;->e:Landroid/os/Handler;

    .line 6
    iput-object p5, p0, Lb/a/a/c0;->f:Lcom/android/quicksearchbox/util/Consumer;

    .line 7
    iput-boolean p6, p0, Lb/a/a/c0;->g:Z

    .line 8
    iput p7, p0, Lb/a/a/c0;->c:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILcom/android/quicksearchbox/SuggestionCursorProvider;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;ZIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/quicksearchbox/SuggestionCursorProvider<",
            "TC;>;",
            "Lcom/android/quicksearchbox/util/NamedTaskExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TC;>;ZIZ)V"
        }
    .end annotation

    if-eqz p9, :cond_0

    .line 5
    invoke-interface {p3}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 6
    :goto_0
    new-instance v0, Lb/a/a/c0;

    move-object v1, v0

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lb/a/a/c0;-><init>(Ljava/lang/String;ILcom/android/quicksearchbox/SuggestionCursorProvider;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;ZI)V

    move-object v1, p4

    .line 7
    invoke-interface {p4, v0}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->execute(Lcom/android/quicksearchbox/util/NamedTask;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Iterable;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;ZIZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/quicksearchbox/SuggestionCursorProvider<",
            "TC;>;>;",
            "Lcom/android/quicksearchbox/util/NamedTaskExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TC;>;ZIZZ)V"
        }
    .end annotation

    if-nez p10, :cond_0

    if-eqz p9, :cond_0

    .line 1
    new-instance v0, Lb/a/a/i1/a;

    move-object v10, p1

    move-object/from16 v11, p5

    invoke-direct {v0, p1, v11}, Lb/a/a/i1/a;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    move-object/from16 v12, p4

    .line 2
    invoke-interface {v12, v0}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->execute(Lcom/android/quicksearchbox/util/NamedTask;)V

    goto :goto_0

    :cond_0
    move-object v10, p1

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    .line 3
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/quicksearchbox/SuggestionCursorProvider;

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 4
    invoke-static/range {v0 .. v9}, Lb/a/a/c0;->a(Ljava/lang/String;Ljava/lang/String;ILcom/android/quicksearchbox/SuggestionCursorProvider;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;ZIZ)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/c0;->d:Lcom/android/quicksearchbox/SuggestionCursorProvider;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/a/c0;->d:Lcom/android/quicksearchbox/SuggestionCursorProvider;

    iget-object v1, p0, Lb/a/a/c0;->a:Ljava/lang/String;

    iget v2, p0, Lb/a/a/c0;->b:I

    iget-boolean v3, p0, Lb/a/a/c0;->g:Z

    iget v4, p0, Lb/a/a/c0;->c:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/a/a/c0;->e:Landroid/os/Handler;

    iget-object v2, p0, Lb/a/a/c0;->f:Lcom/android/quicksearchbox/util/Consumer;

    invoke-static {v1, v2, v0}, Lb/a/a/n1/k;->a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/c0;->d:Lcom/android/quicksearchbox/SuggestionCursorProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/c0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
