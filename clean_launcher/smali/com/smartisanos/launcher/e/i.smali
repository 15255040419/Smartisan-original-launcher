.class Lcom/smartisanos/launcher/e/i;
.super Lcom/smartisanos/smengine/n;
.source "Utils.java"


# instance fields
.field final synthetic Ds:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/smartisanos/launcher/e/i;->val$state:I

    iput-object p3, p0, Lcom/smartisanos/launcher/e/i;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/smartisanos/launcher/e/i;->Ds:I

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/e/i;->val$state:I

    const/16 v1, 0x400

    if-ne v1, v0, :cond_2

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v2, p0, Lcom/smartisanos/launcher/e/i;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/provider/i;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/provider/i;->Lf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-boolean v1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/e/s;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cell is reDownload return. pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/e/i;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/e/i;->val$pkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->ka(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v3, :cond_3

    .line 12
    iget v3, p0, Lcom/smartisanos/launcher/e/i;->val$state:I

    iget v4, p0, Lcom/smartisanos/launcher/e/i;->Ds:I

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/view/a/g;->s(II)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 14
    :cond_5
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/e/s;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cell == null pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/e/i;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
