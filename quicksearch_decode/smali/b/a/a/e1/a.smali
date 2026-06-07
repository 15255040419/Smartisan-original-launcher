.class public Lb/a/a/e1/a;
.super Ljava/lang/Object;
.source "DataResponsibility.java"


# static fields
.field public static volatile c:Lb/a/a/e1/a;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/e1/a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb/a/a/e1/a;->b:Z

    return-void
.end method

.method public static d()Lb/a/a/e1/a;
    .locals 2

    .line 1
    sget-object v0, Lb/a/a/e1/a;->c:Lb/a/a/e1/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lb/a/a/e1/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lb/a/a/e1/a;->c:Lb/a/a/e1/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lb/a/a/e1/a;

    invoke-direct {v1}, Lb/a/a/e1/a;-><init>()V

    sput-object v1, Lb/a/a/e1/a;->c:Lb/a/a/e1/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lb/a/a/e1/a;->c:Lb/a/a/e1/a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;",
            ">;"
        }
    .end annotation

    .line 9
    monitor-enter p0

    const/4 v0, 0x1

    .line 10
    :try_start_0
    iput-boolean v0, p0, Lb/a/a/e1/a;->b:Z

    .line 11
    iget-object v0, p0, Lb/a/a/e1/a;->a:Ljava/util/ArrayList;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/a/a/n1/h0;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/a/a/e1/a;->a()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lb/a/a/e1/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/e1/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object p1, p0, Lb/a/a/e1/a;->a:Ljava/util/ArrayList;

    monitor-exit p0

    return-object p1

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lb/a/a/e1/a;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 14
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/quicksearchbox/data/QsbProvider;->d:Landroid/net/Uri;

    const-string v3, "_id"

    const-string v4, "content"

    const-string v7, "status"

    filled-new-array {v3, v4, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "status = ?"

    const-string v3, "0"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    :try_start_1
    const-string p1, "query hot words database fail, queryCursor is null"

    .line 17
    invoke-static {p1}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 18
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v0

    .line 19
    :cond_2
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    if-ge v4, v5, :cond_6

    const-string v4, "don\'t have enough new hot words, refresh database"

    .line 20
    invoke-static {v4}, Lb/a/a/n1/q;->c(Ljava/lang/String;)V

    const-string v4, "status"

    .line 21
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/quicksearchbox/data/QsbProvider;->d:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p2, :cond_4

    const-string p1, "don\'t have enough new hot words, after force updated database"

    .line 23
    invoke-static {p1}, Lb/a/a/n1/q;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    .line 24
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object v0

    .line 25
    :cond_4
    :try_start_5
    invoke-virtual {p0, p1, v2}, Lb/a/a/e1/a;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_5

    .line 26
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    return-object p1

    .line 27
    :cond_6
    :goto_0
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "content"

    .line 28
    invoke-interface {v3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v4, "_id"

    .line 29
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 30
    new-instance v5, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;

    invoke-direct {v5, p2}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v5, Lcom/android/quicksearchbox/data/QsbProvider;->d:Landroid/net/Uri;

    const-string v7, "_id = ?"

    new-array v8, v2, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    invoke-virtual {p2, v5, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :cond_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 33
    :try_start_8
    iget-object p1, p0, Lb/a/a/e1/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 34
    iget-object p1, p0, Lb/a/a/e1/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    iput-boolean v2, p0, Lb/a/a/e1/a;->b:Z

    .line 36
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_9

    .line 37
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 38
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception p1

    .line 39
    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz v3, :cond_8

    .line 40
    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_e
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw p2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryHotWordDatabase exception="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/a/e1/a;->b:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/e1/a;->b:Z

    return v0
.end method
