.class public Lcom/android/quicksearchbox/tnt/InternalSearchableSource;
.super Lb/a/a/d;
.source "InternalSearchableSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;
    }
.end annotation


# static fields
.field public static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/content/Context;

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->i:Ljava/util/List;

    .line 2
    sget-object v0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->i:Ljava/util/List;

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.document"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->i:Ljava/util/List;

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.image"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->i:Ljava/util/List;

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.audio"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->i:Ljava/util/List;

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->i:Ljava/util/List;

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.archive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->i:Ljava/util/List;

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.apk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lb/a/a/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    .line 2
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->h:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->g:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->e:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/MatrixCursor;)V
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->g:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "TNTSearchSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "enable_corpus_web_baidu"

    const/4 v3, 0x1

    .line 13
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://www.baidu.com/s?wd="

    aput-object v2, v4, v3

    .line 14
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    const-string v2, "enable_corpus_web_sougou"

    .line 15
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://www.sogou.com/web?query="

    aput-object v2, v4, v3

    .line 16
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    const-string v2, "enable_corpus_web_shuffler"

    .line 17
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "com.browser.shuffler"

    aput-object v2, v4, v3

    .line 18
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2
    const-string v2, "enable_corpus_web_google"

    .line 19
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://www.google.com/search?q="

    aput-object v2, v4, v3

    .line 20
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_3
    const-string v2, "enable_corpus_web_zhihu"

    .line 21
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://www.zhihu.com/search?type=content&q="

    aput-object v2, v4, v3

    .line 22
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_4
    const-string v2, "enable_corpus_web_weibo"

    .line 23
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://s.weibo.com/weibo?q="

    aput-object v2, v4, v3

    .line 24
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_5
    const-string v2, "enable_corpus_web_toutiao"

    .line 25
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://www.toutiao.com/search/?keyword="

    aput-object v2, v4, v3

    .line 26
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_6
    const-string v2, "enable_corpus_web_sougou_wechat"

    .line 27
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://weixin.sogou.com/weixin?type=2&query="

    aput-object v2, v4, v3

    .line 28
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_7
    const-string v2, "enable_corpus_web_baidu_baike"

    .line 29
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://baike.baidu.com/search/word?word="

    aput-object v2, v4, v3

    .line 30
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_8
    const-string v2, "enable_corpus_web_jd"

    .line 31
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://search.jd.com/Search?keyword="

    aput-object v2, v4, v3

    .line 32
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_9
    const-string v2, "enable_corpus_web_taobao"

    .line 33
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://s.taobao.com/search?q="

    aput-object v2, v4, v3

    .line 34
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_a
    const-string v2, "enable_corpus_web_360"

    .line 35
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, "https://www.so.com/s?ie=utf-8&q="

    aput-object v2, v4, v3

    .line 36
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_b
    const-string v2, "enable_corpus_web_twitter"

    .line 37
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    new-array v2, v5, [Ljava/lang/Object;

    const-string v4, "enable_corpus_web_twitter"

    aput-object v4, v2, v1

    const-string v4, "https://mobile.twitter.com/search?q="

    aput-object v4, v2, v3

    .line 38
    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_c
    const-string v2, "enable_corpus_web_youtube"

    .line 39
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "enable_corpus_web_youtube"

    aput-object v2, v0, v1

    const-string v1, "https://www.youtube.com/results?q="

    aput-object v1, v0, v3

    .line 40
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->e:Ljava/lang/String;

    invoke-static {v0}, Lb/a/a/l1/g/a;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->e:Ljava/lang/String;

    invoke-static {v0}, Lb/a/a/l1/g/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lb/a/a/l1/g/a;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 5
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "suggest_text_1"

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "suggest_text_2"

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 10
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "suggest_text_1"

    const-string v3, "suggest_text_2"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 4
    :goto_1
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 5
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public getDefaultIntentAction()Ljava/lang/String;
    .locals 1

    const-string v0, "android.intent.action.SEARCH"

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->f:Ljava/lang/String;

    const-string v1, "INTERNAL_SEARCHABLE_LABEL_APPSTORE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.smartisanos.appstore"

    const-string v2, "com.smartisanos.appstore.ui.AppStoreActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxShortcuts(Lb/a/a/m;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SourceResult;
    .locals 4

    .line 2
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->f:Ljava/lang/String;

    const-string p3, "INTERNAL_SEARCHABLE_LABEL_FILE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->h:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    const-string p2, " "

    const-string p3, " {2,}"

    .line 4
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->a([Ljava/lang/String;)V

    .line 7
    iget-object p3, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->e:Ljava/lang/String;

    iget-object p4, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->h:Ljava/util/HashMap;

    invoke-static {p2, p3, p4}, Lb/a/a/l1/g/a;->a([Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->e()Landroid/database/Cursor;

    move-result-object p3

    goto/16 :goto_2

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->f:Ljava/lang/String;

    const-string p4, "INTERNAL_SEARCHABLE_LABEL_APPSTORE"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    .line 10
    invoke-static {}, Lcom/android/quicksearchbox/network/QsbHttpManager;->c()Lcom/android/quicksearchbox/network/QsbHttpManager;

    move-result-object p2

    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/quicksearchbox/network/QsbHttpManager;->a(Ljava/lang/String;Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object p3

    goto/16 :goto_2

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->f:Ljava/lang/String;

    const-string v0, "INTERNAL_SEARCHABLE_LABEL_CALCULATOR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "suggest_text_2"

    const-string v1, "suggest_text_1"

    if-eqz p2, :cond_3

    .line 12
    invoke-static {p1}, Lb/a/a/l1/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "..."

    .line 14
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000d1

    .line 16
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100090

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v3, Lcom/android/quicksearchbox/tnt/InternalSearchableSource$a;

    invoke-direct {v3, p0, p2}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource$a;-><init>(Lcom/android/quicksearchbox/tnt/InternalSearchableSource;Ljava/lang/String;)V

    invoke-static {v3}, Lsmartisanos/util/UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 20
    :goto_0
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p3, 0x2

    :try_start_1
    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, p4

    const/4 p2, 0x1

    aput-object v2, p3, p2

    .line 21
    invoke-virtual {v3, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p3, v3

    goto :goto_2

    :catch_0
    move-exception p2

    move-object p3, v3

    goto :goto_1

    :catch_1
    move-exception p2

    .line 22
    :goto_1
    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_3
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->f:Ljava/lang/String;

    const-string p4, "INTERNAL_SEARCHABLE_LABEL_WEB"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 24
    new-instance p3, Landroid/database/MatrixCursor;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p3}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->a(Landroid/database/MatrixCursor;)V

    .line 26
    :cond_4
    :goto_2
    new-instance p2, Lb/a/a/n;

    invoke-direct {p2, p0, p1, p3}, Lb/a/a/n;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V

    return-object p2
.end method

.method public bridge synthetic getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SourceResult;

    move-result-object p1

    return-object p1
.end method

.method public includeInAll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public voiceSearchEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
