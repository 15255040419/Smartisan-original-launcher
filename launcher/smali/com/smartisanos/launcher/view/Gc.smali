.class public Lcom/smartisanos/launcher/view/Gc;
.super Lcom/smartisanos/smengine/SceneNode;
.source "SpecialDrawMultiTimesCubeNode.java"


# static fields
.field private static log:Lcom/smartisanos/launcher/va;


# instance fields
.field private mShadow:Lcom/smartisanos/smengine/F;

.field private oO:Lcom/smartisanos/launcher/view/Fc;

.field private pO:[F

.field private qO:Lcom/smartisanos/smengine/a/j;

.field private rO:Lcom/smartisanos/smengine/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Gc;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Gc;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Gc;->pO:[F

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Gc;->qO:Lcom/smartisanos/smengine/a/j;

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/view/Fc;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/launcher/view/Fc;-><init>(Lcom/smartisanos/launcher/view/Gc;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Gc;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->pO:[F

    return-object p0
.end method


# virtual methods
.method public Pb(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/Fc;->b(Lcom/smartisanos/launcher/view/Fc;I)V

    return-void
.end method

.method public Qb(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/Fc;->a(Lcom/smartisanos/launcher/view/Fc;I)V

    return-void
.end method

.method public a(FFI)V
    .locals 9

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p2

    .line 7
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p2

    .line 8
    iget v0, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v1, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_width:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_content_width:F

    div-float/2addr v0, v1

    .line 9
    iget v1, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v2, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_height:F

    mul-float/2addr v1, v2

    iget p2, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_content_height:F

    div-float/2addr v1, p2

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_displayshadow"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    mul-float v4, v0, p1

    mul-float v5, v1, p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/F;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    const-string p1, "DrawMultiTimesMaterial"

    .line 11
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    const-string p3, "icon_sort_shadow.png"

    invoke-static {p3, p2}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Lcom/smartisanos/launcher/view/Ia;->b(ILjava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 19
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p1, p3, v1}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    const/16 p3, 0xc7

    invoke-virtual {p1, p3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 25
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 26
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/L;->setDepthTestFunc(I)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    iget-object p2, p0, Lcom/smartisanos/launcher/view/Gc;->qO:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/F;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 28
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Gc;->rO:Lcom/smartisanos/smengine/a/j;

    .line 29
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_1

    .line 30
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_1
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/M;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Fc;->b(Lcom/smartisanos/launcher/view/Fc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/Fc;->a(Lcom/smartisanos/launcher/view/Fc;Lcom/smartisanos/smengine/M;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cell snapshot rect not create???"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lcom/smartisanos/smengine/M;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/view/Fc;->a(Lcom/smartisanos/launcher/view/Fc;Lcom/smartisanos/smengine/M;I)V

    return-void
.end method

.method public bq()Lcom/smartisanos/launcher/view/Fc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    return-object p0
.end method

.method public cq()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Fc;->c(Lcom/smartisanos/launcher/view/Fc;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    return-object p0
.end method

.method public create()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Fc;->a(Lcom/smartisanos/launcher/view/Fc;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    return-void
.end method

.method public dq()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public eq()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->oO:Lcom/smartisanos/launcher/view/Fc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Fc;->b(Lcom/smartisanos/launcher/view/Fc;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    return-object p0
.end method

.method public s(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Gc;->qO:Lcom/smartisanos/smengine/a/j;

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    float-to-double v1, p1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    div-float/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Gc;->rO:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p1, v2

    mul-float/2addr p1, p2

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v2, p2

    iget p2, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, p1, v2, p2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Gc;->mShadow:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_0
    return-void
.end method
