.class public Lcom/android/quicksearchbox/ShortcutsProvider;
.super Landroid/content/ContentProvider;
.source "ShortcutsProvider.java"


# instance fields
.field public a:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/quicksearchbox/Source;Landroid/content/ContentValues;)Lb/a/a/v0;
    .locals 12

    const-string v0, "suggest_format"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "suggest_text_1"

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "suggest_text_2"

    .line 31
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "suggest_text_2_url"

    .line 32
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "suggest_icon_1"

    .line 33
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "suggest_icon_2"

    .line 34
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "suggest_shortcut_id"

    .line 35
    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "suggest_spinner_while_refreshing"

    .line 36
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    .line 37
    invoke-static {v7, v8}, Lcom/android/quicksearchbox/ShortcutsProvider;->a(Ljava/lang/Boolean;Z)Z

    move-result v7

    const-string v8, "suggest_intent_action"

    .line 38
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "suggest_intent_data"

    .line 39
    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "suggest_intent_extra_data"

    .line 40
    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "suggest_intent_query"

    .line 41
    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v11, Lb/a/a/v0;

    invoke-direct {v11, p0}, Lb/a/a/v0;-><init>(Lcom/android/quicksearchbox/Source;)V

    .line 43
    invoke-virtual {v11, v0}, Lb/a/a/v0;->a(Ljava/lang/String;)Lb/a/a/v0;

    .line 44
    invoke-virtual {v11, v1}, Lb/a/a/v0;->i(Ljava/lang/String;)Lb/a/a/v0;

    .line 45
    invoke-virtual {v11, v2}, Lb/a/a/v0;->j(Ljava/lang/String;)Lb/a/a/v0;

    .line 46
    invoke-virtual {v11, v3}, Lb/a/a/v0;->k(Ljava/lang/String;)Lb/a/a/v0;

    .line 47
    invoke-virtual {v11, v4}, Lb/a/a/v0;->b(Ljava/lang/String;)Lb/a/a/v0;

    .line 48
    invoke-virtual {v11, v5}, Lb/a/a/v0;->c(Ljava/lang/String;)Lb/a/a/v0;

    .line 49
    invoke-virtual {v11, v6}, Lb/a/a/v0;->g(Ljava/lang/String;)Lb/a/a/v0;

    .line 50
    invoke-virtual {v11, v7}, Lb/a/a/v0;->a(Z)Lb/a/a/v0;

    .line 51
    invoke-virtual {v11, v8}, Lb/a/a/v0;->d(Ljava/lang/String;)Lb/a/a/v0;

    .line 52
    invoke-virtual {v11, v9}, Lb/a/a/v0;->e(Ljava/lang/String;)Lb/a/a/v0;

    .line 53
    invoke-virtual {v11, v10}, Lb/a/a/v0;->f(Ljava/lang/String;)Lb/a/a/v0;

    .line 54
    invoke-virtual {v11, p1}, Lb/a/a/v0;->h(Ljava/lang/String;)Lb/a/a/v0;

    return-object v11
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ShortcutsProvider;Landroid/content/ComponentName;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/ShortcutsProvider;->a(Landroid/content/ComponentName;Landroid/content/ContentValues;)V

    return-void
.end method

.method public static a(Ljava/lang/Boolean;Z)Z
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public final a()Landroid/content/UriMatcher;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v2, "shortcuts"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method public final a(Landroid/content/ComponentName;Landroid/content/ContentValues;)V
    .locals 3

    .line 14
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->c()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/Corpora;->getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;

    move-result-object v0

    const-string v1, "QSB.SR"

    if-nez v0, :cond_0

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown shortcut source "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "user_query"

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    .line 17
    :cond_1
    :try_start_0
    new-instance v2, Lb/a/a/w;

    invoke-direct {v2, p1}, Lb/a/a/w;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    invoke-static {v0, p2}, Lcom/android/quicksearchbox/ShortcutsProvider;->a(Lcom/android/quicksearchbox/Source;Landroid/content/ContentValues;)Lb/a/a/v0;

    move-result-object p1

    invoke-virtual {v2, p1}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 19
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->e()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v2, p2}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual {v2}, Lb/a/a/w;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 22
    :try_start_4
    invoke-virtual {v2}, Lb/a/a/w;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReportClick exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final a(Landroid/content/ContentValues;)V
    .locals 4

    const-string v0, "shortcut_source"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "QSB.SR"

    if-eqz v1, :cond_0

    const-string p1, "Missing shortcut_source"

    .line 7
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "suggest_intent_action"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.WEB_SEARCH"

    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ShortcutsProvider;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got shortcut for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from a different process"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->d()Lb/a/a/b0;

    move-result-object v1

    new-instance v2, Lcom/android/quicksearchbox/ShortcutsProvider$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/quicksearchbox/ShortcutsProvider$a;-><init>(Lcom/android/quicksearchbox/ShortcutsProvider;Landroid/content/ComponentName;Landroid/content/ContentValues;)V

    invoke-virtual {v1, v2}, Lb/a/a/b0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 25
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 27
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->d()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->p()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lb/a/a/b0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final e()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->d()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->y()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutsProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutsProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ShortcutsProvider;->a(Landroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutsProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ShortcutsProvider;->a:Landroid/content/UriMatcher;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
