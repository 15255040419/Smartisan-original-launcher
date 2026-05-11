.class public Lcom/smartisanos/launcher/view/a/da;
.super Lcom/smartisanos/launcher/view/a/ga;
.source "CellOnFolderPage.java"


# instance fields
.field private log:Lcom/smartisanos/launcher/va;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    .line 2
    const-class p1, Lcom/smartisanos/launcher/view/a/da;

    invoke-static {p1}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/da;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method private hd(I)Lcom/smartisanos/smengine/F;
    .locals 5

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v0, "TextureModularColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 6
    new-instance v3, Lcom/smartisanos/smengine/Ca;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v2, v2}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p0

    .line 8
    iget p0, p0, Lcom/smartisanos/launcher/view/jb;->Gv:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-object p1
.end method


# virtual methods
.method public Ea(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/da;->hd(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->Ea(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    return-object p0
.end method

.method public Si()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->vH:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->wn()Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v1, v0, Lcom/smartisanos/smengine/a/k;->z:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->w:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v3, v3

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v4, v4

    iget v5, v0, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v5, v5

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v0, v0

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/da;->b(Lcom/smartisanos/smengine/SceneNode;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/ga;->a(Lcom/smartisanos/smengine/SceneNode;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0, p0, p0, p0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    return-void
.end method

.method public create()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->iH:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->ll()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v2, :cond_1

    const/4 v3, 0x5

    .line 11
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->db(I)Lcom/smartisanos/smengine/F;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->qb(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->iH:Z

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isNeedDisplay()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/launcher/view/a/g;->e(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->gt()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v2

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->db(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->d(Lcom/smartisanos/smengine/Camera;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v4, 0x40000

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v5, 0x17

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/launcher/view/a/g;->e(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v5

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v4, v0, Lcom/smartisanos/launcher/view/a/g;->rH:Z

    if-eqz v4, :cond_7

    .line 15
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    iget v5, v0, Lcom/smartisanos/launcher/view/a/g;->YG:I

    iget v0, v0, Lcom/smartisanos/launcher/view/a/g;->ZG:I

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object v0

    .line 16
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v4, v1

    if-eqz v5, :cond_3

    .line 18
    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 19
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 20
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 21
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v1

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 22
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v7

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 23
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x5

    aget-object v6, v4, v5

    if-eqz v6, :cond_4

    .line 24
    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 25
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 26
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v5

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 27
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v6, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v5

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 28
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v7

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 29
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, v4, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/Camera;)V

    .line 30
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 31
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v4, v3

    if-eqz v5, :cond_6

    .line 32
    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 33
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 34
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 35
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v3

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 36
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v7

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v0

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 37
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->b(Lcom/smartisanos/smengine/Camera;)V

    .line 38
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_8

    .line 39
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/N;->La(Z)V

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->disableDisplayUpdate()V

    .line 41
    :cond_9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v4, v0, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    if-nez v4, :cond_d

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0xc

    aget-object v5, v0, v4

    if-eqz v5, :cond_d

    .line 42
    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 43
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ba(Z)V

    .line 44
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/L;->Mk()Z

    move-result v0

    if-nez v0, :cond_a

    .line 45
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    goto :goto_0

    .line 46
    :cond_a
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v2, v0, Lcom/smartisanos/launcher/view/a/g;->sH:Z

    if-eqz v2, :cond_b

    .line 48
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 49
    :cond_b
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_1

    .line 50
    :cond_c
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 52
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->rH:Z

    if-nez v1, :cond_e

    .line 53
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/Camera;)V

    .line 54
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->b(Lcom/smartisanos/smengine/Camera;)V

    .line 55
    :cond_e
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 56
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 57
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 58
    :cond_f
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 60
    :cond_10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v0, 0x8

    aget-object v1, p0, v0

    if-eqz v1, :cond_11

    .line 61
    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_11
    return-void
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/launcher/view/a/ga;->init()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const v0, 0x50002

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->VH:I

    return-void
.end method
