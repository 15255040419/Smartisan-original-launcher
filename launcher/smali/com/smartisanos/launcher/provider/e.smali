.class Lcom/smartisanos/launcher/provider/e;
.super Lcom/smartisanos/smengine/n;
.source "DownloadManagerDelegate.java"


# instance fields
.field final synthetic XD:Lcom/smartisanos/launcher/data/ItemInfo;

.field final synthetic this$0:Lcom/smartisanos/launcher/provider/f;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/f;ILcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iput-object p3, p0, Lcom/smartisanos/launcher/provider/e;->XD:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag add package event run. setDownloadId Event pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v0, v0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setDownloadId: pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is intalled. Event_User_define. cell is not create."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/provider/i;

    if-eqz v1, :cond_c

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/provider/i;->Lf()Z

    move-result v2

    if-nez v2, :cond_7

    .line 7
    iget-boolean v2, v1, Lcom/smartisanos/launcher/provider/i;->Is:Z

    if-eqz v2, :cond_5

    .line 8
    sget-boolean v1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag setDownloadId: pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v3, v3, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " install failed. Event_User_define. cell is not create."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_3
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag setDownloadId() remove in the map(sEventList) pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v3, v3, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sEventList.remove(pkg)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_4
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v0

    return-void

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-static {v2}, Lcom/smartisanos/launcher/Aa;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 13
    sget-boolean v1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag this maybe is update. setDownloadId Event pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :cond_6
    monitor-exit v0

    return-void

    .line 15
    :cond_7
    sget-boolean v2, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_log_tag setDownloadId: this maybe not back launcher reDwonload. pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v4, v4, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, v1, Lcom/smartisanos/launcher/provider/i;->Gs:Z

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag DatabaseHandler.PackageTask.handleTaskList. setDownloadId: pkg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v3, v3, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/e;->XD:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/smartisanos/launcher/provider/d;

    iget-object v3, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v3, v3, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v2, v0}, Lcom/smartisanos/launcher/provider/d;-><init>(Lcom/smartisanos/launcher/provider/e;Ljava/lang/String;ILjava/util/List;)V

    .line 22
    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/z;->a(Lcom/smartisanos/launcher/data/z;Z)V

    .line 23
    iget-boolean v0, v1, Lcom/smartisanos/launcher/data/z;->Mq:Z

    if-eqz v0, :cond_a

    .line 24
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setDownloadId: create cell. pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " downloadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-wide v2, p0, Lcom/smartisanos/launcher/provider/f;->As:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_a
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setDownloadId: cell is not create. pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " downloadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-wide v2, p0, Lcom/smartisanos/launcher/provider/f;->As:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " pTask.isHandle = false"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_b
    :goto_0
    return-void

    .line 26
    :cond_c
    :try_start_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag setDownloadId: pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " install failed. EventListWithDM is null"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 27
    :cond_d
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
