.class public Lcom/smartisanos/launcher/data/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public category:I

.field public cellIndex:I

.field public color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

.field public componentName:Ljava/lang/String;

.field public downloadId:J

.field public folderIndex:I

.field private iconData:[B

.field public iconRawData:[B

.field public id:J

.field public isCanUninstall:Z

.field public isNeedDowload:Z

.field public isNewlyInstalled:Z

.field public isSystemApp:Z

.field public itemType:B

.field public mFGTransparentAndBlackWhiteFlag:Z

.field public messagesNumber:I

.field public packageName:Ljava/lang/String;

.field public pageIndex:I

.field public title:Ljava/lang/String;

.field public usageCount:I

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/ItemInfo;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const/4 v2, 0x0

    .line 3
    iput-byte v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v3, -0x1

    .line 4
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 5
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 6
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    .line 7
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    .line 8
    iput v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    .line 9
    iput v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    const/4 v4, 0x0

    .line 10
    iput-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 11
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 12
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    const/4 v4, 0x1

    .line 13
    iput-boolean v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    .line 14
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    .line 15
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    .line 16
    iput-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    .line 17
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->category:I

    return-void
.end method

.method public static a(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    invoke-static/range {p0 .. p1}, Lcom/smartisanos/launcher/data/ItemInfo;->b(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "_id"

    .line 2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v3, "itemType"

    .line 3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "title"

    .line 4
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "packageName"

    .line 5
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "componentName"

    .line 6
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "pageIndex"

    .line 7
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "cellIndex"

    .line 8
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "folderIndex"

    .line 9
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "messagesNumber"

    .line 10
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "newlyInstalled"

    .line 11
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "user"

    .line 12
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "usage_count"

    .line 13
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "data1"

    .line 14
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 15
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-byte v3, v3

    move/from16 p1, v3

    .line 16
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 17
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 21
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 22
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 23
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 24
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 25
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v5, :cond_7

    const/4 v15, 0x1

    if-eqz p1, :cond_5

    move/from16 v0, p1

    if-eq v0, v15, :cond_4

    const/4 v14, 0x2

    if-eq v0, v14, :cond_2

    const/16 v16, 0x0

    return-object v16

    .line 26
    :cond_2
    new-instance v0, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/FolderInfo;-><init>()V

    .line 27
    iput-byte v14, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 28
    iput-wide v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 29
    iput-object v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 30
    iput-object v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 31
    iput-object v6, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 32
    iput v7, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 33
    iput v8, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 34
    iput v9, v0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    .line 35
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 36
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v15, :cond_3

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .line 37
    :goto_0
    iput-boolean v15, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 38
    iput v12, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    .line 39
    iput v13, v0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    return-object v0

    :cond_4
    const/16 v16, 0x0

    const-string v0, "intent"

    .line 40
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 41
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x0

    .line 42
    :try_start_0
    invoke-static {v11, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v14

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    .line 43
    sget-object v0, Lcom/smartisanos/launcher/data/ItemInfo;->log:Lcom/smartisanos/launcher/va;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v14

    const-string v14, "error intent ["

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, v16

    .line 45
    :goto_1
    new-instance v11, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    invoke-direct {v11}, Lcom/smartisanos/launcher/data/QuickLaunchItem;-><init>()V

    const/4 v14, 0x1

    .line 46
    iput-byte v14, v11, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 47
    iput-wide v2, v11, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 48
    iput-object v4, v11, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 49
    iput-object v5, v11, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 50
    iput-object v6, v11, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 51
    iput v7, v11, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 52
    iput v8, v11, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 53
    iput v9, v11, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    .line 54
    iput-object v0, v11, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    .line 55
    iput v12, v11, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    .line 56
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 57
    iput v13, v11, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    move-object/from16 v1, v18

    .line 58
    iput-object v1, v11, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    return-object v11

    .line 59
    :cond_5
    new-instance v0, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    const/4 v14, 0x0

    .line 60
    iput-byte v14, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 61
    iput-wide v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 62
    iput-object v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 63
    iput-object v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 64
    iput-object v6, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 65
    iput v7, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 66
    iput v8, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 67
    iput v9, v0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    .line 68
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 69
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    move v14, v2

    .line 70
    :cond_6
    iput-boolean v14, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 71
    iput v12, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    .line 72
    iput v13, v0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    return-object v0

    .line 73
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lose package name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 7

    if-eqz p1, :cond_e

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_d

    aget-object v4, p1, v3

    .line 3
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "_id"

    .line 4
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    goto/16 :goto_2

    :cond_0
    const-string v6, "title"

    .line 6
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    const-string v6, "packageName"

    .line 8
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 10
    iget-object v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lose package name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v6, "componentName"

    .line 12
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    const-string v6, "pageIndex"

    .line 14
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 15
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    goto :goto_2

    :cond_5
    const-string v6, "cellIndex"

    .line 16
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 17
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    goto :goto_2

    :cond_6
    const-string v6, "messagesNumber"

    .line 18
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 19
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    goto :goto_2

    :cond_7
    const-string v6, "newlyInstalled"

    .line 20
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 21
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    goto :goto_1

    :cond_8
    move v5, v2

    .line 22
    :goto_1
    iput-boolean v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    goto :goto_2

    :cond_9
    const-string v6, "user"

    .line 23
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 24
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 25
    iput v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    goto :goto_2

    :cond_a
    const-string v6, "folderIndex"

    .line 26
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 27
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    goto :goto_2

    :cond_b
    const-string v6, "usage_count"

    .line 28
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 29
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    return-object v0

    .line 30
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "toItemInfoByColumn lose columns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "itemType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "folderIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    const-string v2, "componentName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "messagesNumber"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "user"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "usage_count"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    check-cast p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "newlyInstalled"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public Me()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    return-void
.end method

.method public Ne()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "_emptyPackage"

    .line 4
    :goto_1
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_renderTargetFore"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_fore"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Oe()[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/a/h;->a(Ljava/util/List;Lcom/smartisanos/launcher/data/Constants$IconType;)Ljava/util/Map;

    move-result-object v2

    .line 6
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 7
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 8
    sget-object v3, Lcom/smartisanos/launcher/data/ItemInfo;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIconData fail, load from itemInfo :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , Constants.ICON_TYPE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 10
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 12
    :cond_1
    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->doppelgangerIconBytes([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public Pe()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Qe()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Lcom/smartisanos/launcher/data/T;->CALENDAR:Lcom/smartisanos/launcher/data/S;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public Re()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-byte p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public Se()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/smartisanos/launcher/data/T;->RECORDER:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/ItemInfo;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open audio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/ua;->g(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/smartisanos/launcher/data/T;->RECORDER:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/ua;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Te()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/data/T;->CALENDAR:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public Ue()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Ve()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public We()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    if-nez v0, :cond_0

    iget-byte p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Xe()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Ye()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Ze()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public _e()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/smartisanos/launcher/data/T;->SMARTISAN_SCREEN_RECORDER:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/ua;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a([B)V
    .locals 2

    if-nez p1, :cond_1

    .line 74
    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    return-void
.end method

.method public af()Z
    .locals 1

    .line 1
    iget-byte p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bf()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public cf()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 3

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 3
    iget-wide v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iput-wide v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 4
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    iput-byte v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 5
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 7
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    .line 8
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    iput-byte v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 9
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    .line 10
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconRawData:[B

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->iconRawData:[B

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->clone()Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 16
    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 20
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 21
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 22
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    .line 23
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    .line 24
    iget-wide v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    iput-wide v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    .line 25
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    iput p0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->clone()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    mul-int/lit8 v1, v1, 0x64

    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    add-int/2addr v1, p0

    .line 3
    iget p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    mul-int/lit8 p0, p0, 0x64

    iget p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    add-int/2addr p0, p1

    sub-int/2addr v1, p0

    if-lez v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-gez p0, :cond_2

    move p0, v0

    :cond_2
    return p0
.end method

.method public df()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    const-string v2, "cmp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    const-string v1, "messagesNumber"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public ef()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] cid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] fid = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] id = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] itemType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] userId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] messagesNumber = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] title = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] packageName = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] componentName = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] isSystemApp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] isCanUninstall = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] isNewlyInstalled = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] isNeedDowload = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] downloadId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ga(I)Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    move p0, v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    const-string v2, "cmp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v2, "userId"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const-string v2, "itemType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    const-string v2, "messagesNumber"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    const-string v1, "newFlag"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
