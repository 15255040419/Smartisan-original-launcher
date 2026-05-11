.class public Lcom/smartisanos/launcher/data/b/d;
.super Lcom/smartisanos/launcher/data/b/h;
.source "ITEM.java"


# static fields
.field private static final xs:Ljava/util/Map;


# instance fields
.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v1, "TEXT"

    const-string v2, "intent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v2, "INTEGER"

    const-string v3, "itemType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v3, "area"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v3, "pageIndex"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v3, "cellIndex"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v3, "folderIndex"

    const-string v4, "INTEGER DEFAULT -1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v3, "icon"

    const-string v4, "BLOB"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v3, "lastActivateTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v3, "messagesNumber"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v3, "INTEGER DEFAULT 0"

    const-string v4, "newlyInstalled"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v4, "packageName"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v4, "componentName"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v4, "user"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v2, "usage_count"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v2, "data1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v2, "data2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v2, "data3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/b/h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/data/b/d;->version:I

    const/16 v0, 0xc

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/data/b/d;->version:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/b/h;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/data/b/d;->version:I

    .line 6
    iput p1, p0, Lcom/smartisanos/launcher/data/b/d;->version:I

    return-void
.end method


# virtual methods
.method public If()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/b/d;->Kf()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/data/b/d;->xs:Ljava/util/Map;

    const-string v1, "table_iteminfos"

    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/data/b/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Jf()Ljava/lang/String;
    .locals 0

    const-string p0, "table_iteminfos"

    return-object p0
.end method

.method public Kf()[Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v0, v0, Lcom/smartisanos/launcher/data/b/d;->version:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const-string v2, "_id"

    const-string v3, "intent"

    const-string v4, "itemType"

    const-string v5, "area"

    const-string v6, "pageIndex"

    const-string v7, "cellIndex"

    const-string v8, "title"

    const-string v9, "icon"

    const-string v10, "lastActivateTime"

    const-string v11, "messagesNumber"

    const-string v12, "newlyInstalled"

    const-string v13, "packageName"

    const-string v14, "componentName"

    const-string v15, "data1"

    const-string v16, "data2"

    const-string v17, "data3"

    .line 2
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    const-string v2, "_id"

    const-string v3, "intent"

    const-string v4, "itemType"

    const-string v5, "pageIndex"

    const-string v6, "cellIndex"

    const-string v7, "title"

    const-string v8, "messagesNumber"

    const-string v9, "newlyInstalled"

    const-string v10, "packageName"

    const-string v11, "componentName"

    const-string v12, "data1"

    const-string v13, "data2"

    const-string v14, "data3"

    .line 3
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    const-string v1, "_id"

    const-string v2, "intent"

    const-string v3, "itemType"

    const-string v4, "pageIndex"

    const-string v5, "cellIndex"

    const-string v6, "title"

    const-string v7, "messagesNumber"

    const-string v8, "newlyInstalled"

    const-string v9, "packageName"

    const-string v10, "componentName"

    const-string v11, "user"

    const-string v12, "data1"

    const-string v13, "data2"

    const-string v14, "data3"

    .line 4
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    const-string v2, "_id"

    const-string v3, "intent"

    const-string v4, "itemType"

    const-string v5, "pageIndex"

    const-string v6, "cellIndex"

    const-string v7, "folderIndex"

    const-string v8, "title"

    const-string v9, "messagesNumber"

    const-string v10, "newlyInstalled"

    const-string v11, "packageName"

    const-string v12, "componentName"

    const-string v13, "user"

    const-string v14, "data1"

    const-string v15, "data2"

    const-string v16, "data3"

    .line 5
    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    const-string v2, "_id"

    const-string v3, "intent"

    const-string v4, "itemType"

    const-string v5, "pageIndex"

    const-string v6, "cellIndex"

    const-string v7, "folderIndex"

    const-string v8, "title"

    const-string v9, "messagesNumber"

    const-string v10, "newlyInstalled"

    const-string v11, "packageName"

    const-string v12, "componentName"

    const-string v13, "user"

    const-string v14, "usage_count"

    const-string v15, "data1"

    const-string v16, "data2"

    const-string v17, "data3"

    .line 6
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    const-string v2, "_id"

    const-string v3, "intent"

    const-string v4, "itemType"

    const-string v5, "pageIndex"

    const-string v6, "cellIndex"

    const-string v7, "folderIndex"

    const-string v8, "title"

    const-string v9, "messagesNumber"

    const-string v10, "newlyInstalled"

    const-string v11, "packageName"

    const-string v12, "componentName"

    const-string v13, "user"

    const-string v14, "usage_count"

    const-string v15, "data1"

    const-string v16, "data2"

    const-string v17, "data3"

    .line 7
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "table_iteminfos"

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 1
    new-instance v3, Lcom/smartisanos/launcher/data/b/d;

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    .line 2
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/b/d;->Kf()[Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/b/d;->If()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/smartisanos/launcher/data/b/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_1

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/data/b/d;

    invoke-direct {v0, v3}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    const-string v4, "_id"

    const-string v5, "intent"

    const-string v6, "itemType"

    const-string v7, "pageIndex"

    const-string v8, "cellIndex"

    const-string v9, "title"

    const-string v10, "messagesNumber"

    const-string v11, "newlyInstalled"

    const-string v12, "packageName"

    const-string v13, "componentName"

    const-string v14, "data1"

    const-string v15, "data2"

    const-string v16, "data3"

    .line 5
    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/b/d;->If()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/smartisanos/launcher/data/b/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/data/b/d;

    invoke-direct {v0, v3}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    const-string v4, "_id"

    const-string v5, "intent"

    const-string v6, "itemType"

    const-string v7, "pageIndex"

    const-string v8, "cellIndex"

    const-string v9, "title"

    const-string v10, "messagesNumber"

    const-string v11, "newlyInstalled"

    const-string v12, "packageName"

    const-string v13, "componentName"

    const-string v14, "user"

    const-string v15, "data1"

    const-string v16, "data2"

    const-string v17, "data3"

    .line 8
    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/b/d;->If()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/smartisanos/launcher/data/b/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    const/16 v3, 0xb

    if-ne v0, v3, :cond_3

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/data/b/d;

    invoke-direct {v0, v3}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    const-string v4, "_id"

    const-string v5, "intent"

    const-string v6, "itemType"

    const-string v7, "pageIndex"

    const-string v8, "cellIndex"

    const-string v9, "folderIndex"

    const-string v10, "title"

    const-string v11, "messagesNumber"

    const-string v12, "newlyInstalled"

    const-string v13, "packageName"

    const-string v14, "componentName"

    const-string v15, "user"

    const-string v16, "data1"

    const-string v17, "data2"

    const-string v18, "data3"

    .line 11
    filled-new-array/range {v4 .. v18}, [Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/b/d;->If()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/smartisanos/launcher/data/b/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
