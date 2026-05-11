.class Lcom/smartisanos/launcher/view/Cb;
.super Lcom/smartisanos/smengine/a;
.source "MainView.java"


# instance fields
.field final synthetic oB:Lcom/smartisanos/smengine/F;

.field final synthetic pB:Lcom/smartisanos/smengine/F;

.field final synthetic qB:Lcom/smartisanos/smengine/F;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Cb;->pB:Lcom/smartisanos/smengine/F;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/Cb;->oB:Lcom/smartisanos/smengine/F;

    iput-object p4, p0, Lcom/smartisanos/launcher/view/Cb;->qB:Lcom/smartisanos/smengine/F;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cb;->pB:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cb;->pB:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cb;->pB:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cb;->oB:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cb;->oB:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cb;->oB:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cb;->qB:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cb;->qB:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Cb;->qB:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object p0

    const-string v0, "t_blur_anim_background"

    .line 12
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Cb;->pB:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
