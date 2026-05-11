.class public Lcom/smartisanos/launcher/Da;
.super Ljava/lang/Object;
.source "LauncherTracker.java"


# static fields
.field private static li:Lcom/smartisanos/launcher/Da;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private ii:Z

.field private ji:J

.field private ki:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/Da;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/Da;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/Da;->ii:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/smartisanos/launcher/Da;->ji:J

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/Da;->ki:Z

    return-void
.end method

.method private _v()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 4
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v6, "A260013"

    const/4 v7, 0x0

    if-lez v5, :cond_2

    .line 6
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move v8, v7

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 9
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/a/g;

    .line 10
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v9

    if-nez v9, :cond_0

    .line 11
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 12
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 13
    :cond_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "mainpage_app"

    .line 14
    invoke-virtual {v8, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 16
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v0

    move v5, v7

    .line 18
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 19
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/a/g;

    .line 20
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 21
    iget-object v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v0, v7

    move v5, v0

    move v8, v5

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    .line 22
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v0, v15, :cond_d

    .line 23
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/view/b/M;

    .line 24
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    .line 25
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v16

    if-eqz v16, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 26
    :cond_5
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v16

    if-eqz v16, :cond_6

    add-int/lit8 v8, v8, 0x1

    :cond_6
    :goto_4
    move-object/from16 v17, v2

    move/from16 v16, v14

    move v14, v13

    move v13, v10

    const/4 v10, 0x0

    .line 27
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_c

    .line 28
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 29
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v18

    if-eqz v18, :cond_7

    add-int/lit8 v11, v11, 0x1

    .line 31
    move-object/from16 v18, v2

    check-cast v18, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v18

    add-int v12, v12, v18

    .line 32
    :cond_7
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v5

    .line 33
    iget-object v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :cond_8
    move/from16 v18, v5

    .line 34
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v13, v13, 0x1

    .line 35
    :cond_9
    :goto_6
    iget-byte v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    move-object/from16 v19, v7

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    .line 36
    iget-object v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/smartisanos/launcher/data/T;->PHONE:Lcom/smartisanos/launcher/data/S;

    iget-object v7, v7, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 37
    :cond_a
    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/smartisanos/launcher/data/T;->WECHAT:Lcom/smartisanos/launcher/data/S;

    iget-object v5, v5, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v16, v16, 0x1

    :cond_b
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v18

    move-object/from16 v7, v19

    goto :goto_5

    :cond_c
    move/from16 v18, v5

    add-int/lit8 v0, v0, 0x1

    move v10, v13

    move v13, v14

    move/from16 v14, v16

    move-object/from16 v2, v17

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 38
    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "page_num"

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "hide_page_num"

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v0, "hide_page_app"

    .line 41
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 43
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "encrption_page_num"

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v0, "encrption_app_num"

    .line 46
    invoke-virtual {v2, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    :goto_9
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/Da;->flush()V

    .line 50
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "folder_num"

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v0, "folder_app_num"

    .line 52
    invoke-virtual {v2, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    :goto_a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "wechat_contacts_num"

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sys_contacts_num"

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_4
    const-string v0, "dock_app"

    .line 58
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    :goto_b
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/smartisanos/launcher/Da;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/smartisanos/launcher/Da;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### flushAllStatusInTime page_num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hide_page_num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " encrption_page_num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " folder_num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " wechat_contacts_num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sys_contacts_num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/Da;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/smartisanos/launcher/Da;->ji:J

    return-wide p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 20
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/Da;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/Da;->ki:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/Da;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/Da;->ki:Z

    return p1
.end method

.method static synthetic access$300()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/Da;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/Da;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/launcher/Da;->ji:J

    return-wide v0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/Da;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/Da;->_v()V

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/Da;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/Da;->li:Lcom/smartisanos/launcher/Da;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/Da;

    invoke-direct {v0}, Lcom/smartisanos/launcher/Da;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/Da;->li:Lcom/smartisanos/launcher/Da;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/Da;->li:Lcom/smartisanos/launcher/Da;

    return-object v0
.end method

.method private onEvent(Ljava/lang/String;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsmartisanos/app/tracker/Agent;->onEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lsmartisanos/app/tracker/Agent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private onStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public Ac()V
    .locals 1

    const-string v0, "A260007"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public Bc()V
    .locals 1

    const-string v0, "A260020"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "A260015"

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    :cond_0
    return-void
.end method

.method public L(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "num"

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A260016"

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public M(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "classify"

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A260022"

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public N(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "num"

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A260021"

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public O(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "num"

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A260017"

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public a(IIIILjava/lang/String;)V
    .locals 2

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "screen"

    .line 12
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "mode"

    .line 13
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "position"

    .line 14
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "pkg"

    .line 15
    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "classify"

    .line 16
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "A260024"

    .line 17
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 2

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "classify"

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pkg"

    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mode"

    .line 7
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "A260023"

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "event_sort_by_usage"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const-string v0, "event_sort_by_color"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "event_sort_by_time"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "event_sort_by_category"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    const-string v0, "type"

    if-eqz p2, :cond_4

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "A260004"

    invoke-direct {p0, p2, p1}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "A260005"

    invoke-direct {p0, p2, p1}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public flush()V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object p0

    invoke-virtual {p0}, Lsmartisanos/app/tracker/Agent;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/Da;->mContext:Landroid/content/Context;

    .line 2
    :try_start_0
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsmartisanos/app/tracker/Agent;->init(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public q(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "type"

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/Da;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A260019"

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public sc()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/Ba;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/Ba;-><init>(Lcom/smartisanos/launcher/Da;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public tc()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/Ca;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/Ca;-><init>(Lcom/smartisanos/launcher/Da;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public uc()V
    .locals 1

    const-string v0, "A260012"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public vc()V
    .locals 1

    const-string v0, "A260003"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public wc()V
    .locals 1

    const-string v0, "A260009"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public xc()V
    .locals 1

    const-string v0, "A260018"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public yc()V
    .locals 1

    const-string v0, "A260006"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method

.method public zc()V
    .locals 1

    const-string v0, "A260011"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/Da;->onEvent(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method
