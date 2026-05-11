.class public Lb/b/a/c;
.super Ljava/lang/Object;
.source "PackingMagicFlowData.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lb/b/a/c;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lb/b/a/c;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lb/b/a/a/c;->init(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lb/b/a/a/f;->init(Landroid/content/Context;)V

    const-string v0, "Flight"

    .line 3
    invoke-static {v0}, Lb/b/a/a/b;->wa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "Train"

    .line 4
    invoke-static {v1}, Lb/b/a/a/b;->wa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "Hotel"

    .line 5
    invoke-static {v2}, Lb/b/a/a/b;->wa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "Movie"

    .line 6
    invoke-static {v3}, Lb/b/a/a/b;->wa(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 7
    invoke-static {}, Lb/b/a/a/e;->ij()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "Flight_Card"

    .line 9
    invoke-virtual {p0, v5, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "Train_Card"

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Hotel_Card"

    .line 13
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Movie_Card"

    .line 15
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "XiaoYuan"

    .line 17
    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    const-string p0, "magic_flow.db"

    .line 18
    invoke-virtual {p1, p0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string p0, "sms_card.db"

    .line 19
    invoke-virtual {p1, p0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic access$200()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lb/b/a/c;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb/b/a/c;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private static b(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "com.smartisanos.magicflow_prefs"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "EnabledCategoryOrder"

    .line 4
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lb/b/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "return getSharedPreferencesData no key EnabledCategoryOrder"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x0

    .line 7
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "EnabledNewsChannelOrder"

    .line 8
    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "DisabledCategoryOrder"

    .line 9
    invoke-interface {v4, v10, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "DisabledNewsChannelOrder"

    .line 10
    invoke-interface {v4, v12, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "LifeinfoAlert"

    .line 11
    invoke-interface {v4, v13, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v15, v14, :cond_2

    move v14, v15

    goto :goto_0

    :cond_2
    move v14, v3

    :goto_0
    const-string v3, "AlipayQRCode"

    .line 12
    invoke-interface {v4, v3, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v16, v2

    if-ne v15, v1, :cond_3

    move v1, v15

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const-string v2, "AlipayScan"

    move/from16 v17, v1

    .line 13
    invoke-interface {v4, v2, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v15, v1, :cond_4

    move/from16 v18, v15

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    :goto_2
    const-string v1, "SmartisanReader"

    move-object/from16 v19, v2

    .line 14
    invoke-interface {v4, v1, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v20, v1

    if-ne v15, v2, :cond_5

    move v2, v15

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    const-string v1, "TouTiao"

    move/from16 v21, v2

    .line 15
    invoke-interface {v4, v1, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v22, v1

    if-ne v15, v2, :cond_6

    move v2, v15

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    const-string v1, "Flight"

    move/from16 v23, v2

    .line 16
    invoke-interface {v4, v1, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v24, v1

    if-ne v15, v2, :cond_7

    move v2, v15

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    const-string v1, "Train"

    move/from16 v25, v2

    .line 17
    invoke-interface {v4, v1, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v26, v1

    if-ne v15, v2, :cond_8

    move v2, v15

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    const-string v1, "Hotel"

    .line 18
    invoke-interface {v4, v1, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v15, v1, :cond_9

    move/from16 v27, v15

    goto :goto_7

    :cond_9
    const/16 v27, 0x0

    :goto_7
    const-string v1, "Movie"

    .line 19
    invoke-interface {v4, v1, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v15, v1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v15, 0x0

    :goto_8
    const-string v1, "NewsChannelOpened"

    move/from16 v28, v15

    const/4 v15, 0x0

    .line 20
    invoke-interface {v4, v1, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 21
    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move/from16 v15, v17

    .line 26
    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move/from16 v15, v18

    move-object/from16 v3, v19

    .line 27
    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v3, v20

    move/from16 v15, v21

    .line 28
    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v3, v22

    move/from16 v15, v23

    .line 29
    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v3, v24

    move/from16 v15, v25

    .line 30
    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v3, v26

    .line 31
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "Hotel"

    move/from16 v15, v27

    .line 32
    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "Movie"

    move/from16 v15, v28

    .line 33
    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "NewsChannelOpened"

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    const-string v1, "SPRecord"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    const-string v1, "ReadLaterRecord"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    goto :goto_9

    :cond_b
    move-object/from16 v0, p1

    .line 39
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v1, "SPRecord"

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v1, "ReadLaterRecord"

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    :goto_9
    return-void
.end method

.method static synthetic b(Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lb/b/a/c;->c(Ljava/io/File;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    if-nez p0, :cond_1

    .line 7
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    .line 8
    sget-object p0, Lb/b/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "callMagicFlow return context = null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "content://com.smartisanos.magicflow.provider.extra"

    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "get_collection_news"

    invoke-virtual {p0, v0, v2, v1, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private static c(Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-static {v3}, Lb/b/a/c;->c(Ljava/io/File;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static ma(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    .line 1
    sget-object v0, Lb/b/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "packing !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {v0, p0}, Lb/b/a/c;->b(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 4
    invoke-static {v0, p0}, Lb/b/a/c;->a(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 5
    invoke-static {p0}, Lb/b/a/c;->wa(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lb/b/a/c;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packing Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static wa(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/news"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lb/b/a/b;

    invoke-direct {v2, v0, p0}, Lb/b/a/b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
