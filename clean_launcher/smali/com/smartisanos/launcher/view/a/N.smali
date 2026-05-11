.class Lcom/smartisanos/launcher/view/a/N;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic PB:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic QB:Lcom/smartisanos/smengine/oa;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/oa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/N;->this$0:Lcom/smartisanos/launcher/view/a/X;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/a/N;->PB:Lcom/smartisanos/smengine/SceneNode;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/a/N;->QB:Lcom/smartisanos/smengine/oa;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/N;->PB:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/N;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/16 v1, 0x200

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/N;->PB:Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/N;->PB:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/N;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/N;->PB:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/N;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/N;->PB:Lcom/smartisanos/smengine/SceneNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/N;->QB:Lcom/smartisanos/smengine/oa;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/oa;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/N;->QB:Lcom/smartisanos/smengine/oa;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/oa;->kill()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/N;->PB:Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/N;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/N;->PB:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/N;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :goto_0
    return-void
.end method
