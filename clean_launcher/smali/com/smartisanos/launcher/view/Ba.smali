.class Lcom/smartisanos/launcher/view/Ba;
.super Lcom/smartisanos/smengine/a;
.source "DownloadWithWaveView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ba;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public Fj()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ba;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ba;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ba;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Ca;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag onKill? pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ba;->onComplete()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Ca;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "download_log_tag onKill?"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ba;->this$0:Lcom/smartisanos/launcher/view/Ca;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Ca;->b(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ba;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ba;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Ca;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download_log_tag playInstallSuccess. onComplete(). pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/Aa;->G(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->pa(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Ca;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Utils.isDoubleOpenApp(pkg) ==  true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ba;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p0, 0xa

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->oaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p0, v1, v3}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    aput-object v0, p0, v2

    .line 12
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->ZZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p0, v1, v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method
