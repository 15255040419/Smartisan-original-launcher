.class public Lcom/smartisanos/launcher/data/a/l;
.super Lcom/smartisanos/launcher/data/a/v;
.source "ItemDB.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field public static final us:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/a/l;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/a/l;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "_id"

    const-string v2, "itemType"

    const-string v3, "pageIndex"

    const-string v4, "cellIndex"

    const-string v5, "title"

    const-string v6, "packageName"

    const-string v7, "componentName"

    const-string v8, "newlyInstalled"

    const-string v9, "messagesNumber"

    .line 2
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/a/l;->us:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/a/v;-><init>()V

    return-void
.end method

.method public static Df()Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/smartisanos/launcher/data/a/l;->N(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 4
    iget-object v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static Ef()Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/smartisanos/launcher/data/a/l;->N(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    iget v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_2

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static N(Z)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/smartisanos/launcher/data/a/l;->a(ZLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/data/a/l;->a(ZLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static W(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/a/l;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static X(Ljava/lang/String;)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "table_iteminfos"

    move-object v4, p0

    .line 3
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "_id"

    .line 6
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    :cond_2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 11
    :cond_4
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 12
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_6

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/l;->m(Ljava/util/List;)V

    :cond_6
    :goto_3
    return-void

    .line 16
    :goto_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static Xw()Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, v0}, Lcom/smartisanos/launcher/data/a/l;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 1

    const-string v0, "table_iteminfos"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/smartisanos/launcher/data/QuickLaunchItem;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 26
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "intent"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user"

    iget v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/l;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0

    if-eqz v2, :cond_1

    .line 27
    sget-object p0, Lcom/smartisanos/launcher/data/a/l;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "insertShortcut failed, exist"

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 28
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->g(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object p0

    const-string v0, "table_iteminfos"

    .line 29
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "pageIndex ASC, cellIndex ASC"

    :cond_0
    const-string v0, "table_iteminfos"

    .line 20
    invoke-static {v0, p0, p1, p2}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/smartisanos/launcher/data/a/l;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {p1, p2, p3}, Lcom/smartisanos/launcher/data/a/l;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/data/ItemInfo;->a(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    iget-object v1, p3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/T;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9
    iput v2, p3, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    :cond_1
    if-eqz p0, :cond_4

    .line 10
    iget-object v1, p3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->ra(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p3, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 11
    invoke-virtual {p3}, Lcom/smartisanos/launcher/data/ItemInfo;->af()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 12
    iput-boolean v3, p3, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p3}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->qa(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p3, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    .line 15
    :cond_4
    :goto_0
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    :cond_5
    if-eqz p1, :cond_6

    .line 17
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 18
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    return-object v0

    :goto_3
    if-eqz p1, :cond_7

    .line 19
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    const/4 p0, 0x0

    .line 21
    invoke-virtual {p1, p0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "intent"

    .line 23
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/l;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public static b(Ljava/util/Map;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/data/a/j;

    invoke-direct {v1, v0, p0}, Lcom/smartisanos/launcher/data/a/j;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    const/4 p0, 0x1

    return p0
.end method

.method public static c(Ljava/util/Map;)Ljava/util/List;
    .locals 7

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p0, "itemType"

    const-string v1, "1"

    .line 4
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    if-eqz v3, :cond_1

    const-string v4, " AND "

    .line 9
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v3, "table_iteminfos"

    .line 16
    invoke-static {v3, p0, v2, v1, v1}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 17
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    :cond_3
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/data/ItemInfo;->a(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    if-eqz v2, :cond_4

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    :cond_5
    if-eqz p0, :cond_6

    .line 21
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 22
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    return-object v0

    :goto_3
    if-eqz p0, :cond_7

    .line 23
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public static c(ZLjava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/data/a/l;->a(ZLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static count()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/a/l;->Xw()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    :goto_1
    const/4 v1, -0x1

    :goto_2
    return v1
.end method

.method public static dump()V
    .locals 22

    const-string v0, "]["

    .line 1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/data/a/l;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "dump item table begin  ##################################################"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/a/l;->Xw()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "_id"

    .line 5
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "itemType"

    .line 6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "pageIndex"

    .line 7
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cellIndex"

    .line 8
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "folderIndex"

    .line 9
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    .line 10
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "packageName"

    .line 11
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "componentName"

    .line 12
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 13
    :goto_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 14
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 15
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 16
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 17
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v16, v2

    .line 18
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v17, v3

    .line 19
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v18, v4

    .line 20
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v19, v5

    .line 21
    sget-object v5, Lcom/smartisanos/launcher/data/a/l;->log:Lcom/smartisanos/launcher/va;

    move/from16 v20, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v7

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], name ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], pkg ["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], cmp ["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    goto/16 :goto_0

    .line 23
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 24
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 25
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 26
    :cond_4
    :goto_3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/smartisanos/launcher/data/a/l;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "dump item table done  ###################################################"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static h(Lcom/smartisanos/launcher/data/ItemInfo;)J
    .locals 7

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->g(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "packageName"

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    const-string v4, "componentName"

    .line 4
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz v3, :cond_6

    if-nez v5, :cond_3

    goto/16 :goto_1

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-eqz v1, :cond_4

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "user"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string p0, "table_iteminfos"

    .line 9
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/a/v;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 p0, 0x0

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 12
    sget-object p0, Lcom/smartisanos/launcher/data/a/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this record already exist !!! COMPONENT_NAME ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], PACKAGE_NAME ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] return id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-wide v0

    .line 13
    :cond_5
    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0

    .line 14
    :cond_6
    :goto_1
    sget-object p0, Lcom/smartisanos/launcher/data/a/l;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "can\'t get package name or component name from ContentValues"

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-wide v0
.end method

.method public static i(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/data/a/l;->X(Ljava/lang/String;)V

    return-void
.end method

.method public static j(Ljava/util/List;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "table_iteminfos"

    .line 1
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/util/List;)Ljava/util/HashMap;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-wide v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static l(Ljava/util/List;)Ljava/util/HashMap;
    .locals 8

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_3

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_1
    iget-wide v6, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, v1, p1}, Lcom/smartisanos/launcher/data/a/l;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    const-string v1, " AND "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "componentName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/smartisanos/launcher/data/a/l;->X(Ljava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/util/List;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/smartisanos/launcher/data/a/k;

    invoke-direct {v1, v0, p0}, Lcom/smartisanos/launcher/data/a/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    :cond_1
    :goto_0
    return-void
.end method

.method public static n(Ljava/util/List;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/l;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static o(Ljava/util/List;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/data/a/i;

    invoke-direct {v1, v0, p0}, Lcom/smartisanos/launcher/data/a/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    const/4 p0, 0x1

    return p0
.end method
