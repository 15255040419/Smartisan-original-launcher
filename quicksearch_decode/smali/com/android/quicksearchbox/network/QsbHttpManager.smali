.class public Lcom/android/quicksearchbox/network/QsbHttpManager;
.super Ljava/lang/Object;
.source "QsbHttpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/network/QsbHttpManager$ServerElements;
    }
.end annotation


# static fields
.field public static volatile d:Lcom/android/quicksearchbox/network/QsbHttpManager;


# instance fields
.field public a:Lh/o;

.field public b:Lcom/android/quicksearchbox/network/QsbNetworkService;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/network/QsbHttpManager;->c:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/network/QsbHttpManager;->a()V

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/network/QsbHttpManager;->b()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lf/t;
    .locals 4

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;

    invoke-direct {v0}, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;-><init>()V

    const v1, 0x7f10003b

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->setPackage_name(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lb/a/a/n1/h0;->g(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->setVersion(Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;

    invoke-direct {v1}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;-><init>()V

    .line 7
    invoke-static {p0}, Lb/a/a/n1/m;->g(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setType(I)V

    .line 8
    invoke-static {p0}, Lb/a/a/n1/m;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setConn_type(I)V

    .line 9
    invoke-static {p0}, Lb/a/a/n1/b0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setResolution(Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lb/a/a/n1/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setImei(Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Lb/a/a/n1/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setImei_enc(Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lb/a/a/n1/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setAndroid_id(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setUuid(Ljava/lang/String;)V

    const-string v2, "Smartisan"

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setVendor(Ljava/lang/String;)V

    .line 16
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setModel(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v3}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setOs(I)V

    .line 18
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setOs_version(Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Lb/a/a/n1/m;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object p0, p0, v3

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setGeo(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lb/a/a/n1/m;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->setLanguage(Ljava/lang/String;)V

    .line 22
    new-instance p0, Lcom/android/quicksearchbox/network/entity/request/ReqAdEntity;

    invoke-direct {p0}, Lcom/android/quicksearchbox/network/entity/request/ReqAdEntity;-><init>()V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/network/entity/request/ReqAdEntity;->setApp(Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/network/entity/request/ReqAdEntity;->setDevice(Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;)V

    .line 25
    new-instance v0, Lb/c/b/c;

    invoke-direct {v0}, Lb/c/b/c;-><init>()V

    .line 26
    invoke-virtual {v0, p0}, Lb/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/json; charset=utf-8"

    .line 27
    invoke-static {v0}, Lf/n;->b(Ljava/lang/String;)Lf/n;

    move-result-object v0

    .line 28
    invoke-static {v0, p0}, Lf/t;->a(Lf/n;Ljava/lang/String;)Lf/t;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/android/quicksearchbox/network/QsbHttpManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/network/QsbHttpManager;->d:Lcom/android/quicksearchbox/network/QsbHttpManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/android/quicksearchbox/network/QsbHttpManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/quicksearchbox/network/QsbHttpManager;->d:Lcom/android/quicksearchbox/network/QsbHttpManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/quicksearchbox/network/QsbHttpManager;

    invoke-direct {v1}, Lcom/android/quicksearchbox/network/QsbHttpManager;-><init>()V

    sput-object v1, Lcom/android/quicksearchbox/network/QsbHttpManager;->d:Lcom/android/quicksearchbox/network/QsbHttpManager;

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
    sget-object v0, Lcom/android/quicksearchbox/network/QsbHttpManager;->d:Lcom/android/quicksearchbox/network/QsbHttpManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;Z)Landroid/database/Cursor;
    .locals 9

    const-string v0, "/"

    .line 36
    iget-object v1, p0, Lcom/android/quicksearchbox/network/QsbHttpManager;->b:Lcom/android/quicksearchbox/network/QsbNetworkService;

    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/network/QsbNetworkService;->getAppstoreInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    const/4 v1, 0x0

    .line 37
    :try_start_0
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lh/n;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lh/n;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/v;

    .line 39
    invoke-virtual {p1}, Lf/v;->f()Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v2, p0, Lcom/android/quicksearchbox/network/QsbHttpManager;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/quicksearchbox/data/QsbProvider;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/network/QsbHttpManager;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/quicksearchbox/application/Applications;->a:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "query_all_app_package"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 45
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "package"

    .line 47
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/android/quicksearchbox/network/QsbHttpManager;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x0

    .line 49
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 50
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;

    .line 51
    iget-object v4, p0, Lcom/android/quicksearchbox/network/QsbHttpManager;->c:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 52
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "suggest_text_1"

    .line 53
    invoke-virtual {v3}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "suggest_text_2"

    .line 54
    invoke-virtual {v3}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "suggest_text_2_url"

    .line 55
    invoke-virtual {v3}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->getStartUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "suggest_icon_1"

    .line 56
    invoke-virtual {v3}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->getIconUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "suggest_intent_data"

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "suggest_intent_extra_data"

    .line 60
    invoke-virtual {v3}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->getIntentExtraData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/quicksearchbox/data/QsbProvider;->e:Landroid/net/Uri;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    const-string p1, "_id ASC LIMIT 1"

    goto :goto_2

    :cond_4
    const-string p1, "_id ASC"

    :goto_2
    move-object v7, p1

    .line 62
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/quicksearchbox/data/QsbProvider;->e:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_5

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_5

    .line 64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1

    :cond_6
    :goto_3
    return-object v1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v0, v1

    :goto_4
    :try_start_2
    const-string p2, "QsbHttpManager"

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException e = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_7

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v1

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v0, :cond_8

    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_8

    .line 69
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_8
    throw p1
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    const-string v0, "content"

    .line 5
    iget-object v1, p0, Lcom/android/quicksearchbox/network/QsbHttpManager;->b:Lcom/android/quicksearchbox/network/QsbNetworkService;

    invoke-static {p1}, Lcom/android/quicksearchbox/network/QsbHttpManager;->b(Landroid/content/Context;)Lf/t;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/quicksearchbox/network/QsbNetworkService;->getHotWords(Lf/t;)Lretrofit2/Call;

    move-result-object v1

    .line 6
    :try_start_0
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lh/n;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-static {v1}, Lb/a/a/n1/q;->a(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    const-string v0, "requestHotWord response == null"

    .line 8
    invoke-static {v0}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lb/a/a/e1/a;->d()Lb/a/a/e1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/e1/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {v1}, Lh/n;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse;

    if-nez v1, :cond_1

    const-string v0, "requestHotWord hotWordsResponse == null"

    .line 11
    invoke-static {v0}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lb/a/a/e1/a;->d()Lb/a/a/e1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/e1/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse;->getData(Landroid/content/Context;)Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;->getHotWords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;

    invoke-virtual {v2}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->getWord()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 17
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/quicksearchbox/data/QsbProvider;->d:Landroid/net/Uri;

    const-string v5, "_id"

    const-string v6, "status"

    filled-new-array {v5, v0, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_3

    .line 18
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    .line 19
    invoke-virtual {p0, p1, v1}, Lcom/android/quicksearchbox/network/QsbHttpManager;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 20
    :cond_3
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    invoke-virtual {p0, p1, v1}, Lcom/android/quicksearchbox/network/QsbHttpManager;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    .line 23
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 24
    :goto_3
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v3, :cond_5

    .line 25
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query local hotwords db exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    .line 27
    :cond_6
    :goto_5
    invoke-static {}, Lb/a/a/e1/a;->d()Lb/a/a/e1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/e1/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 1
    new-instance v0, Lh/o$b;

    invoke-direct {v0}, Lh/o$b;-><init>()V

    .line 2
    invoke-static {}, Lh/r/a/a;->a()Lh/r/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/o$b;->a(Lretrofit2/Converter$a;)Lh/o$b;

    const-string v1, "https://browser.smartisan.com/"

    .line 3
    invoke-virtual {v0, v1}, Lh/o$b;->a(Ljava/lang/String;)Lh/o$b;

    .line 4
    invoke-virtual {v0}, Lh/o$b;->a()Lh/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/network/QsbHttpManager;->a:Lh/o;

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/quicksearchbox/data/QsbProvider;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 29
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_1

    .line 31
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 32
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;

    invoke-virtual {v2}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->getWord()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "content"

    .line 34
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/quicksearchbox/data/QsbProvider;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/android/quicksearchbox/network/QsbHttpManager;->b:Lcom/android/quicksearchbox/network/QsbNetworkService;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/network/QsbNetworkService;->getQueryAssociationalWord(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lh/n;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lh/n;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/v;

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Lf/v;->f()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v2, 0x2

    if-lt p1, v2, :cond_2

    const/4 p1, 0x1

    .line 77
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 79
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 80
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 81
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_1
    return-object v0

    :catch_1
    move-exception p1

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQueryAssociationalWord e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QsbHttpManager"

    invoke-static {v1, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;",
            ">;"
        }
    .end annotation

    const-string v0, "#"

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 30
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "body"

    .line 32
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    const-string v3, "apps"

    .line 33
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    .line 34
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 35
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v5, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;

    invoke-direct {v5}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;-><init>()V

    const-string v6, "name"

    .line 37
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->setAppName(Ljava/lang/String;)V

    const-string v6, "package"

    .line 38
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->setPackageName(Ljava/lang/String;)V

    const-string v6, "logo"

    .line 39
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->setIconUri(Landroid/net/Uri;)V

    const-string v6, "download_url"

    .line 40
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->setStartUri(Landroid/net/Uri;)V

    .line 41
    invoke-virtual {v5, v2}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->setInstalledState(I)V

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "category"

    .line 43
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "scores"

    const-string v8, "0.0f"

    .line 45
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "source"

    .line 47
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "local"

    if-nez v8, :cond_4

    :try_start_1
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "other"

    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 50
    :cond_4
    :goto_1
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ifgms"

    const-string v8, "0"

    .line 52
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v5}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->getIconUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "soft_type"

    .line 56
    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "filesize"

    .line 58
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "filemd5"

    .line 60
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->setIntentExtraData(Ljava/lang/String;)V

    .line 62
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    const-string v0, "QsbHttpManager"

    const-string v2, "parseAppResponse error"

    .line 63
    invoke-static {v0, v2, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/QsbHttpManager;->a:Lh/o;

    const-class v1, Lcom/android/quicksearchbox/network/QsbNetworkService;

    invoke-virtual {v0, v1}, Lh/o;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/network/QsbNetworkService;

    iput-object v0, p0, Lcom/android/quicksearchbox/network/QsbHttpManager;->b:Lcom/android/quicksearchbox/network/QsbNetworkService;

    return-void
.end method
