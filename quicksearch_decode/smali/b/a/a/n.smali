.class public Lb/a/a/n;
.super Lb/a/a/o;
.source "CursorBackedSourceResult.java"

# interfaces
.implements Lcom/android/quicksearchbox/SourceResult;


# instance fields
.field public final k:Lcom/android/quicksearchbox/Source;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lb/a/a/n;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lb/a/a/o;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 3
    iput-object p1, p0, Lb/a/a/n;->k:Lcom/android/quicksearchbox/Source;

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lb/a/a/p;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/a/a/o;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lb/a/a/p;->a(Landroid/database/Cursor;I)Lb/a/a/p;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/n;->k:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public getSuggestionIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/n;->k:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/n;->k:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public isHistorySuggestion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/n;->k:Lcom/android/quicksearchbox/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/a/o;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
