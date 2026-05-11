.class Lcom/smartisanos/launcher/theme/o;
.super Lcom/smartisanos/smengine/n;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic nv:Lcom/smartisanos/smengine/Da;

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/t;

.field final synthetic vD:Lcom/smartisanos/smengine/Ea;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/t;ILcom/smartisanos/smengine/Da;Lcom/smartisanos/smengine/Ea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/o;->this$0:Lcom/smartisanos/launcher/theme/t;

    iput-object p3, p0, Lcom/smartisanos/launcher/theme/o;->nv:Lcom/smartisanos/smengine/Da;

    iput-object p4, p0, Lcom/smartisanos/launcher/theme/o;->vD:Lcom/smartisanos/smengine/Ea;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBackgroundForNewTheme back texture id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/o;->nv:Lcom/smartisanos/smengine/Da;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Da;->Rk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->uh()Lcom/smartisanos/smengine/F;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 6
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/theme/n;

    const/16 v2, 0x64

    invoke-direct {v0, p0, v2, v1}, Lcom/smartisanos/launcher/theme/n;-><init>(Lcom/smartisanos/launcher/theme/o;ILcom/smartisanos/smengine/F;)V

    const p0, 0x3dcccccd    # 0.1f

    .line 10
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->Ur()Lcom/smartisanos/smengine/F;

    return-void
.end method
