.class public abstract Lcom/smartisanos/launcher/data/a/v;
.super Ljava/lang/Object;
.source "TableOperator.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/a/v;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/a/v;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 2

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/smartisanos/launcher/data/a/u;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/smartisanos/launcher/data/a/u;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/U;->i:I

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)I
    .locals 2

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/smartisanos/launcher/data/a/s;

    invoke-direct {v1, v0, p1, p0}, Lcom/smartisanos/launcher/data/a/s;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/U;->i:I

    return p0
.end method

.method public static a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/data/a/r;

    invoke-direct {v1, v0, p0, p1}, Lcom/smartisanos/launcher/data/a/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p0

    iget-wide p0, p0, Lcom/smartisanos/launcher/data/U;->l:J

    return-wide p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p1, v0, p2, p3}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v8, p4

    .line 16
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "table_iteminfos"

    .line 1
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/data/a/v;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/smartisanos/launcher/data/a/t;

    invoke-direct {v1, v0, p0, p1}, Lcom/smartisanos/launcher/data/a/t;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/U;->i:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, "*"

    return-object p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    const-string v2, "_id"

    .line 1
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2, v0}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v1, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :goto_3
    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    const-string v0, "_id"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3, v2}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 7
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public static rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
