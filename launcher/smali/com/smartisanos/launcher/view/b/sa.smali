.class public Lcom/smartisanos/launcher/view/b/sa;
.super Lcom/smartisanos/launcher/view/b/M;
.source "WidgetPage.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private sJ:Lcom/smartisanos/smengine/F;

.field private tJ:Lcom/smartisanos/smengine/N;

.field private uJ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/b/sa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/b/sa;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/b/M;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/sa;->tJ:Lcom/smartisanos/smengine/N;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/sa;->uJ:Ljava/lang/String;

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/view/b/sa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "create widget page"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    return-void
.end method

.method private jy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_bg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v1, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 7
    new-instance v1, Lcom/smartisanos/smengine/Ca;

    invoke-direct {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 8
    invoke-static {v2, v2}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->uJ:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/sa;->uJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method protected fn()V
    .locals 0

    return-void
.end method

.method protected gn()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/sa;->jy()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->hn()V

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public rb(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateLayer(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->updateLayer(I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/sa;->sJ:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->zw:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method public updateWorldBoundingVolume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/launcher/view/b/M;->updateWorldBoundingVolume()V

    return-void
.end method

.method public updateWorldTransforms()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/launcher/view/b/M;->updateWorldTransforms()V

    return-void
.end method
