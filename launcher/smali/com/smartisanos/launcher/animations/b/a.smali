.class public Lcom/smartisanos/launcher/animations/b/a;
.super Lcom/smartisanos/smengine/SceneNode;
.source "BackHomeAnimNode.java"


# instance fields
.field private SG:Lcom/smartisanos/smengine/F;

.field private TG:F

.field private Zp:Lcom/smartisanos/smengine/a/j;

.field private log:Lcom/smartisanos/launcher/va;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    const-class p1, Lcom/smartisanos/launcher/animations/b/a;

    invoke-static {p1}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/b/a;->log:Lcom/smartisanos/launcher/va;

    .line 3
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/b/a;->Zp:Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/smartisanos/smengine/F;)V
    .locals 3

    .line 21
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 24
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/L;->a(Lcom/smartisanos/smengine/a/k;)V

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/L;->Ba(Z)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/L;->Ba(Z)V

    .line 29
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 30
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 31
    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 32
    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Zk()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public a(Ljava/lang/String;F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/animations/b/a;->a(Ljava/lang/String;Lcom/smartisanos/smengine/F;)V

    .line 3
    iput p2, p0, Lcom/smartisanos/launcher/animations/b/a;->TG:F

    return-void

    .line 4
    :cond_0
    iput p2, p0, Lcom/smartisanos/launcher/animations/b/a;->TG:F

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_create_back_home_anim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 7
    invoke-static {v0, p2, p2, v1, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p2

    const-string v0, "TextureBlendModularColorMaterial"

    .line 8
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/mymaterial/u;

    .line 9
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v3, v4}, Lcom/smartisanos/smengine/mymaterial/u;->setBlendColor(FFFF)V

    .line 10
    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 11
    invoke-virtual {p2, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 13
    new-instance v4, Lcom/smartisanos/smengine/Ca;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v2, v2, v2}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/b/a;->a(Ljava/lang/String;Lcom/smartisanos/smengine/F;)V

    .line 15
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    .line 16
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Q;->Xk()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    const/16 p2, 0x103

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 20
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_2
    return-void
.end method

.method public b(FZ)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    if-eqz p1, :cond_1

    .line 2
    iget p2, p0, Lcom/smartisanos/launcher/animations/b/a;->TG:F

    div-float v2, p2, v1

    div-float/2addr p2, v1

    invoke-virtual {p1, v2, p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    if-eqz p2, :cond_1

    .line 5
    iget v2, p0, Lcom/smartisanos/launcher/animations/b/a;->TG:F

    div-float/2addr v2, v1

    mul-float/2addr v2, p1

    .line 6
    invoke-virtual {p2, v2, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public render(Lcom/smartisanos/smengine/Ga;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/a;->SG:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method
