.class Lcom/smartisanos/launcher/view/a/ea;
.super Lcom/smartisanos/smengine/a;
.source "CellOnPage.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/ga;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/ga;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/ea;->this$0:Lcom/smartisanos/launcher/view/a/ga;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public Fj()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ea;->this$0:Lcom/smartisanos/launcher/view/a/ga;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/ga;->a(Lcom/smartisanos/launcher/view/a/ga;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "### kill"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ea;->this$0:Lcom/smartisanos/launcher/view/a/ga;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ea;->this$0:Lcom/smartisanos/launcher/view/a/ga;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ea;->this$0:Lcom/smartisanos/launcher/view/a/ga;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ea;->this$0:Lcom/smartisanos/launcher/view/a/ga;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method
