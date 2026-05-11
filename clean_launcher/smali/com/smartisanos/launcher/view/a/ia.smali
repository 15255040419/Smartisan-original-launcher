.class Lcom/smartisanos/launcher/view/a/ia;
.super Lcom/smartisanos/smengine/a;
.source "FolderCell.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/ka;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/ka;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public Fj()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/ka;->b(Lcom/smartisanos/launcher/view/a/ka;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "### kill"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->mf()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/ka;->a(Lcom/smartisanos/launcher/view/a/ka;)Lcom/smartisanos/launcher/view/a/la;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/a/la;->nz:Z

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/ka;->fb(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->mf()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/ka;->a(Lcom/smartisanos/launcher/view/a/ka;)Lcom/smartisanos/launcher/view/a/la;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/a/la;->nz:Z

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ia;->this$0:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/ka;->fb(Z)V

    :cond_0
    return-void
.end method
