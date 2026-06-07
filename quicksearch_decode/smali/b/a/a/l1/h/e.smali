.class public Lb/a/a/l1/h/e;
.super Ljava/lang/Object;
.source "WebSourceCorpusResult.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusResult;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "web"

    .line 2
    iput-object v0, p0, Lb/a/a/l1/h/e;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lb/a/a/l1/h/e;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lb/a/a/l1/h/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatency()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionIcon1()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionIcon2()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionIntentAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/l1/h/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIntentComponent()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionIntentDataString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/l1/h/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIntentExtraData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionLogType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionQuery()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/l1/h/e$a;

    invoke-direct {v0, p0}, Lb/a/a/l1/h/e$a;-><init>(Lb/a/a/l1/h/e;)V

    return-object v0
.end method

.method public getSuggestionText1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/l1/h/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionText2()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestionText2Url()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserQuery()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isHistorySuggestion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSpinnerWhileRefreshing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWebSearchSuggestion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveTo(I)V
    .locals 0

    return-void
.end method

.method public moveToNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
