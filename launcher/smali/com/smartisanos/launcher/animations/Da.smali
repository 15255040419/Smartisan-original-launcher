.class Lcom/smartisanos/launcher/animations/Da;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectFadeinFadeoutAnimation.java"


# instance fields
.field private XA:Lcom/smartisanos/launcher/view/a/g;

.field private parent:Lcom/smartisanos/launcher/view/b/M;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Ea;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/Ea;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Da;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Da;->parent:Lcom/smartisanos/launcher/view/b/M;

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onBegin()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->parent:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->parent:Lcom/smartisanos/launcher/view/b/M;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Da;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/Ea;->c(Lcom/smartisanos/launcher/animations/Ea;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/launcher/view/a/g;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    const v2, 0x8000

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->ym()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->Mi()V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->XA:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Da;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Ea;->d(Lcom/smartisanos/launcher/animations/Ea;)I

    .line 12
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/animations/Ea;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#####################currentindex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Da;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/Ea;->c(Lcom/smartisanos/launcher/animations/Ea;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
