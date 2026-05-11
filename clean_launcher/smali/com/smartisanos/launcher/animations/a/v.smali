.class public Lcom/smartisanos/launcher/animations/a/v;
.super Lcom/smartisanos/launcher/animations/a/i;
.source "PageScrollAnimationRotatePage.java"


# static fields
.field private static tp:I = 0x78


# instance fields
.field private lp:Lcom/smartisanos/launcher/animations/a/z;

.field private mBackgroundColor:F

.field private mp:Lcom/smartisanos/launcher/animations/a/z;

.field private np:Lcom/smartisanos/smengine/F;

.field private qp:Lcom/smartisanos/smengine/F;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/i;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/v;->mBackgroundColor:F

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->setShowShadow(Z)V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/v;->getBackgroundColor()V

    return-void
.end method

.method private Fw()V
    .locals 15

    .line 1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    .line 2
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v1, v1

    .line 3
    sget v2, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v2, v2

    .line 4
    sget v3, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v3, v3

    add-float v4, v2, v3

    .line 5
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    .line 6
    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v7, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    sub-float/2addr v1, v6

    mul-float/2addr v4, v1

    div-float/2addr v4, v3

    sub-float v4, v1, v4

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslateY(F)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v4

    iget v6, p0, Lcom/smartisanos/launcher/animations/a/v;->mBackgroundColor:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v6, v6, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 10
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    const/4 v6, 0x1

    if-nez v4, :cond_0

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    const/high16 v9, 0x41200000    # 10.0f

    sub-float v10, v2, v9

    add-float/2addr v10, v3

    mul-float/2addr v0, v10

    div-float/2addr v0, v3

    .line 12
    iget v11, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v11, v7

    const/high16 v12, 0x429a0000    # 77.0f

    sub-float/2addr v11, v12

    mul-float/2addr v11, v10

    div-float/2addr v11, v3

    add-float/2addr v11, v1

    const/high16 v12, 0x431b0000    # 155.0f

    mul-float/2addr v12, v10

    div-float/2addr v12, v3

    const-string v13, "TextureModularColorMaterial"

    .line 13
    invoke-static {v13}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v14

    neg-float v2, v2

    add-float/2addr v2, v9

    const-string v9, "background_shadow_top"

    .line 14
    invoke-static {v9, v0, v12, v2, v6}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v9

    iput-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    .line 15
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    const-string v12, "page_scroll_shadow_top.png"

    invoke-static {v12}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 16
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v14}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 17
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v8, v8, v8, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 18
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v11}, Lcom/smartisanos/smengine/SceneNode;->setTranslateY(F)V

    .line 19
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 20
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 21
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 23
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 24
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 25
    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    neg-float v5, v5

    div-float/2addr v5, v7

    const/high16 v7, 0x41800000    # 16.0f

    add-float/2addr v5, v7

    mul-float/2addr v5, v10

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    const/high16 v5, 0x42000000    # 32.0f

    mul-float/2addr v10, v5

    div-float/2addr v10, v3

    .line 26
    invoke-static {v13}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    const-string v5, "background_shadow_bottom"

    .line 27
    invoke-static {v5, v0, v10, v2, v6}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    const-string v2, "page_scroll_shadow_bottom.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v8, v8, v8, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslateY(F)V

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 37
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 39
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :goto_0
    return-void
.end method

.method private Gw()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->I(Z)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 7
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2}, Lcom/smartisanos/launcher/view/b/ka;->c(FFF)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method private Hw()Lcom/smartisanos/launcher/animations/a/z;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 2
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    sget v6, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    iget v7, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    const-string v1, "PageScrollShadowDU_rotatePage"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/a/z;->a(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/a/z;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/animations/a/z;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object p0
.end method

.method private Iw()Lcom/smartisanos/launcher/animations/a/z;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 2
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    sget v6, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    iget v7, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    const-string v1, "PageScrollShadowRL_rotatePage"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/a/z;->b(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/a/z;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/animations/a/z;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object p0
.end method

.method private getBackgroundColor()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/v;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smartisan_theme_green"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "smartisan_theme_cyan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "smartisan_theme_light_wood"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "smartisan_theme_yellow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/v;->mBackgroundColor:F

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x3f266666    # 0.65f

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/v;->mBackgroundColor:F

    :goto_1
    return-void
.end method

.method private resetBackground()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslateY(F)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public me()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v1, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 7
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v1, v6, v5}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 8
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/b/M;->nb(Z)V

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 12
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 13
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/a/ga;->ia(Z)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->lp:Lcom/smartisanos/launcher/animations/a/z;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->mp:Lcom/smartisanos/launcher/animations/a/z;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 20
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 21
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/v;->resetBackground()V

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->ph()V

    return-void
.end method

.method public ne()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/Eb;->n(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/v;->Fw()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/v;->Gw()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 6
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 9
    :cond_1
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/b/M;->nb(Z)V

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 13
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 14
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/a/ga;->ia(Z)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->lp:Lcom/smartisanos/launcher/animations/a/z;

    if-nez v0, :cond_4

    .line 16
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/v;->Iw()Lcom/smartisanos/launcher/animations/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->lp:Lcom/smartisanos/launcher/animations/a/z;

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->ee()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->mp:Lcom/smartisanos/launcher/animations/a/z;

    if-nez v0, :cond_5

    .line 18
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/v;->Hw()Lcom/smartisanos/launcher/animations/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->mp:Lcom/smartisanos/launcher/animations/a/z;

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->ke()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->lp:Lcom/smartisanos/launcher/animations/a/z;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/v;->mp:Lcom/smartisanos/launcher/animations/a/z;

    if-eqz p0, :cond_7

    .line 22
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->lp:Lcom/smartisanos/launcher/animations/a/z;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 24
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/v;->mp:Lcom/smartisanos/launcher/animations/a/z;

    if-eqz p0, :cond_7

    .line 25
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 26
    :cond_7
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/smartisanos/launcher/view/Eb;->b(FFF)V

    return-void
.end method

.method public oe()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/a/i;->oe()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->d(Lcom/smartisanos/launcher/view/b/M;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/v;->getBackgroundColor()V

    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->d(Lcom/smartisanos/launcher/view/b/M;)V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Zo:Lcom/smartisanos/launcher/view/b/M;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->lp:Lcom/smartisanos/launcher/animations/a/z;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->lp:Lcom/smartisanos/launcher/animations/a/z;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 7
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/v;->lp:Lcom/smartisanos/launcher/animations/a/z;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->mp:Lcom/smartisanos/launcher/animations/a/z;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->mp:Lcom/smartisanos/launcher/animations/a/z;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 11
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/v;->mp:Lcom/smartisanos/launcher/animations/a/z;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 15
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/v;->np:Lcom/smartisanos/smengine/F;

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 18
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/v;->qp:Lcom/smartisanos/smengine/F;

    :cond_3
    return-void
.end method

.method public pe()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/a/i;->pe()V

    return-void
.end method

.method public te()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->ke()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/v;->ve()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/v;->we()V

    :goto_0
    return-void
.end method

.method public ve()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    iget v2, v0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    const/4 v5, 0x0

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    .line 3
    iget v6, v0, Lcom/smartisanos/launcher/animations/a/i;->Po:F

    mul-float/2addr v6, v2

    .line 4
    iget v7, v0, Lcom/smartisanos/launcher/animations/a/i;->Qo:F

    sub-float v8, v2, v4

    mul-float/2addr v7, v8

    .line 5
    iget v8, v0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    div-float/2addr v7, v3

    sub-float/2addr v8, v7

    div-float v7, v6, v3

    cmpl-float v9, v1, v5

    const-wide v12, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const/4 v3, 0x1

    const/4 v14, 0x0

    if-ltz v9, :cond_4

    .line 6
    iget-object v9, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v9, :cond_0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eq v9, v15, :cond_0

    .line 7
    invoke-virtual {v9, v14}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    :cond_0
    iget-object v9, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v9, :cond_3

    .line 9
    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    float-to-double v14, v1

    mul-double/2addr v14, v12

    div-double v14, v14, v16

    double-to-float v12, v14

    mul-float v13, v1, v6

    sub-float v13, v7, v13

    float-to-double v13, v13

    float-to-double v9, v12

    .line 10
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move v15, v12

    float-to-double v11, v7

    mul-double v18, v18, v11

    sub-double v13, v13, v18

    double-to-float v13, v13

    .line 11
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v11, v11, v18

    double-to-float v11, v11

    .line 12
    iget-object v12, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v12, v2, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 13
    iget-object v12, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v12, v13, v8, v11}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 14
    iget-object v11, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12, v5, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    move v13, v15

    invoke-virtual {v11, v13, v12}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    rem-double/2addr v9, v11

    double-to-float v9, v9

    cmpl-float v10, v9, v5

    if-ltz v10, :cond_1

    .line 15
    sget v10, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-double v9, v9

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    goto :goto_0

    :cond_1
    float-to-double v9, v9

    add-double/2addr v9, v11

    .line 16
    sget v13, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    int-to-double v13, v13

    mul-double/2addr v9, v13

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    :goto_0
    long-to-int v9, v9

    move v14, v9

    .line 17
    sget v9, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    if-lt v14, v9, :cond_2

    const/4 v14, 0x0

    .line 18
    :cond_2
    iget-object v9, v0, Lcom/smartisanos/launcher/animations/a/v;->lp:Lcom/smartisanos/launcher/animations/a/z;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v14}, Lcom/smartisanos/launcher/animations/a/z;->r(II)V

    .line 19
    iget-object v9, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 20
    :cond_3
    iget-object v9, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v9, :cond_9

    .line 21
    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    sub-float v3, v4, v1

    float-to-double v9, v3

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    div-double v9, v9, v16

    double-to-float v3, v9

    mul-float/2addr v6, v1

    sub-float v6, v7, v6

    float-to-double v9, v6

    float-to-double v11, v3

    .line 22
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    float-to-double v6, v7

    mul-double/2addr v13, v6

    add-double/2addr v9, v13

    double-to-float v9, v9

    .line 23
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    neg-double v10, v10

    mul-double/2addr v10, v6

    double-to-float v6, v10

    .line 24
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v7, v2, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 25
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2, v9, v8, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 26
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6, v5, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 27
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto/16 :goto_3

    .line 28
    :cond_4
    iget-object v10, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v10, :cond_5

    .line 29
    invoke-virtual {v10, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const/high16 v10, -0x40800000    # -1.0f

    sub-float/2addr v10, v1

    float-to-double v10, v10

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v14

    div-double v10, v10, v16

    double-to-float v10, v10

    neg-float v11, v7

    mul-float v14, v1, v6

    sub-float/2addr v11, v14

    float-to-double v14, v11

    float-to-double v12, v10

    .line 30
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move/from16 v20, v10

    float-to-double v9, v7

    mul-double v18, v18, v9

    sub-double v14, v14, v18

    double-to-float v14, v14

    .line 31
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v9

    double-to-float v9, v12

    .line 32
    iget-object v10, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v10, v2, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 33
    iget-object v10, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v10, v14, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 34
    iget-object v9, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    new-instance v10, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v10, v5, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    move/from16 v12, v20

    invoke-virtual {v9, v12, v10}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 35
    iget-object v9, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 36
    :cond_5
    iget-object v9, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v9, :cond_8

    .line 37
    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    float-to-double v9, v1

    const-wide v12, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    mul-double/2addr v9, v12

    div-double v9, v9, v16

    double-to-float v3, v9

    neg-float v9, v7

    mul-float/2addr v6, v1

    sub-float/2addr v9, v6

    float-to-double v9, v9

    float-to-double v12, v3

    .line 38
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    float-to-double v6, v7

    mul-double/2addr v14, v6

    add-double/2addr v9, v14

    double-to-float v9, v9

    .line 39
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    neg-double v14, v14

    mul-double/2addr v14, v6

    double-to-float v6, v14

    .line 40
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v7, v2, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 41
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2, v9, v8, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 42
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6, v5, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    rem-double/2addr v12, v2

    double-to-float v6, v12

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_6

    .line 43
    sget v5, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    int-to-float v5, v5

    mul-float/2addr v6, v5

    float-to-double v5, v6

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    goto :goto_1

    :cond_6
    float-to-double v5, v6

    add-double/2addr v5, v2

    .line 44
    sget v7, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    :goto_1
    long-to-int v2, v2

    move v14, v2

    .line 45
    sget v2, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    if-lt v14, v2, :cond_7

    const/4 v14, 0x0

    .line 46
    :cond_7
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/v;->lp:Lcom/smartisanos/launcher/animations/a/z;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v14}, Lcom/smartisanos/launcher/animations/a/z;->r(II)V

    .line 47
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    .line 48
    :goto_2
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_9

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    if-eq v2, v5, :cond_9

    .line 49
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_9
    :goto_3
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 50
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 51
    iget v0, v0, Lcom/smartisanos/launcher/animations/a/v;->mBackgroundColor:F

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 52
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    return-void
.end method

.method public we()V
    .locals 15

    move-object v0, p0

    .line 1
    iget v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    iget v2, v0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 2
    iget v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Qo:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    .line 3
    sget v4, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ltz v5, :cond_3

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    float-to-double v9, v1

    mul-double/2addr v9, v13

    div-double/2addr v9, v6

    double-to-float v5, v9

    neg-float v6, v3

    mul-float/2addr v1, v2

    add-float/2addr v6, v1

    .line 4
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {v1, v12}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    float-to-double v1, v6

    float-to-double v9, v5

    .line 8
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    float-to-double v11, v3

    mul-double/2addr v13, v11

    add-double/2addr v1, v13

    double-to-float v1, v1

    .line 9
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    neg-double v13, v13

    mul-double/2addr v13, v11

    double-to-float v2, v13

    .line 10
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    iget v11, v0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    add-float/2addr v11, v1

    invoke-virtual {v7, v4, v11, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 11
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    neg-float v2, v5

    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5, v8, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v1, v2, v5}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    rem-double/2addr v9, v1

    double-to-float v5, v9

    float-to-double v9, v5

    sub-double v9, v1, v9

    .line 12
    sget v7, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    int-to-double v11, v7

    mul-double/2addr v9, v11

    div-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v12, v1

    .line 13
    sget v1, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    if-lt v12, v1, :cond_1

    const/4 v12, 0x0

    .line 14
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/v;->mp:Lcom/smartisanos/launcher/animations/a/z;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v12}, Lcom/smartisanos/launcher/animations/a/z;->r(II)V

    .line 15
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    :cond_2
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    float-to-double v1, v6

    float-to-double v5, v5

    .line 18
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    float-to-double v11, v3

    mul-double/2addr v9, v11

    sub-double/2addr v1, v9

    double-to-float v1, v1

    .line 19
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    mul-double/2addr v2, v11

    double-to-float v2, v2

    .line 20
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    iget v7, v0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    add-float/2addr v7, v1

    invoke-virtual {v3, v4, v7, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 21
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v9, v2, v5

    double-to-float v2, v9

    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3, v8, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 22
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto/16 :goto_1

    :cond_3
    const-wide v9, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    float-to-double v11, v1

    mul-double/2addr v11, v9

    div-double/2addr v11, v6

    double-to-float v5, v11

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    .line 23
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_4

    const/4 v6, 0x1

    .line 24
    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    float-to-double v6, v1

    float-to-double v9, v5

    .line 25
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    float-to-double v13, v3

    mul-double/2addr v11, v13

    add-double/2addr v6, v11

    double-to-float v2, v6

    .line 26
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    neg-double v6, v6

    mul-double/2addr v6, v13

    double-to-float v6, v6

    .line 27
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    iget v11, v0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    add-float/2addr v11, v2

    invoke-virtual {v7, v4, v11, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 28
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v9, v6

    double-to-float v6, v9

    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v8, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 29
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 30
    :cond_4
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_6

    const/4 v6, 0x1

    .line 31
    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    float-to-double v1, v1

    float-to-double v6, v5

    .line 32
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    float-to-double v11, v3

    mul-double/2addr v9, v11

    sub-double/2addr v1, v9

    double-to-float v1, v1

    .line 33
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    mul-double/2addr v2, v11

    double-to-float v2, v2

    .line 34
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    iget v9, v0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    add-float/2addr v9, v1

    invoke-virtual {v3, v4, v9, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 35
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2, v8, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v1, v5, v2}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 36
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    rem-double/2addr v6, v1

    double-to-float v3, v6

    .line 37
    sget v4, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v12, v1

    .line 38
    sget v1, Lcom/smartisanos/launcher/animations/a/v;->tp:I

    if-lt v12, v1, :cond_5

    const/4 v12, 0x0

    .line 39
    :cond_5
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/v;->mp:Lcom/smartisanos/launcher/animations/a/z;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v12}, Lcom/smartisanos/launcher/animations/a/z;->r(II)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    .line 40
    :goto_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    if-eq v1, v0, :cond_7

    .line 41
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_7
    :goto_1
    return-void
.end method
