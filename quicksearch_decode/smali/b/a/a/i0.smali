.class public Lb/a/a/i0;
.super Ljava/lang/Object;
.source "SearchableSources.java"

# interfaces
.implements Lcom/android/quicksearchbox/Sources;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/SearchManager;

.field public final c:Landroid/os/Handler;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/android/quicksearchbox/Source;

.field public final f:Lcom/android/quicksearchbox/util/NamedTaskExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Lb/a/a/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/i0;->a:Landroid/content/Context;

    const-string p4, "search"

    .line 3
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    iput-object p1, p0, Lb/a/a/i0;->b:Landroid/app/SearchManager;

    .line 4
    iput-object p2, p0, Lb/a/a/i0;->c:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lb/a/a/i0;->f:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-void
.end method

.method public static e()Lcom/android/quicksearchbox/Source;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/SearchableInfo;)Lb/a/a/h0;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 16
    :cond_0
    :try_start_0
    new-instance v1, Lb/a/a/h0;

    iget-object v2, p0, Lb/a/a/i0;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lb/a/a/i0;->d()Landroid/os/Handler;

    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lb/a/a/i0;->c()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lb/a/a/h0;-><init>(Landroid/content/Context;Landroid/app/SearchableInfo;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QSB.SearchableSources"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lb/a/a/i0;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/a/i0;->d:Ljava/util/HashMap;

    new-instance v7, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;

    iget-object v2, p0, Lb/a/a/i0;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lb/a/a/i0;->d()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {p0}, Lb/a/a/i0;->c()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v6

    const-string v3, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.calculator"

    const-string v4, "INTERNAL_SEARCHABLE_LABEL_CALCULATOR"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.calculator"

    .line 4
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lb/a/a/i0;->d:Ljava/util/HashMap;

    new-instance v7, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;

    iget-object v2, p0, Lb/a/a/i0;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Lb/a/a/i0;->d()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {p0}, Lb/a/a/i0;->c()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v6

    const-string v3, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.appstore"

    const-string v4, "INTERNAL_SEARCHABLE_LABEL_APPSTORE"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.appstore"

    .line 7
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    iget-object v8, p0, Lb/a/a/i0;->d:Ljava/util/HashMap;

    new-instance v9, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;

    iget-object v3, p0, Lb/a/a/i0;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Lb/a/a/i0;->d()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p0}, Lb/a/a/i0;->c()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v7

    const-string v5, "INTERNAL_SEARCHABLE_LABEL_FILE"

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    .line 11
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lb/a/a/i0;->d:Ljava/util/HashMap;

    new-instance v7, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;

    iget-object v2, p0, Lb/a/a/i0;->a:Landroid/content/Context;

    .line 13
    invoke-virtual {p0}, Lb/a/a/i0;->d()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {p0}, Lb/a/a/i0;->c()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v6

    const-string v3, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.web"

    const-string v4, "INTERNAL_SEARCHABLE_LABEL_WEB"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.web"

    .line 14
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/Source;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lb/a/a/i0;->d:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/i0;->b:Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "QSB.SearchableSources"

    const-string v1, "getSearchablesInGlobalSearch() returned null"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo;

    .line 4
    invoke-virtual {p0, v1}, Lb/a/a/i0;->a(Landroid/app/SearchableInfo;)Lb/a/a/h0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lb/a/a/i0;->a(Lcom/android/quicksearchbox/Source;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/i0;->f:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-object v0
.end method

.method public createSourceFor(Landroid/content/ComponentName;)Lcom/android/quicksearchbox/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/i0;->b:Landroid/app/SearchManager;

    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lb/a/a/i0;->a(Landroid/app/SearchableInfo;)Lb/a/a/h0;

    move-result-object p1

    return-object p1
.end method

.method public d()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/i0;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/i0;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/Source;

    return-object p1
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
    iget-object v0, p0, Lb/a/a/i0;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getWebSearchSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/i0;->e:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public update()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/i0;->d:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Lb/a/a/i0;->b()V

    .line 3
    invoke-virtual {p0}, Lb/a/a/i0;->a()V

    .line 4
    invoke-static {}, Lb/a/a/i0;->e()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/i0;->e:Lcom/android/quicksearchbox/Source;

    .line 5
    iget-object v0, p0, Lb/a/a/i0;->e:Lcom/android/quicksearchbox/Source;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lb/a/a/i0;->a(Lcom/android/quicksearchbox/Source;)V

    :cond_0
    return-void
.end method
