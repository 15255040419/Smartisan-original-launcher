.class public Lb/a/a/u0;
.super Lb/a/a/g;
.source "SuggestionCursorWrapper.java"


# instance fields
.field public final b:Lcom/android/quicksearchbox/SuggestionCursor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/a/g;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lb/a/a/u0;->b:Lcom/android/quicksearchbox/SuggestionCursor;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/android/quicksearchbox/Suggestion;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/u0;->a()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/a/a/u0;->b:Lcom/android/quicksearchbox/SuggestionCursor;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/u0;->b:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/u0;->b:Lcom/android/quicksearchbox/SuggestionCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getExtraColumns()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/u0;->b:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getExtraColumns()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/u0;->b:Lcom/android/quicksearchbox/SuggestionCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public moveTo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/u0;->b:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    :cond_0
    return-void
.end method

.method public moveToNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/u0;->b:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->moveToNext()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/u0;->b:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/u0;->b:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
