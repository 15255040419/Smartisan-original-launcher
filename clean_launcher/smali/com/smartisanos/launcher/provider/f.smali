.class Lcom/smartisanos/launcher/provider/f;
.super Ljava/lang/Object;
.source "DownloadManagerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic As:J

.field final synthetic Bs:Ljava/lang/String;

.field final synthetic Cs:I

.field final synthetic Ds:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    iput-wide p2, p0, Lcom/smartisanos/launcher/provider/f;->As:J

    iput-object p4, p0, Lcom/smartisanos/launcher/provider/f;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/smartisanos/launcher/provider/f;->Bs:Ljava/lang/String;

    iput p6, p0, Lcom/smartisanos/launcher/provider/f;->Cs:I

    iput p7, p0, Lcom/smartisanos/launcher/provider/f;->Ds:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download_log_tag sEventList.containsKey key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v6, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/provider/i;

    iget-boolean v1, v1, Lcom/smartisanos/launcher/provider/i;->Is:Z

    if-nez v1, :cond_2

    .line 5
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " installFail = false"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    .line 7
    :cond_2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download_log_tag pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isReDownload = true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    :cond_3
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v6, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lcom/smartisanos/smengine/n;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    .line 10
    iget-object v6, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    move v1, v5

    goto :goto_0

    :cond_4
    move v1, v4

    .line 12
    :goto_0
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download_log_tag setDownloadId. begin. time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " pkg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    :cond_5
    new-instance v6, Lcom/smartisanos/launcher/provider/i;

    invoke-direct {v6}, Lcom/smartisanos/launcher/provider/i;-><init>()V

    .line 14
    iput-boolean v5, v6, Lcom/smartisanos/launcher/provider/i;->Es:Z

    .line 15
    iput-boolean v4, v6, Lcom/smartisanos/launcher/provider/i;->Fs:Z

    .line 16
    invoke-virtual {v6, v1}, Lcom/smartisanos/launcher/provider/i;->O(Z)V

    .line 17
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v7, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    new-instance v0, Lcom/smartisanos/launcher/data/a/a;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/a/a;-><init>()V

    .line 20
    iget-wide v6, p0, Lcom/smartisanos/launcher/provider/f;->As:J

    iput-wide v6, v0, Lcom/smartisanos/launcher/data/a/a;->ns:J

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/a/a;->qs:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/b;->a(Lcom/smartisanos/launcher/data/a/a;)J

    .line 23
    new-instance v0, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    const-wide/16 v6, -0x1

    .line 24
    :try_start_1
    iput-byte v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 25
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const-string v1, "###download_cmp###"

    .line 26
    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/f;->val$name:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 28
    iput-boolean v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 29
    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/l;->h(Lcom/smartisanos/launcher/data/ItemInfo;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v8, v6

    :goto_1
    cmp-long v1, v8, v6

    if-nez v1, :cond_6

    return-void

    .line 31
    :cond_6
    iput-wide v8, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 32
    iput-boolean v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    .line 33
    iget-wide v6, p0, Lcom/smartisanos/launcher/provider/f;->As:J

    iput-wide v6, v0, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    .line 34
    iput-boolean v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/smartisanos/launcher/jb;->default_icon:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->b(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v5

    iput-object v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->iconRawData:[B

    .line 38
    iget-wide v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-object v7, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-static {v0, v5, v6, v7, v1}, Lcom/smartisanos/launcher/Aa;->a(Lcom/smartisanos/launcher/data/ItemInfo;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 39
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->rg()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 41
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v5

    invoke-static {v5}, Lcom/smartisanos/launcher/e/s;->b([B)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    const-string v5, "color_info"

    .line 42
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {v5}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->K(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v5

    .line 44
    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 45
    iput-object v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 46
    invoke-static {v1}, Lcom/smartisanos/launcher/data/a/h;->a(Landroid/content/ContentValues;)Z

    .line 47
    :cond_7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v1

    if-nez v1, :cond_8

    .line 48
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download_log_taglose icon data !!!! ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 49
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-wide v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v5, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v5, p0, Lcom/smartisanos/launcher/provider/f;->Bs:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x3e9

    .line 53
    invoke-static {v5, v1}, Lcom/smartisanos/launcher/b/d;->a(ILjava/util/List;)V

    .line 54
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download_log_tag setDownloadId. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 55
    :cond_9
    new-instance v1, Lcom/smartisanos/launcher/provider/e;

    invoke-direct {v1, p0, v2, v0}, Lcom/smartisanos/launcher/provider/e;-><init>(Lcom/smartisanos/launcher/provider/f;ILcom/smartisanos/launcher/data/ItemInfo;)V

    .line 56
    iget-object v2, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 58
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    monitor-enter v1

    .line 59
    :try_start_2
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download_log_tag setDownloadId. end. time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 60
    :cond_a
    sget-object v2, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v5, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/provider/i;

    .line 61
    iget-object v5, v2, Lcom/smartisanos/launcher/provider/i;->events:Ljava/util/ArrayList;

    move v6, v4

    .line 62
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 63
    sget-boolean v7, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download_log_tag send event. pkg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 64
    :cond_b
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/smengine/n;

    invoke-virtual {v7, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 65
    :cond_c
    sget-object v3, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/provider/i;

    iput-boolean v4, p0, Lcom/smartisanos/launcher/provider/i;->Es:Z

    .line 66
    iget-wide v3, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iput-wide v3, v2, Lcom/smartisanos/launcher/provider/i;->Hs:J

    .line 67
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 68
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
