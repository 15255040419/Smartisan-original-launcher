.class public abstract Lb/a/a/o;
.super Ljava/lang/Object;
.source "CursorBackedSuggestionCursor.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionCursor;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/database/Cursor;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/a/o;->j:Z

    .line 3
    iput-object p1, p0, Lb/a/a/o;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    const-string p1, "suggest_format"

    .line 5
    invoke-virtual {p0, p1}, Lb/a/a/o;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/o;->c:I

    const-string p1, "suggest_text_1"

    .line 6
    invoke-virtual {p0, p1}, Lb/a/a/o;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/o;->d:I

    const-string p1, "suggest_text_2"

    .line 7
    invoke-virtual {p0, p1}, Lb/a/a/o;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/o;->e:I

    const-string p1, "suggest_text_2_url"

    .line 8
    invoke-virtual {p0, p1}, Lb/a/a/o;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/o;->f:I

    const-string p1, "suggest_icon_1"

    .line 9
    invoke-virtual {p0, p1}, Lb/a/a/o;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/o;->g:I

    const-string p1, "suggest_icon_2"

    .line 10
    invoke-virtual {p0, p1}, Lb/a/a/o;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/o;->h:I

    const-string p1, "suggest_spinner_while_refreshing"

    .line 11
    invoke-virtual {p0, p1}, Lb/a/a/o;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/o;->i:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "QSB.CBSC"

    const-string v2, "getColumnIndex() failed, "

    .line 3
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public a(I)Ljava/lang/String;
    .locals 3

    .line 4
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "QSB.CBSC"

    const-string v2, "getString() failed, "

    .line 7
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/o;->a(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lb/a/a/o;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb/a/a/o;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/a/a/o;->j:Z

    .line 3
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QSB.CBSC"

    const-string v2, "close() failed, "

    .line 5
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Double close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalize()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/a/a/o;->j:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LEAK! Finalized without being closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/a/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSB.CBSC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb/a/a/o;->j:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "QSB.CBSC"

    const-string v3, "getCount() failed, "

    .line 4
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getCount() after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPosition()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb/a/a/o;->j:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "QSB.CBSC"

    const-string v2, "getPosition() failed, "

    .line 3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getPosition after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    const-string v0, "suggest_shortcut_id"

    .line 1
    invoke-virtual {p0, v0}, Lb/a/a/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/o;->c:I

    invoke-virtual {p0, v0}, Lb/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIcon1()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/o;->g:I

    invoke-virtual {p0, v0}, Lb/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIcon2()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/o;->h:I

    invoke-virtual {p0, v0}, Lb/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentAction()Ljava/lang/String;
    .locals 1

    const-string v0, "suggest_intent_action"

    .line 1
    invoke-virtual {p0, v0}, Lb/a/a/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/a/a/o;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getDefaultIntentAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentDataString()Ljava/lang/String;
    .locals 3

    const-string v0, "suggest_intent_data"

    .line 1
    invoke-virtual {p0, v0}, Lb/a/a/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/a/a/o;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getDefaultIntentData()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "suggest_intent_data_id"

    .line 3
    invoke-virtual {p0, v1}, Lb/a/a/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSuggestionIntentExtraData()Ljava/lang/String;
    .locals 1

    const-string v0, "suggest_intent_extra_data"

    .line 1
    invoke-virtual {p0, v0}, Lb/a/a/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionLogType()Ljava/lang/String;
    .locals 1

    const-string v0, "suggest_log_type"

    .line 1
    invoke-virtual {p0, v0}, Lb/a/a/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "suggest_intent_query"

    .line 1
    invoke-virtual {p0, v0}, Lb/a/a/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSuggestionSource()Lcom/android/quicksearchbox/Source;
.end method

.method public getSuggestionText1()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/o;->d:I

    invoke-virtual {p0, v0}, Lb/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionText2()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/o;->e:I

    invoke-virtual {p0, v0}, Lb/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionText2Url()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/o;->f:I

    invoke-virtual {p0, v0}, Lb/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isSpinnerWhileRefreshing()Z
    .locals 2

    .line 1
    iget v0, p0, Lb/a/a/o;->i:I

    invoke-virtual {p0, v0}, Lb/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWebSearchSuggestion()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/o;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public moveTo(I)V
    .locals 3

    const-string v0, "QSB.CBSC"

    .line 1
    iget-boolean v1, p0, Lb/a/a/o;->j:Z

    if-nez v1, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lb/a/a/o;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToPosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") failed, count="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/a/o;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "moveToPosition() failed, "

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after close()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public moveToNext()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb/a/a/o;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "QSB.CBSC"

    const-string v3, "moveToNext() failed, "

    .line 4
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "moveToNext() after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
