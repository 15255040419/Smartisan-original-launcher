.class Lcom/smartisanos/launcher/view/ca;
.super Lcom/smartisanos/smengine/a;
.source "DownloadWithWaveView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ca;->c(Lcom/smartisanos/launcher/view/Ca;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Kj()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ca;->d(Lcom/smartisanos/launcher/view/Ca;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ca;->e(Lcom/smartisanos/launcher/view/Ca;)I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Ca;->d(Lcom/smartisanos/launcher/view/Ca;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/Ca;->c(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    goto/16 :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ca;->d(Lcom/smartisanos/launcher/view/Ca;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Ca;->a(Lcom/smartisanos/launcher/view/Ca;I)I

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Ca;->a(Lcom/smartisanos/launcher/view/Ca;Z)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iget v0, v0, Lcom/smartisanos/launcher/view/Ca;->nL:I

    const/16 v2, 0x10

    const/16 v3, 0x100

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    const/16 v2, 0x400

    if-ne v0, v2, :cond_4

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ca;->g(Lcom/smartisanos/launcher/view/Ca;)I

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ca;->f(Lcom/smartisanos/launcher/view/Ca;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ca;->f(Lcom/smartisanos/launcher/view/Ca;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/Ca;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag packageInfo != null. setDownloadState(INSTALL_SUCCESS, -1) pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ca;->this$0:Lcom/smartisanos/launcher/view/Ca;

    const/4 v0, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/smartisanos/launcher/view/Ca;->s(II)V

    :cond_4
    :goto_1
    return-void
.end method
