.class Lcom/smartisanos/launcher/e/j;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/e/j;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " INSTALL_SUCCESS. remove in the map(sEventList) pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/e/j;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v2, p0, Lcom/smartisanos/launcher/e/j;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sEventList.containsKey(pkg) pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/e/j;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " INSTALL_SUCCESS. sEventList.remove(pkg)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v2, p0, Lcom/smartisanos/launcher/e/j;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/provider/i;

    .line 6
    iget-object v2, v1, Lcom/smartisanos/launcher/provider/i;->events:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v1, Lcom/smartisanos/launcher/provider/i;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v2, 0x0

    .line 8
    iput-object v2, v1, Lcom/smartisanos/launcher/provider/i;->events:Ljava/util/ArrayList;

    .line 9
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object p0, p0, Lcom/smartisanos/launcher/e/j;->val$pkg:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
