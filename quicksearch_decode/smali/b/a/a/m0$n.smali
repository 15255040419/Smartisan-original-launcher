.class public Lb/a/a/m0$n;
.super Lb/a/a/o;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field public final l:I

.field public final synthetic m:Lb/a/a/m0;


# direct methods
.method public constructor <init>(Lb/a/a/m0;Ljava/util/HashMap;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Source;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/a/a/m0$n;->m:Lb/a/a/m0;

    .line 2
    invoke-direct {p0, p3, p4}, Lb/a/a/o;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 3
    iput-object p2, p0, Lb/a/a/m0$n;->k:Ljava/util/HashMap;

    .line 4
    sget-object p1, Lb/a/a/m0$l;->s:Lb/a/a/m0$l;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/m0$n;->l:I

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    iget v1, p0, Lb/a/a/m0$n;->l:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lb/a/a/u;

    invoke-direct {v1, v0}, Lb/a/a/u;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 4
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse JSON extras from DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSB.CBSC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionIcon2()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/o;->isSpinnerWhileRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/m0$n;->m:Lb/a/a/m0;

    invoke-static {v0, p0}, Lb/a/a/m0;->a(Lb/a/a/m0;Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/m0$n;->m:Lb/a/a/m0;

    invoke-static {v0}, Lb/a/a/m0;->c(Lb/a/a/m0;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lb/a/a/o;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentComponent()Landroid/content/ComponentName;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    sget-object v1, Lb/a/a/m0$l;->l:Lb/a/a/m0$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/m0;->a(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionSource()Lcom/android/quicksearchbox/Source;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    sget-object v1, Lb/a/a/m0$l;->c:Lb/a/a/m0$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lb/a/a/m0$n;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Source;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v2, p0, Lb/a/a/o;->b:Landroid/database/Cursor;

    sget-object v3, Lb/a/a/m0$l;->d:Lb/a/a/m0$l;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5
    invoke-interface {v0, v2}, Lcom/android/quicksearchbox/Source;->isVersionCodeCompatible(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    return-object v0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing source for shortcut."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isHistorySuggestion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
