.class public Lcom/smartisanos/launcher/data/a/q;
.super Lcom/smartisanos/launcher/data/a/v;
.source "PageDB.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field public static final vs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/a/q;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/a/q;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "_id"

    const-string v1, "pageIndex"

    const-string v2, "pageTitle"

    const-string v3, "status"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/a/q;->vs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/a/v;-><init>()V

    return-void
.end method

.method public static Ff()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/data/a/o;

    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/data/a/o;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/U;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "updatePagesDataByIndex error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static Gf()I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "table_pageinfos"

    .line 1
    invoke-static {v1, v0, v0, v0}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

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

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :catch_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public static Hf()Ljava/util/List;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/q;->ja(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 1

    const-string v0, "table_pageinfos"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;I)V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/a/q;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "rewritePageTable begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/smartisanos/launcher/data/a/p;

    invoke-direct {v1, v0, p0, p1}, Lcom/smartisanos/launcher/data/a/p;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)V

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/a/q;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "pageIndex > -1"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    const-string p1, "pageIndex ASC"

    :cond_1
    const-string v3, "table_pageinfos"

    .line 2
    sget-object v4, Lcom/smartisanos/launcher/data/a/q;->vs:[Ljava/lang/String;

    invoke-static {v3, p0, v4, p1}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string p0, "_id"

    .line 3
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string p1, "pageIndex"

    .line 4
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const-string v3, "pageTitle"

    .line 5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "status"

    .line 6
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8
    :cond_2
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eq v5, v1, :cond_3

    .line 9
    new-instance v6, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v6}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    .line 10
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/smartisanos/launcher/data/Q;->id:I

    .line 11
    iput v5, v6, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 12
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v6, Lcom/smartisanos/launcher/data/Q;->status:I

    .line 13
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/data/Q;->P(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_2

    .line 16
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 18
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eq p2, v1, :cond_6

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p2, :cond_6

    const/4 p0, 0x0

    .line 20
    invoke-interface {v0, p0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_6
    return-object v0

    :goto_3
    if-eqz v2, :cond_7

    .line 21
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method

.method public static dump()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/data/a/q;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "dump page table begin ###################################################"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/data/a/q;->Hf()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/Q;

    .line 6
    iget v4, v3, Lcom/smartisanos/launcher/data/Q;->id:I

    .line 7
    iget v5, v3, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 8
    iget v6, v3, Lcom/smartisanos/launcher/data/Q;->status:I

    .line 9
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v3

    .line 10
    sget-object v7, Lcom/smartisanos/launcher/data/a/q;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pid ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], id ["

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], status ["

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], name ["

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/data/a/q;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "dump page table done  ###################################################"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static j(Ljava/util/List;)I
    .locals 1

    const-string v0, "table_pageinfos"

    .line 1
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/data/a/v;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static ja(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, p0}, Lcom/smartisanos/launcher/data/a/q;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/data/a/q;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/Q;

    .line 3
    iget v2, v1, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static q(Ljava/util/List;)V
    .locals 7

    if-eqz p0, :cond_5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    new-array v1, v0, [I

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 5
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v6, "pageIndex"

    .line 6
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 7
    aput v6, v1, v4

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 10
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 11
    aget v4, v1, v3

    if-ne v4, v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page index error ! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    invoke-static {p0}, Lcom/smartisanos/launcher/Qa;->b(Ljava/util/List;)V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 16
    new-instance v1, Lcom/smartisanos/launcher/data/a/m;

    invoke-direct {v1, p0, v0, v2}, Lcom/smartisanos/launcher/data/a/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;ILjava/util/Map;)V

    .line 17
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p0

    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/U;->b:Z

    .line 18
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    if-nez p0, :cond_4

    return-void

    .line 19
    :cond_4
    sget-object p0, Lcom/smartisanos/launcher/data/a/q;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "error dump page table begin !!!"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/data/a/q;->dump()V

    .line 21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "refreshPageTable error"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public static r(Ljava/util/List;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/data/a/n;

    invoke-direct {v1, v0, p0}, Lcom/smartisanos/launcher/data/a/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p0

    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/U;->b:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "updatePagesDataByIndex error"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
