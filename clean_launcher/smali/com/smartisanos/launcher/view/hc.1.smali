.class public Lcom/smartisanos/launcher/view/hc;
.super Lcom/smartisanos/smengine/SceneNode;
.source "NavigationBar.java"


# instance fields
.field private LN:[F

.field private mHeight:F

.field private mLocation:Lcom/smartisanos/smengine/a/j;

.field private mWidth:F

.field private qx:Lcom/smartisanos/smengine/F;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/hc;->mLocation:Lcom/smartisanos/smengine/a/j;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/hc;->LN:[F

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method private fz()Lcom/smartisanos/smengine/F;
    .locals 11

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/launcher/view/hc;->mWidth:F

    .line 4
    sget v0, Lcom/smartisanos/launcher/data/Constants;->navigation_bar_height:I

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/launcher/view/hc;->mHeight:F

    .line 5
    iget v0, p0, Lcom/smartisanos/launcher/view/hc;->mWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/smartisanos/launcher/view/hc;->mHeight:F

    div-float/2addr v2, v1

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/hc;->mLocation:Lcom/smartisanos/smengine/a/j;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/smartisanos/smengine/d/a;->a(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/view/hc;->mWidth:F

    iget v1, p0, Lcom/smartisanos/launcher/view/hc;->mHeight:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "mNaviBarView"

    invoke-static {v4, v0, v1, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 7
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 8
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_2

    const-string v0, "TwoTexDifferentTexcoordMaterial"

    .line 9
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 12
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const-string v1, "navigation_bar.png"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 13
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    const-string v1, "background.png"

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->mLocation:Lcom/smartisanos/smengine/a/j;

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v7, 0x0

    iget v8, p0, Lcom/smartisanos/launcher/view/hc;->mWidth:F

    iget v9, p0, Lcom/smartisanos/launcher/view/hc;->mHeight:F

    iget-object v10, p0, Lcom/smartisanos/launcher/view/hc;->LN:[F

    invoke-static/range {v4 .. v10}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navibar_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "two.texture.cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v1

    if-nez v1, :cond_3

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 23
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    :cond_3
    const/4 v0, 0x3

    .line 24
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v2

    if-nez v2, :cond_4

    .line 25
    iget-object v2, p0, Lcom/smartisanos/launcher/view/hc;->LN:[F

    invoke-virtual {v1, v0, v2}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_0

    .line 26
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/hc;->LN:[F

    invoke-virtual {v1, v0, v2}, Lcom/smartisanos/smengine/y;->d(I[F)V

    goto :goto_0

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    const-string v1, "t_blur_background"

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    goto :goto_0

    .line 32
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 38
    iget-object p0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    return-object p0
.end method


# virtual methods
.method public d(ZF)Lcom/smartisanos/smengine/g;
    .locals 10

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/I;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    const/16 v2, 0x102

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 6
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 7
    new-instance v4, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v4}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 8
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v6, v6, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v7, Lcom/smartisanos/smengine/a/k;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8, v8, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr p2, v9

    const/16 v9, 0xe

    invoke-virtual {v4, v5, v7, v9, p2}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 9
    iget-object v5, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-static {v5, v4}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    if-eqz v0, :cond_0

    .line 11
    iget-object v2, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 12
    :cond_0
    new-instance v2, Lcom/smartisanos/launcher/view/fc;

    invoke-direct {v2, p0, v0}, Lcom/smartisanos/launcher/view/fc;-><init>(Lcom/smartisanos/launcher/view/hc;Z)V

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 13
    invoke-virtual {v1, v8, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 14
    new-instance v0, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 15
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2, v8, v8, v8, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4, v6, v6, v6, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v0, v2, v4, v9, p2}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 16
    iget-object v2, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 18
    new-instance v2, Lcom/smartisanos/launcher/view/gc;

    invoke-direct {v2, p0, p1}, Lcom/smartisanos/launcher/view/gc;-><init>(Lcom/smartisanos/launcher/view/hc;I)V

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 19
    invoke-virtual {v1, p2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    instance-of p1, p1, Lcom/smartisanos/smengine/mymaterial/I;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->yk()[F

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/hc;->ip()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/hc;->fz()Lcom/smartisanos/smengine/F;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/hc;->mLocation:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public ip()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/I;

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/hc;->mLocation:Lcom/smartisanos/smengine/a/j;

    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->z:F

    iget v5, p0, Lcom/smartisanos/launcher/view/hc;->mWidth:F

    iget v6, p0, Lcom/smartisanos/launcher/view/hc;->mHeight:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/hc;->LN:[F

    invoke-static/range {v1 .. v7}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigation_bar_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "two.texture.cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    :cond_1
    const/4 v0, 0x3

    .line 11
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v2

    if-nez v2, :cond_2

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/hc;->LN:[F

    invoke-virtual {v1, v0, p0}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/hc;->LN:[F

    invoke-virtual {v1, v0, p0}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 14
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_3
    return-void
.end method

.method public rb(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setColor(FFFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    return-void
.end method

.method public setLayer(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/hc;->qx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method
