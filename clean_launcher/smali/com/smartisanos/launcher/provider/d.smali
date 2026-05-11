.class Lcom/smartisanos/launcher/provider/d;
.super Lcom/smartisanos/launcher/data/z;
.source "DownloadManagerDelegate.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/provider/e;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/e;Ljava/lang/String;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    invoke-direct {p0, p2, p3, p4}, Lcom/smartisanos/launcher/data/z;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/provider/i;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Lcom/smartisanos/launcher/provider/i;->Fs:Z

    .line 5
    iget v2, v1, Lcom/smartisanos/launcher/provider/i;->state:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    iget v3, v1, Lcom/smartisanos/launcher/provider/i;->state:I

    iget v1, v1, Lcom/smartisanos/launcher/provider/i;->progress:I

    invoke-static {v2, v3, v1}, Lcom/smartisanos/launcher/e/s;->b(Ljava/lang/String;II)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v1, v1, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v1, v1, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget v2, v2, Lcom/smartisanos/launcher/provider/f;->Cs:I

    iget-object v3, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v3, v3, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget v3, v3, Lcom/smartisanos/launcher/provider/f;->Ds:I

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/e/s;->b(Ljava/lang/String;II)V

    .line 8
    :goto_0
    sget-boolean v1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag setDownloadId: create cell. pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v3, v3, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v3, v3, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v3, v3, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v3, v3, Lcom/smartisanos/launcher/provider/f;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " downloadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v3, v3, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-wide v3, v3, Lcom/smartisanos/launcher/provider/f;->As:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " in runnable 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setDownloadId: create cell. pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-object v2, v2, Lcom/smartisanos/launcher/provider/f;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " downloadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/d;->this$1:Lcom/smartisanos/launcher/provider/e;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/e;->this$0:Lcom/smartisanos/launcher/provider/f;

    iget-wide v2, p0, Lcom/smartisanos/launcher/provider/f;->As:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " in runnable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
