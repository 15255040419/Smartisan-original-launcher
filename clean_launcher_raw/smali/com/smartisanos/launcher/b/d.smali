.class public Lcom/smartisanos/launcher/b/d;
.super Ljava/lang/Object;
.source "NetworkHandler.java"


# static fields
.field private static final Pq:Landroid/os/HandlerThread;

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static final mWorker:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/smartisanos/launcher/b/d;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/b/d;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/b/d;->Pq:Landroid/os/HandlerThread;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/b/d;->Pq:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/b/a;

    sget-object v1, Lcom/smartisanos/launcher/b/d;->Pq:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/b/a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/smartisanos/launcher/b/d;->mWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(ILandroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/b/d;->b(ILandroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static a(ILjava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1}, Lcom/smartisanos/launcher/b/d;->a(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/util/List;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/b/d;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4
    iput p1, v0, Landroid/os/Message;->what:I

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "context"

    .line 6
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "params"

    .line 7
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    sget-object p0, Lcom/smartisanos/launcher/b/d;->mWorker:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic access$000()Landroid/os/HandlerThread;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/b/d;->Pq:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/b/d;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private static b(ILandroid/content/Context;Ljava/util/List;)V
    .locals 1

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p1, Lcom/smartisanos/launcher/b/d;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown task type ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/b/d;->c(Landroid/content/Context;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/util/List;)V
    .locals 8

    const/4 p0, 0x0

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3
    :try_start_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    move-wide v5, v1

    :goto_0
    move-object p0, v4

    .line 4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v4

    :goto_2
    cmp-long v1, v5, v1

    if-nez v1, :cond_0

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/b/d;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "handleTASK_DOWNLOAD_ICON return by id is -1"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 6
    sget-object p0, Lcom/smartisanos/launcher/b/d;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "handleTASK_DOWNLOAD_ICON return by pkg is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 7
    sget-object p0, Lcom/smartisanos/launcher/b/d;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "handleTASK_DOWNLOAD_ICON return by downloadUri is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    :try_start_3
    sget-object v1, Lcom/smartisanos/launcher/b/d;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "begin to download ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->na(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-static {v1, v3}, Lcom/smartisanos/launcher/b/c;->i(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v4

    :goto_3
    if-nez v1, :cond_4

    .line 11
    invoke-static {p1, v3}, Lcom/smartisanos/launcher/b/c;->i(Ljava/lang/String;I)[B

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_7

    const-string p1, "icon"

    .line 12
    invoke-static {v1, p1}, Lcom/smartisanos/launcher/e/s;->b([BLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 13
    invoke-static {v4, v5, v6, p0, p1}, Lcom/smartisanos/launcher/Aa;->a(Lcom/smartisanos/launcher/data/ItemInfo;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 14
    invoke-static {p1}, Lcom/smartisanos/launcher/data/a/h;->a(Landroid/content/ContentValues;)Z

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->rg()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "color_info"

    .line 17
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    .line 18
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/smartisanos/launcher/b/d;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "IconColor.calculateIconColor return null"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    :cond_5
    new-instance v3, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v3}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 20
    iput-wide v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 21
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 22
    iput-object v1, v3, Lcom/smartisanos/launcher/data/ItemInfo;->iconRawData:[B

    .line 23
    iput-boolean v0, v3, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    .line 24
    iput-object p0, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/smartisanos/launcher/b/b;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p1, v3}, Lcom/smartisanos/launcher/b/b;-><init>(ILjava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 26
    sget-object p1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    monitor-enter p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 27
    :try_start_4
    sget-object v1, Lcom/smartisanos/launcher/b/d;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net download. end. time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/provider/i;

    iget-boolean v1, v1, Lcom/smartisanos/launcher/provider/i;->Es:Z

    if-eqz v1, :cond_6

    .line 29
    sget-object v1, Lcom/smartisanos/launcher/b/d;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add event. pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/provider/i;

    .line 31
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/i;->events:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    .line 32
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 33
    :goto_4
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_5
    return-void
.end method
