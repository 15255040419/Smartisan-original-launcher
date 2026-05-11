.class public Lcom/smartisanos/launcher/view/a/Z;
.super Ljava/lang/Object;
.source "CellGaussianPart.java"


# instance fields
.field protected Oy:[F

.field protected Py:[F

.field private Qj:Lcom/smartisanos/launcher/view/a/g;

.field protected Qy:[F

.field protected Ry:Lcom/smartisanos/smengine/a/j;

.field protected Sy:Lcom/smartisanos/smengine/a/j;

.field protected Ty:Lcom/smartisanos/smengine/a/j;

.field protected Uy:Lcom/smartisanos/smengine/a/j;

.field protected Vy:Ljava/lang/String;

.field protected Wy:Ljava/lang/String;

.field protected Xy:Ljava/lang/String;

.field private Yy:Lcom/smartisanos/smengine/i;

.field private log:Lcom/smartisanos/launcher/va;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/launcher/view/a/Z;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->log:Lcom/smartisanos/launcher/va;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Py:[F

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Ry:Lcom/smartisanos/smengine/a/j;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Sy:Lcom/smartisanos/smengine/a/j;

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CellGaussianPart: Can\'t create gaussian part for null cell!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private Uc(I)Lcom/smartisanos/smengine/F;
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

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

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    const-string v0, "t_blur_background"

    .line 11
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 13
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Gv:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    const-string v0, "cell_alpha_long.press.blur"

    .line 15
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Wy:Ljava/lang/String;

    return-object p1
.end method

.method private Vc(I)Lcom/smartisanos/smengine/F;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v0, v0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v1, p1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v2, v1, v4, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    .line 3
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->blur_radius:F

    float-to-int v1, v1

    .line 4
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->blur_width:F

    float-to-int v4, v2

    .line 5
    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v2, v5

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "GaussianBlurEffectMaterial"

    .line 8
    invoke-static {v5, v1, v2}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/mymaterial/b;

    .line 9
    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/smengine/mymaterial/C;->setSize(II)V

    const-string v0, "TextureModularColorMaterial"

    .line 10
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/mymaterial/b;->b(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 14
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    const/4 v0, 0x3

    .line 15
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 16
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 18
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 19
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v2, v2, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 21
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Gv:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cell_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/L;->Jk()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "long.press.blur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Vy:Ljava/lang/String;

    return-object p1
.end method

.method private Wc(I)Lcom/smartisanos/smengine/F;
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

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
    invoke-virtual {p1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const-string v0, "t_blur_icon"

    .line 5
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 15
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Iv:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/a/Z;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method


# virtual methods
.method public Ai()V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xa

    aget-object v3, v1, v2

    if-eqz v3, :cond_9

    .line 3
    iget-boolean v3, v0, Lcom/smartisanos/launcher/view/a/g;->sH:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Ty:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Uy:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x18

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    .line 7
    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Qy:[F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/Z;->Oy:[F

    invoke-static {v0, v2, v3}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;[F[F)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/mymaterial/b;

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Vy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/C;->Wt()Lcom/smartisanos/smengine/y;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/Z;->Vy:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Oy:[F

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Oy:[F

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/mymaterial/C;->d(Lcom/smartisanos/smengine/y;)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x19

    aget-object v2, v0, v1

    if-eqz v2, :cond_4

    aget-object v0, v0, v1

    .line 17
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Ty:Lcom/smartisanos/smengine/a/j;

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Uy:Lcom/smartisanos/smengine/a/j;

    iget v9, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v11, p0, Lcom/smartisanos/launcher/view/a/Z;->Oy:[F

    invoke-static/range {v5 .. v11}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 19
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Wy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/Z;->Wy:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 22
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Oy:[F

    invoke-virtual {v0, v4, v2}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_1

    .line 23
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Oy:[F

    invoke-virtual {v0, v4, v2}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 24
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->updateMesh(Lcom/smartisanos/smengine/y;)V

    :cond_4
    return-void

    .line 25
    :cond_5
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 26
    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/I;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 27
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    const/16 v3, 0x100

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/X;->Aa(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 28
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    :cond_6
    if-nez v4, :cond_9

    if-eqz v0, :cond_9

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 30
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Ry:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Sy:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Ry:Lcom/smartisanos/smengine/a/j;

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Sy:Lcom/smartisanos/smengine/a/j;

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v9, p0, Lcom/smartisanos/launcher/view/a/Z;->Py:[F

    invoke-static/range {v3 .. v9}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 33
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Xy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_7

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/Z;->Xy:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 36
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    :cond_7
    const/4 v1, 0x3

    .line 37
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v3

    if-nez v3, :cond_8

    .line 38
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/Z;->Py:[F

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_2

    .line 39
    :cond_8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/Z;->Py:[F

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 40
    :goto_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v2

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->updateMesh(Lcom/smartisanos/smengine/y;)V

    :cond_9
    return-void
.end method

.method protected Ba(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/Z;->Vc(I)Lcom/smartisanos/smengine/F;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/Z;->Uc(I)Lcom/smartisanos/smengine/F;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_3

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/Z;->Wc(I)Lcom/smartisanos/smengine/F;

    move-result-object v1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v1, p0, p1

    return-object v1

    .line 6
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNode: Can\'t create node by index ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Ca(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const-string v1, "trans.png"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result p0

    if-ne p0, p1, :cond_1

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public Da(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/g;FFZ)V
    .locals 11

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 4
    new-instance v10, Lcom/smartisanos/smengine/oa;

    invoke-direct {v10, p0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    invoke-virtual {v10, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 p0, 0xe

    .line 6
    invoke-virtual {v10, p0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 p0, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    .line 7
    new-instance p4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {p4, p0, p0, p0, p0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 8
    new-instance p0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {p0, p2, p2, p2, p2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {p4, p2, p2, p2, p2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 10
    new-instance p2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {p2, p0, p0, p0, p0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    move-object p0, p2

    :goto_0
    const/4 v1, 0x3

    .line 11
    iget v2, p4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, p4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, p4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, p4, Lcom/smartisanos/smengine/a/k;->w:F

    iget v6, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v9, p0, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 12
    invoke-virtual {p1, p3, v10}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/y;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/smengine/y;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Oy:[F

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Py:[F

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qy:[F

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Ry:Lcom/smartisanos/smengine/a/j;

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Sy:Lcom/smartisanos/smengine/a/j;

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Ty:Lcom/smartisanos/smengine/a/j;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Uy:Lcom/smartisanos/smengine/a/j;

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Yy:Lcom/smartisanos/smengine/i;

    return-void
.end method

.method public d(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->Va(I)V

    return-void
.end method

.method public d(ZI)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_6

    .line 5
    iput-boolean p1, v0, Lcom/smartisanos/launcher/view/a/g;->sH:Z

    .line 6
    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/a/g;->sH:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Dm()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->NH:Lcom/smartisanos/smengine/a/j;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->LH:[F

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v0, v1, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    new-array v1, v2, [F

    .line 11
    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Oy:[F

    const/4 v1, 0x6

    new-array v1, v1, [F

    .line 12
    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qy:[F

    .line 13
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Ty:Lcom/smartisanos/smengine/a/j;

    .line 14
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Uy:Lcom/smartisanos/smengine/a/j;

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->NH:Lcom/smartisanos/smengine/a/j;

    .line 16
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Oy:[F

    .line 17
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Qy:[F

    .line 18
    iput-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->LH:[F

    .line 19
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Ty:Lcom/smartisanos/smengine/a/j;

    .line 20
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Uy:Lcom/smartisanos/smengine/a/j;

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/Z;->ga(Z)V

    .line 23
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 24
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v2, :cond_5

    .line 25
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 29
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_3
    if-eqz v1, :cond_5

    .line 30
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_1

    .line 31
    :cond_4
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/Z;->ga(Z)V

    .line 32
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 34
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/Z;->e(ZI)V

    .line 35
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 36
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_6
    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Np()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/Z;->Ai()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->sH:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x400

    .line 9
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/Z;->Ai()V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 16
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_2
    return-void
.end method

.method public e(ZI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ge v3, v1, :cond_2

    aget-object v6, v0, v3

    if-eqz v6, :cond_1

    .line 2
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0xc

    aget-object v3, v0, v1

    if-eqz v3, :cond_3

    .line 6
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x18

    aget-object v3, v0, v1

    if-eqz v3, :cond_4

    .line 8
    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x19

    aget-object v3, v0, v1

    if-eqz v3, :cond_5

    .line 11
    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0xa

    aget-object v6, v1, v3

    if-eqz v6, :cond_7

    if-eqz p1, :cond_6

    .line 14
    aget-object v0, v1, v3

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_2

    .line 15
    :cond_6
    aget-object v1, v1, v3

    iget-boolean v6, v0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    invoke-virtual {v0, v1, v6}, Lcom/smartisanos/launcher/view/a/g;->e(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x10

    aget-object v3, v0, v1

    if-eqz v3, :cond_8

    .line 18
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v1, v2

    if-eqz v3, :cond_a

    if-eqz p1, :cond_9

    .line 20
    aget-object v0, v1, v2

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_3

    .line 21
    :cond_9
    aget-object v1, v1, v2

    iget-boolean v3, v0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/view/a/g;->d(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 22
    :goto_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x1b

    aget-object v6, v1, v3

    if-eqz v6, :cond_c

    if-eqz p1, :cond_b

    .line 24
    aget-object v0, v1, v3

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_4

    .line 25
    :cond_b
    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->db(Z)V

    .line 26
    :goto_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x5

    aget-object v6, v1, v3

    if-eqz v6, :cond_e

    if-eqz p1, :cond_d

    .line 28
    aget-object v0, v1, v3

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_5

    .line 29
    :cond_d
    aget-object v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 30
    :goto_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 31
    :cond_e
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v1, v5

    if-eqz v3, :cond_10

    if-eqz p1, :cond_f

    .line 32
    aget-object p1, v1, v5

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_6

    .line 33
    :cond_f
    aget-object p1, v1, v5

    invoke-virtual {v0, p1, v2}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 34
    :goto_6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 35
    :cond_10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, p1, v4

    if-eqz v0, :cond_11

    .line 36
    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 37
    :cond_11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x2

    aget-object v1, p1, v0

    if-eqz v1, :cond_12

    .line 38
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 39
    :cond_12
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x7

    aget-object v1, p1, v0

    if-eqz v1, :cond_13

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result p1

    if-nez p1, :cond_13

    .line 40
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v0

    check-cast p1, Lcom/smartisanos/launcher/view/activeicon/a;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/activeicon/a;->Da(I)V

    .line 41
    :cond_13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v0, 0x8

    aget-object v1, p1, v0

    if-eqz v1, :cond_14

    .line 42
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 43
    :cond_14
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 44
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public ea(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/a/Z;->d(ZI)V

    return-void
.end method

.method public fa(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/a/Z;->e(ZI)V

    return-void
.end method

.method public ga(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/Z;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 4
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/a/Z;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/SceneNode;Z)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Vy:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Wy:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public ha(Z)V
    .locals 1

    const/16 v0, 0x1a

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/Z;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object p0

    const-string p1, "t_blur_icon"

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ui()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Lm()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method protected vi()V
    .locals 8

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/i;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v3, v2

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    neg-float v5, v1

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x41400000    # 12.0f

    div-float/2addr v5, v7

    div-float/2addr v2, v4

    mul-float/2addr v1, v6

    div-float/2addr v1, v7

    invoke-direct {v0, v3, v5, v2, v1}, Lcom/smartisanos/smengine/i;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Yy:Lcom/smartisanos/smengine/i;

    return-void
.end method

.method public wi()Lcom/smartisanos/smengine/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Yy:Lcom/smartisanos/smengine/i;

    return-object p0
.end method

.method public xi()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    .line 2
    iget v2, v0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/Z;->wi()Lcom/smartisanos/smengine/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 7
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v6

    invoke-static {v1, v2, v5, v6, v4}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object p0

    .line 10
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 11
    invoke-virtual {p0, v4, v1}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v3
.end method

.method public yi()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x400

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    const/16 v1, 0x18

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 6
    invoke-virtual {p0, v2, v2}, Lcom/smartisanos/launcher/view/a/Z;->d(ZI)V

    .line 7
    sput v2, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    .line 9
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/view/a/Y;

    const/16 v3, 0x64

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/launcher/view/a/Y;-><init>(Lcom/smartisanos/launcher/view/a/Z;I)V

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 13
    :cond_2
    :goto_0
    sget-object v0, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->eb(Z)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v2, v1

    if-eqz v3, :cond_4

    .line 16
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 17
    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v5, v4

    .line 18
    aget-object v2, v2, v1

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->select_cell_gaussian_background_sale_x_factor:F

    mul-float/2addr v3, v4

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->select_cell_gaussian_background_sale_y_factor:F

    mul-float/2addr v5, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_4
    return-void
.end method

.method public zi()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/Z;->ga(Z)V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x19

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 4
    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/Z;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method
