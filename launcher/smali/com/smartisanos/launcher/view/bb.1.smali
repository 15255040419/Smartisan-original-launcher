.class public Lcom/smartisanos/launcher/view/bb;
.super Lcom/smartisanos/smengine/SceneNode;
.source "FloatPageNode.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private MM:Lcom/smartisanos/launcher/view/b/M;

.field private NM:Lcom/smartisanos/smengine/a/j;

.field private Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private OM:I

.field private QM:Lcom/smartisanos/launcher/view/a/g;

.field private RM:Lcom/smartisanos/smengine/F;

.field private SM:Z

.field private TM:Lcom/smartisanos/smengine/F;

.field private UM:Lcom/smartisanos/smengine/F;

.field private VM:Lcom/smartisanos/smengine/a/j;

.field private WM:Lcom/smartisanos/smengine/a/j;

.field private XM:Lcom/smartisanos/smengine/a/j;

.field private dl:Lcom/smartisanos/launcher/view/b/fa;

.field private yn:Lcom/smartisanos/smengine/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/bb;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/bb;->SM:Z

    .line 4
    iput-object p2, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    .line 5
    iget-object p2, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/view/tc;->Ab(Z)V

    .line 6
    iput-object p3, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-void
.end method

.method private Kw()V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_FloatCoverBG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Fb;->h(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 5
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Fb;->g(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 6
    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v4, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {v0, v5, v6, v2, v3}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    .line 7
    iget v5, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/16 v5, 0x8

    new-array v5, v5, [F

    .line 9
    iget v6, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v1, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v9, 0x0

    iget v10, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v4, Lcom/smartisanos/smengine/a/j;->y:F

    move-object v12, v5

    invoke-static/range {v6 .. v12}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mesh_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v4

    if-nez v4, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v4

    .line 13
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    :goto_0
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v6

    if-nez v6, :cond_1

    .line 17
    invoke-virtual {v4, v1, v5}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v4, v1, v5}, Lcom/smartisanos/smengine/y;->d(I[F)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/bb;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 20
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    .line 21
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v1, v1

    int-to-float v4, v4

    .line 22
    invoke-static {v0, v1, v4, v2, v3}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    :goto_1
    const-string v1, "TextureModularColorMaterial"

    .line 23
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 25
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {v0, v4, v4, v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 27
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 28
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    .line 29
    invoke-virtual {v1, v2, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 30
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    const-string v2, "floatPage/dark80_16x16.png"

    .line 31
    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 32
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/16 v4, 0x55

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 33
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 34
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 36
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 37
    :goto_2
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_4

    const-string v2, "t_blur_background"

    .line 38
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 40
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 41
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const/4 v2, 0x2

    .line 42
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 44
    :cond_4
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 45
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 46
    iput-object v0, p0, Lcom/smartisanos/launcher/view/bb;->RM:Lcom/smartisanos/smengine/F;

    return-void
.end method

.method private Ug()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/Za;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/Za;-><init>(Lcom/smartisanos/launcher/view/bb;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    return-void
.end method

.method private Uy()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/view/Fb;->h(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 4
    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "mPageBackgroundColorRect"

    invoke-static {v5, v2, v1, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v5}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    const/16 v2, 0x56

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v6, v4}, Lcom/smartisanos/smengine/L;->c(IIII)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 14
    invoke-static {v0}, Lcom/smartisanos/launcher/view/Fb;->g(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const-string v0, "mPageBackgroundColorRect_TextureName"

    .line 17
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 18
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 19
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v3, 0xff

    .line 20
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 21
    new-instance v2, Lcom/smartisanos/smengine/Da;

    invoke-direct {v2, v1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 23
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 24
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    if-eqz v0, :cond_1

    .line 25
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 26
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method private Vy()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/bb;->xp()V

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/bb;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "#### float page back animation"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->fi()V

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->th()V

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 9
    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v2, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    .line 10
    iget-object v2, v0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 11
    iput-boolean v3, v0, Lcom/smartisanos/launcher/view/bb;->SM:Z

    .line 12
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 13
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/16 v12, 0xf

    if-eqz v4, :cond_3

    const/16 v4, 0xe

    goto :goto_0

    :cond_3
    move v4, v12

    :goto_0
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 14
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 15
    iget-object v4, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    const/4 v5, 0x0

    .line 16
    iget v6, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v4, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v4, v0, Lcom/smartisanos/launcher/view/bb;->NM:Lcom/smartisanos/smengine/a/j;

    iget v9, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v4, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v4, v2

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 17
    iget-object v4, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 18
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v2, :cond_4

    .line 19
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 20
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 21
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 23
    iget-object v4, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    const/4 v14, 0x1

    .line 24
    iget v15, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v17, 0x3f800000    # 1.0f

    iget-object v6, v0, Lcom/smartisanos/launcher/view/bb;->VM:Lcom/smartisanos/smengine/a/j;

    iget v7, v6, Lcom/smartisanos/smengine/a/j;->x:F

    div-float v18, v15, v7

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->y:F

    div-float v19, v4, v6

    const/high16 v20, 0x3f800000    # 1.0f

    move-object v13, v2

    move/from16 v16, v4

    invoke-virtual/range {v13 .. v20}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 25
    iget-object v4, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v5, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 26
    :cond_4
    iget-object v2, v0, Lcom/smartisanos/launcher/view/bb;->RM:Lcom/smartisanos/smengine/F;

    if-eqz v2, :cond_6

    .line 27
    new-instance v4, Lcom/smartisanos/smengine/oa;

    invoke-direct {v4, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 28
    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 29
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3f333333    # 0.7f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object v13, v4

    .line 30
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 31
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_5

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v4

    .line 32
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 33
    :cond_5
    iget-object v2, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v5, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 34
    :cond_6
    iget-object v2, v0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    if-eqz v2, :cond_7

    .line 35
    new-instance v4, Lcom/smartisanos/smengine/oa;

    invoke-direct {v4, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 36
    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 37
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v4

    .line 38
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 39
    iget-object v1, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v5, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 40
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 41
    iget-object v1, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/Wa;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/Wa;-><init>(Lcom/smartisanos/launcher/view/bb;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 42
    iget-object v0, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method private Wy()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/bb;->xp()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zg()V

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/bb;->SM:Z

    .line 5
    iget-object v2, v0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 6
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 7
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/16 v11, 0xf

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto :goto_0

    :cond_0
    move v3, v11

    :goto_0
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/high16 v12, 0x3f000000    # 0.5f

    .line 8
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v4, 0x0

    .line 9
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->NM:Lcom/smartisanos/smengine/a/j;

    iget v5, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v3, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->WM:Lcom/smartisanos/smengine/a/j;

    iget v8, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v3, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 10
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 11
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v2, :cond_1

    .line 12
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 13
    invoke-virtual {v2, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 14
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 16
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    const/4 v14, 0x1

    .line 17
    iget v15, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v17, 0x3f800000    # 1.0f

    iget-object v5, v0, Lcom/smartisanos/launcher/view/bb;->VM:Lcom/smartisanos/smengine/a/j;

    iget v6, v5, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float v18, v15, v6

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float v19, v3, v5

    const/high16 v20, 0x3f800000    # 1.0f

    move-object v13, v2

    move/from16 v16, v3

    invoke-virtual/range {v13 .. v20}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 18
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 19
    :cond_1
    iget-object v2, v0, Lcom/smartisanos/launcher/view/bb;->RM:Lcom/smartisanos/smengine/F;

    if-eqz v2, :cond_3

    .line 20
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 21
    invoke-virtual {v3, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 22
    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const v22, 0x3f333333    # 0.7f

    move-object v13, v3

    .line 23
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 24
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_2

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object v13, v3

    .line 25
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 26
    :cond_2
    iget-object v2, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v4, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 27
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 28
    iget-object v1, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/Va;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/Va;-><init>(Lcom/smartisanos/launcher/view/bb;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 29
    iget-object v0, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method private Xy()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Mm()V

    .line 7
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v5

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v4

    .line 8
    aget-object v5, v0, v4

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v6, v0, v4

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v4, v0, v4

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v5, v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 9
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->XM:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/bb;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/view/bb;->QM:Lcom/smartisanos/launcher/view/a/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/bb;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(FLcom/smartisanos/smengine/a;Z)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/bb;->xp()V

    .line 6
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/view/bb;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "#### float page back animation"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    if-nez v3, :cond_1

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->fi()V

    .line 9
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->th()V

    .line 11
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 13
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    .line 14
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 15
    iput-boolean v4, v0, Lcom/smartisanos/launcher/view/bb;->SM:Z

    .line 16
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 17
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/16 v13, 0xf

    if-eqz v5, :cond_3

    const/16 v5, 0xe

    goto :goto_0

    :cond_3
    move v5, v13

    :goto_0
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 18
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 19
    iget-object v5, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    const/4 v6, 0x0

    .line 20
    iget v7, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v5, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v5, v0, Lcom/smartisanos/launcher/view/bb;->NM:Lcom/smartisanos/smengine/a/j;

    iget v10, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v5, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v5, v3

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 21
    iget-object v5, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 22
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v5, 0x0

    if-nez v3, :cond_4

    .line 23
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {v3, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 24
    invoke-virtual {v3, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 25
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 26
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 27
    iget-object v7, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    const/4 v15, 0x1

    .line 28
    iget v8, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v18, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/smartisanos/launcher/view/bb;->VM:Lcom/smartisanos/smengine/a/j;

    iget v10, v9, Lcom/smartisanos/smengine/a/j;->x:F

    div-float v19, v8, v10

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->y:F

    div-float v20, v7, v9

    const/high16 v21, 0x3f800000    # 1.0f

    move-object v14, v3

    move/from16 v16, v8

    move/from16 v17, v7

    invoke-virtual/range {v14 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 29
    iget-object v7, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v7, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 30
    :cond_4
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->RM:Lcom/smartisanos/smengine/F;

    if-eqz v3, :cond_6

    .line 31
    new-instance v7, Lcom/smartisanos/smengine/oa;

    invoke-direct {v7, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 32
    invoke-virtual {v7, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 33
    invoke-virtual {v7, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v15, 0x3

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3f333333    # 0.7f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object v14, v7

    .line 34
    invoke-virtual/range {v14 .. v23}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 35
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_5

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v14, v7

    .line 36
    invoke-virtual/range {v14 .. v23}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 37
    :cond_5
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v6, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 38
    :cond_6
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->UM:Lcom/smartisanos/smengine/F;

    if-eqz v3, :cond_7

    .line 39
    new-instance v7, Lcom/smartisanos/smengine/oa;

    invoke-direct {v7, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 40
    invoke-virtual {v7, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 41
    invoke-virtual {v7, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v14, v7

    .line 42
    invoke-virtual/range {v14 .. v23}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 43
    iget-object v1, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v6, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 44
    :cond_7
    iget-object v1, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 45
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3, v5, v5, v5, v2}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    goto :goto_1

    .line 46
    :cond_8
    iget v3, v0, Lcom/smartisanos/launcher/view/bb;->OM:I

    if-ne v3, v4, :cond_9

    .line 47
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3, v4, v5, v5, v2}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 48
    iget-object v2, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/tc;->Bb(Z)V

    goto :goto_1

    :cond_9
    const/4 v6, 0x2

    if-ne v3, v6, :cond_a

    .line 49
    iget-object v3, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3, v6, v5, v5, v2}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 50
    iget-object v2, v0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    .line 51
    :cond_a
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 52
    iget-object v2, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/Xa;

    move-object/from16 v4, p2

    invoke-direct {v3, v0, v1, v4}, Lcom/smartisanos/launcher/view/Xa;-><init>(Lcom/smartisanos/launcher/view/bb;ILcom/smartisanos/smengine/a;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 53
    iget-object v0, v0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/bb;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/bb;->SM:Z

    return p1
.end method

.method static synthetic access$300()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/bb;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/bb;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/bb;->uc(Z)V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/bb;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/bb;->SM:Z

    return p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/bb;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/bb;->OM:I

    return p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/view/bb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/bb;->Xy()V

    return-void
.end method

.method static synthetic g(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->QM:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method private k(Lcom/smartisanos/smengine/Fa;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/M;->j(Lcom/smartisanos/smengine/Fa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/bb;->QM:Lcom/smartisanos/launcher/view/a/g;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->QM:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->QM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private uc(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/Z;->Da(I)V

    .line 4
    sput v1, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    :goto_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/tc;->rb(Z)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/ka;->rb(Z)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->Da(I)V

    .line 10
    sput v1, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    :goto_1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    iget p0, p0, Lcom/smartisanos/launcher/view/bb;->OM:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/b/M;->vb(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 18
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 20
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    iget p0, p0, Lcom/smartisanos/launcher/view/bb;->OM:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/b/M;->vb(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 24
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public Ap()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->VM:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public Bp()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/bb;->Fp()V

    return-void
.end method

.method Cp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->RM:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/bb;->RM:Lcom/smartisanos/smengine/F;

    return-void
.end method

.method Dp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->TM:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/bb;->TM:Lcom/smartisanos/smengine/F;

    return-void
.end method

.method public Ep()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->float_page_x_scale_need_div_2:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v3

    .line 3
    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->float_page_y_scale_need_div_2:F

    div-float/2addr v4, v2

    sub-float/2addr v4, v3

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_3X3_MODE(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_4_3X3_MODE()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_9_3X3_MODE()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    .line 7
    iget v6, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 8
    iget v7, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 9
    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 10
    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v6, v7

    mul-float/2addr v1, v6

    div-float/2addr v3, v5

    mul-float/2addr v4, v3

    .line 11
    :cond_0
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    move v1, v5

    move v4, v1

    .line 12
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 13
    iget-object v6, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    iget v7, v3, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v7, v1

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v3, v4

    invoke-virtual {v6, v7, v3}, Lcom/smartisanos/launcher/view/b/M;->o(FF)V

    .line 14
    iget-object v3, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/bb;->XM:Lcom/smartisanos/smengine/a/j;

    .line 15
    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    mul-float v6, v3, v4

    .line 16
    iget-object v7, p0, Lcom/smartisanos/launcher/view/bb;->XM:Lcom/smartisanos/smengine/a/j;

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v6, v3

    sub-float/2addr v7, v6

    .line 17
    iget-object v3, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    iget-object v6, p0, Lcom/smartisanos/launcher/view/bb;->XM:Lcom/smartisanos/smengine/a/j;

    iget v8, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v8, v7, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 18
    iget-object v3, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 19
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3, v1, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/bb;->VM:Lcom/smartisanos/smengine/a/j;

    .line 20
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->float_page_translate_y:F

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/bb;->WM:Lcom/smartisanos/smengine/a/j;

    .line 21
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/smartisanos/launcher/view/Fb;->g(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->isMeetingMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 25
    iget v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    sget v6, Lcom/smartisanos/launcher/data/Constants;->LAUNCHPAD_DOCK_HEIGHT:I

    shr-int/2addr v6, v1

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    .line 26
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/bb;->WM:Lcom/smartisanos/smengine/a/j;

    iget v6, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    div-float/2addr v0, v2

    sub-float/2addr v7, v0

    iget v0, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v4, v6, v7, v0}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->VM:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v5, v5, v5}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 28
    :cond_3
    new-instance v0, Lcom/smartisanos/launcher/view/_a;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/_a;-><init>(Lcom/smartisanos/launcher/view/bb;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 29
    new-instance v0, Lcom/smartisanos/launcher/view/ab;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/ab;-><init>(Lcom/smartisanos/launcher/view/bb;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/bb;->NM:Lcom/smartisanos/smengine/a/j;

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/bb;->OM:I

    .line 32
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 33
    iget-object v2, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/smartisanos/launcher/view/bb;->WM:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 36
    iput-object v0, p0, Lcom/smartisanos/launcher/view/bb;->WM:Lcom/smartisanos/smengine/a/j;

    .line 37
    iget v0, p0, Lcom/smartisanos/launcher/view/bb;->OM:I

    if-eqz v0, :cond_5

    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->ho()V

    .line 39
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_4

    .line 40
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/bb;->uc(Z)V

    .line 41
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/bb;->Kw()V

    .line 42
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/bb;->Uy()V

    .line 43
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/bb;->Wy()V

    .line 44
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/bb;->Ug()V

    .line 45
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    return-void

    .line 46
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "######### page is VISIBLE!!!!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Fp()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/bb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "#### resetPage"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/bb;->QM:Lcom/smartisanos/launcher/view/a/g;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/bb;->Vy()V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/b/fa;->HQ:Z

    return-void

    .line 10
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/smartisanos/launcher/view/bb;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "#### resetPage but page not float"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public Gp()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->th()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->NM:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 7
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/bb;->VM:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr v1, v3

    .line 8
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v0, v2

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_3X3_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    const v4, 0x3e4ccccd    # 0.2f

    sub-float/2addr v2, v4

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v0, v4

    invoke-virtual {v1, v2, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    :cond_1
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/bb;->SM:Z

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 17
    iget v1, p0, Lcom/smartisanos/launcher/view/bb;->OM:I

    if-ne v1, v3, :cond_2

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v0, v0, v3, v3}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_5

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v0, v0, v3, v3}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    goto :goto_0

    .line 20
    :cond_3
    iget v1, p0, Lcom/smartisanos/launcher/view/bb;->OM:I

    if-ne v1, v3, :cond_4

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v3, v0, v3, v3}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 22
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/tc;->Bb(Z)V

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_5

    .line 24
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 25
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 26
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    .line 27
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Gn()V

    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/bb;->Cp()V

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/bb;->Dp()V

    .line 30
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/bb;->Xy()V

    .line 31
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    .line 32
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/X;->za(I)V

    .line 35
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->QM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 36
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/smartisanos/launcher/view/bb;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "resetFloatPageNoAnimation,current select cell is not NULL"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 37
    :cond_6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->QM:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 38
    :cond_7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/tc;->Xp()V

    .line 39
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iput-boolean v0, v1, Lcom/smartisanos/launcher/view/b/fa;->HQ:Z

    .line 40
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Oh()V

    .line 41
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/smartisanos/launcher/view/bb;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "## page back NO animation finish, set floatPageNode = null."

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/smartisanos/launcher/view/bb;->QM:Lcom/smartisanos/launcher/view/a/g;

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->fi()V

    .line 44
    iget-object v1, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/tc;->Ab(Z)V

    .line 45
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_a

    .line 46
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->mh()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 47
    new-instance v1, Lcom/smartisanos/launcher/view/Ya;

    const/16 v3, 0x64

    invoke-direct {v1, p0, v3}, Lcom/smartisanos/launcher/view/Ya;-><init>(Lcom/smartisanos/launcher/view/bb;I)V

    .line 48
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_1

    .line 49
    :cond_9
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/bb;->uc(Z)V

    .line 50
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->xh()Lcom/smartisanos/smengine/n;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 51
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->xh()Lcom/smartisanos/smengine/n;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 52
    :cond_a
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void
.end method

.method public a(FLcom/smartisanos/smengine/a;)V
    .locals 2

    .line 54
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/bb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "#### resetPage"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/smartisanos/launcher/view/bb;->QM:Lcom/smartisanos/launcher/view/a/g;

    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 60
    iget-object v0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->vd()V

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/bb;->a(FLcom/smartisanos/smengine/a;Z)V

    .line 62
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->HQ:Z

    return-void

    .line 63
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/smartisanos/launcher/view/bb;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "#### resetPage but page not float"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getAllViewCanBeTouched()Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/bb;->SM:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ks()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ls()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_6

    .line 5
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->d(Lcom/smartisanos/smengine/Fa;)V

    return v1

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_6

    .line 7
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->b(Lcom/smartisanos/smengine/Fa;)V

    return v1

    .line 8
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    if-eqz p0, :cond_6

    .line 9
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/fa;->g(Lcom/smartisanos/smengine/Fa;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/bb;->k(Lcom/smartisanos/smengine/Fa;)Z

    goto :goto_0

    .line 11
    :cond_5
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_6

    .line 12
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->d(Lcom/smartisanos/smengine/Fa;)V

    return v1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public xp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->yn:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_0
    return-void
.end method

.method public yp()Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/bb;->MM:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method public zp()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/bb;->OM:I

    return p0
.end method
