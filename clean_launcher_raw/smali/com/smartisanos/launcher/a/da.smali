.class Lcom/smartisanos/launcher/a/da;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/a/ea;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/ea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/da;->this$2:Lcom/smartisanos/launcher/a/ea;

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
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object v2, p0, Lcom/smartisanos/launcher/a/da;->this$2:Lcom/smartisanos/launcher/a/ea;

    iget-object v2, v2, Lcom/smartisanos/launcher/a/ea;->Uj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoveFromDB() removeDownloadAppWithDelay remove. pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/a/da;->this$2:Lcom/smartisanos/launcher/a/ea;

    iget-object v3, v3, Lcom/smartisanos/launcher/a/ea;->Uj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " the list contains it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    iget-object p0, p0, Lcom/smartisanos/launcher/a/da;->this$2:Lcom/smartisanos/launcher/a/ea;

    iget-object p0, p0, Lcom/smartisanos/launcher/a/ea;->Uj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
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
