.class public Lcom/smartisanos/launcher/animations/a/t;
.super Lcom/smartisanos/launcher/animations/a/i;
.source "PageScrollAnimationLouver.java"


# static fields
.field private static tp:I = 0x3c


# instance fields
.field private lp:Ljava/util/ArrayList;

.field private mBackgroundColor:F

.field private mp:Ljava/util/ArrayList;

.field private np:Lcom/smartisanos/smengine/F;

.field private qp:Lcom/smartisanos/smengine/F;

.field private rp:Lcom/smartisanos/launcher/view/b/M;

.field private sp:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/i;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/t;->mBackgroundColor:F

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->setShowShadow(Z)V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/t;->getBackgroundColor()V

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

    iget v6, p0, Lcom/smartisanos/launcher/animations/a/t;->mBackgroundColor:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v6, v6, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 10
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

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

    iput-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    .line 15
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    const-string v12, "page_scroll_shadow_top.png"

    invoke-static {v12}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 16
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v14}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 17
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v8, v8, v8, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 18
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v11}, Lcom/smartisanos/smengine/SceneNode;->setTranslateY(F)V

    .line 19
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 20
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 21
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 23
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 24
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

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

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    const-string v2, "page_scroll_shadow_bottom.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v8, v8, v8, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslateY(F)V

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 37
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 39
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :goto_0
    return-void
.end method

.method private Gw()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/animations/a/i;->I(Z)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v0, v3, v3, v1}, Lcom/smartisanos/launcher/view/b/ka;->c(FFF)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/animations/a/i;->I(Z)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v0, v3, v3, v1}, Lcom/smartisanos/launcher/view/b/ka;->c(FFF)V

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method private Hw()Ljava/util/ArrayList;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v2

    const-string v3, "PageScrollShadowRL_lover_"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_1

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v9, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v10, 0x0

    neg-int v6, v2

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    mul-float v11, v9, v6

    sget v12, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    iget v13, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-static/range {v7 .. v13}, Lcom/smartisanos/launcher/animations/a/y;->a(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/a/y;

    move-result-object v6

    .line 5
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v5, v5, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v6, v4, v7}, Lcom/smartisanos/launcher/animations/a/y;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 7
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_1
    const/4 v6, 0x4

    if-ge v2, v6, :cond_1

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v9, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v10, 0x0

    neg-int v6, v2

    int-to-float v6, v6

    const/high16 v11, 0x3fc00000    # 1.5f

    add-float/2addr v6, v11

    mul-float v11, v9, v6

    sget v12, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    iget v13, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-static/range {v7 .. v13}, Lcom/smartisanos/launcher/animations/a/y;->a(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/a/y;

    move-result-object v6

    .line 10
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v5, v5, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v6, v4, v7}, Lcom/smartisanos/launcher/animations/a/y;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 12
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 13
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private Iw()Ljava/util/ArrayList;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v2

    const-string v3, "PageScrollShadowRL_lover_"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_1

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v9, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    mul-float v10, v8, v6

    const/4 v11, 0x0

    sget v12, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    iget v13, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-static/range {v7 .. v13}, Lcom/smartisanos/launcher/animations/a/y;->b(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/a/y;

    move-result-object v6

    .line 5
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v5, v5, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v6, v4, v7}, Lcom/smartisanos/launcher/animations/a/y;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 7
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_1
    const/4 v6, 0x4

    if-ge v2, v6, :cond_1

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v9, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    int-to-float v6, v2

    const/high16 v10, 0x3fc00000    # 1.5f

    sub-float/2addr v6, v10

    mul-float v10, v8, v6

    const/4 v11, 0x0

    sget v12, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    iget v13, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-static/range {v7 .. v13}, Lcom/smartisanos/launcher/animations/a/y;->b(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/a/y;

    move-result-object v6

    .line 10
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v5, v5, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v6, v4, v7}, Lcom/smartisanos/launcher/animations/a/y;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 12
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 13
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private Jw()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/a/t;->ha(F)F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/a/t;->ja(F)D

    move-result-wide v6

    .line 6
    invoke-direct {p0, v0, v4}, Lcom/smartisanos/launcher/animations/a/t;->r(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 7
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v9

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    double-to-float v11, v6

    .line 9
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12, v3, v5, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 10
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v11

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v11

    .line 11
    aget-object v11, v9, v11

    .line 12
    iget v12, v11, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v8, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v12, v13

    iget v11, v11, Lcom/smartisanos/smengine/a/j;->y:F

    iget v13, v8, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v11, v13

    iget v13, v8, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr v13, v1

    invoke-virtual {v10, v12, v11, v13}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v2

    .line 16
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/a/t;->ga(F)D

    move-result-wide v6

    .line 17
    invoke-direct {p0, v0, v4}, Lcom/smartisanos/launcher/animations/a/t;->p(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 18
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v9

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    double-to-float v11, v6

    .line 20
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12, v3, v5, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 21
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v11

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v11

    .line 22
    aget-object v11, v9, v11

    .line 23
    iget v12, v11, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v8, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v12, v13

    iget v11, v11, Lcom/smartisanos/smengine/a/j;->y:F

    iget v13, v8, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v11, v13

    iget v13, v8, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr v13, v1

    invoke-virtual {v10, v12, v11, v13}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_1

    .line 24
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    const-wide v8, 0x4000c152382d7365L    # 2.0943951023931953

    rem-double/2addr v6, v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v6, v10

    if-ltz v2, :cond_3

    .line 25
    sget v2, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    int-to-double v10, v2

    mul-double/2addr v6, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    goto :goto_2

    :cond_3
    add-double/2addr v6, v8

    .line 26
    sget v2, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    int-to-double v10, v2

    mul-double/2addr v6, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    :goto_2
    long-to-int v2, v6

    .line 27
    sget v6, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    if-lt v2, v6, :cond_4

    move v2, v4

    .line 28
    :cond_4
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/animations/a/y;

    .line 29
    invoke-virtual {v7, v4, v2}, Lcom/smartisanos/launcher/animations/a/y;->r(II)V

    goto :goto_3

    .line 30
    :cond_5
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 31
    :cond_6
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_8

    .line 32
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v2

    .line 33
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/a/t;->ia(F)D

    move-result-wide v6

    .line 34
    invoke-direct {p0, v0, v4}, Lcom/smartisanos/launcher/animations/a/t;->q(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 35
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/a/g;

    double-to-float v9, v6

    .line 37
    new-instance v10, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v10, v3, v5, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 38
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v9

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v9

    .line 39
    aget-object v9, v4, v9

    .line 40
    iget v10, v9, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v0, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v10, v11

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v0, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v9, v11

    iget v11, v0, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr v11, v1

    invoke-virtual {v8, v10, v9, v11}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_4

    .line 41
    :cond_7
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_8
    return-void
.end method

.method private ga(F)D
    .locals 2

    float-to-double p0, p1

    const-wide v0, -0x3fff3eadc7d28c9aL    # -2.0943951023931957

    mul-double/2addr p0, v0

    return-wide p0
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
    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/t;->mBackgroundColor:F

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x3f0ccccd    # 0.55f

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/t;->mBackgroundColor:F

    :goto_1
    return-void
.end method

.method private getIndex(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    return p1
.end method

.method private ha(F)F
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/a/t;->ga(F)D

    move-result-wide v0

    const-wide v2, 0x4000c152382d7366L    # 2.0943951023931957

    rem-double/2addr v0, v2

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 3
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-double p0, p0

    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v2, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    sub-double/2addr v6, v2

    double-to-float v2, v6

    const-wide/16 v6, 0x0

    cmpg-double v3, v0, v6

    if-gez v3, :cond_0

    float-to-double v2, v2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr p0, v0

    div-double/2addr p0, v4

    sub-double/2addr v2, p0

    goto :goto_0

    :cond_0
    float-to-double v2, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr p0, v0

    div-double/2addr p0, v4

    add-double/2addr v2, p0

    :goto_0
    double-to-float p0, v2

    return p0
.end method

.method private ia(F)D
    .locals 2

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    float-to-double p0, p0

    const-wide v0, 0x4000c152382d7366L    # 2.0943951023931957

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private ja(F)D
    .locals 2

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, -0x3fff3eadc7d28c9aL    # -2.0943951023931957

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private k(IF)V
    .locals 13

    add-int/lit8 v0, p1, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1
    iput p2, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    .line 2
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/a/i;->J(Z)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    if-lt v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    .line 5
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/animations/a/t;->ha(F)F

    move-result p1

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v2

    .line 8
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/animations/a/t;->ja(F)D

    move-result-wide v5

    .line 9
    invoke-direct {p0, p2, v1}, Lcom/smartisanos/launcher/animations/a/t;->r(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 10
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/a/g;

    .line 12
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v10

    if-ne v10, v0, :cond_2

    double-to-float v10, v5

    .line 13
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v3, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 14
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v10

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v10

    .line 15
    aget-object v10, v8, v10

    .line 16
    iget v11, v10, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v11, v12

    iget v10, v10, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v10, v12

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr v12, p1

    invoke-virtual {v9, v11, v10, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_a

    .line 19
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v2

    .line 20
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/animations/a/t;->ga(F)D

    move-result-wide v5

    .line 21
    invoke-direct {p0, p2, v1}, Lcom/smartisanos/launcher/animations/a/t;->p(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 22
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/a/g;

    .line 24
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v10

    if-ne v10, v0, :cond_5

    double-to-float v10, v5

    .line 25
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v3, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 26
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v10

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v10

    .line 27
    aget-object v10, v8, v10

    .line 28
    iget v11, v10, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v11, v12

    iget v10, v10, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v10, v12

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr v12, p1

    invoke-virtual {v9, v11, v10, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_1

    .line 29
    :cond_6
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    const-wide v7, 0x4000c152382d7365L    # 2.0943951023931953

    rem-double/2addr v5, v7

    const-wide/16 v9, 0x0

    cmpl-double v2, v5, v9

    if-ltz v2, :cond_7

    .line 30
    sget v2, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    int-to-double v9, v2

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    goto :goto_2

    :cond_7
    add-double/2addr v5, v7

    .line 31
    sget v2, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    int-to-double v9, v2

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    :goto_2
    long-to-int v2, v5

    .line 32
    sget v5, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    if-lt v2, v5, :cond_8

    move v2, v1

    .line 33
    :cond_8
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/animations/a/y;

    invoke-virtual {v5, v1, v2}, Lcom/smartisanos/launcher/animations/a/y;->r(II)V

    .line 34
    :cond_9
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 35
    :cond_a
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_d

    .line 36
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v2

    .line 37
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/animations/a/t;->ia(F)D

    move-result-wide v5

    .line 38
    invoke-direct {p0, p2, v1}, Lcom/smartisanos/launcher/animations/a/t;->q(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    .line 39
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/a/g;

    .line 41
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v8

    if-ne v8, v0, :cond_b

    double-to-float v8, v5

    .line 42
    new-instance v9, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v9, v3, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 43
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v8

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v8

    .line 44
    aget-object v8, v1, v8

    .line 45
    iget v9, v8, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, p2, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v9, v10

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, p2, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v8, v10

    iget v10, p2, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float/2addr v10, p1

    invoke-virtual {v7, v9, v8, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_3

    .line 46
    :cond_c
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_d
    return-void
.end method

.method private l(IF)V
    .locals 13

    add-int/lit8 v0, p1, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1
    iput p2, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    .line 2
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/a/i;->J(Z)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    if-lt v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget p1, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p1

    .line 7
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/animations/a/t;->ja(F)D

    move-result-wide v5

    .line 8
    invoke-direct {p0, p2, v2}, Lcom/smartisanos/launcher/animations/a/t;->r(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 9
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/a/g;

    .line 11
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v10

    if-ne v10, v0, :cond_2

    double-to-float v10, v5

    .line 12
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v4, v3, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 13
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v10

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v10

    .line 14
    aget-object v10, v8, v10

    .line 15
    iget v11, v10, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v11, v12

    iget v10, v10, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v10, v12

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v9, v11, v10, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_a

    .line 18
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p1

    .line 19
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/animations/a/t;->ga(F)D

    move-result-wide v5

    .line 20
    invoke-direct {p0, p2, v2}, Lcom/smartisanos/launcher/animations/a/t;->p(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 21
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/a/g;

    .line 23
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v10

    if-ne v10, v0, :cond_5

    double-to-float v10, v5

    .line 24
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v4, v3, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 25
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v10

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v10

    .line 26
    aget-object v10, v8, v10

    .line 27
    iget v11, v10, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v11, v12

    iget v10, v10, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v10, v12

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v9, v11, v10, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_1

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    const-wide v7, 0x4000c152382d7365L    # 2.0943951023931953

    rem-double/2addr v5, v7

    const-wide/16 v9, 0x0

    cmpl-double p1, v5, v9

    if-ltz p1, :cond_7

    .line 29
    sget p1, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    int-to-double v9, p1

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    goto :goto_2

    :cond_7
    add-double/2addr v5, v7

    .line 30
    sget p1, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    int-to-double v9, p1

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    :goto_2
    long-to-int p1, v5

    .line 31
    sget v5, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    if-lt p1, v5, :cond_8

    move p1, v1

    .line 32
    :cond_8
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/animations/a/y;

    invoke-virtual {v5, v1, p1}, Lcom/smartisanos/launcher/animations/a/y;->r(II)V

    .line 33
    :cond_9
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 34
    :cond_a
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_d

    .line 35
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object p1

    .line 36
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/animations/a/t;->ia(F)D

    move-result-wide v5

    .line 37
    invoke-direct {p0, p2, v2}, Lcom/smartisanos/launcher/animations/a/t;->q(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    .line 38
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 40
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v7

    if-ne v7, v0, :cond_b

    double-to-float v7, v5

    .line 41
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8, v4, v3, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 42
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v7

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v7

    .line 43
    aget-object v7, v1, v7

    .line 44
    iget v8, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, p2, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v8, v9

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, p2, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v7, v9

    iget v9, p2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v8, v7, v9}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_3

    .line 45
    :cond_c
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_d
    return-void
.end method

.method private p(FZ)Lcom/smartisanos/smengine/a/j;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    :goto_0
    float-to-double v0, v0

    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/a/t;->ga(F)D

    move-result-wide p0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    float-to-double v2, v0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float p2, v4

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    sub-double/2addr p0, v2

    double-to-float p0, p0

    .line 7
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1, p2, v1, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p1

    :cond_1
    float-to-double v2, v0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float p2, v4

    neg-float p2, p2

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    sub-double/2addr p0, v2

    double-to-float p0, p0

    .line 10
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1, v1, p2, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p1
.end method

.method private q(FZ)Lcom/smartisanos/smengine/a/j;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    :goto_0
    float-to-double v0, v0

    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/a/t;->ia(F)D

    move-result-wide p0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    float-to-double v2, v0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float p2, v4

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    sub-double/2addr p0, v2

    double-to-float p0, p0

    .line 7
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1, p2, v1, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p1

    :cond_1
    float-to-double v2, v0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float p2, v4

    neg-float p2, p2

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    sub-double/2addr p0, v2

    double-to-float p0, p0

    .line 10
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1, v1, p2, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p1
.end method

.method private r(FZ)Lcom/smartisanos/smengine/a/j;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    :goto_0
    float-to-double v0, v0

    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/a/t;->ja(F)D

    move-result-wide p0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    float-to-double v2, v0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float p2, v4

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    sub-double/2addr p0, v2

    double-to-float p0, p0

    .line 7
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1, p2, v1, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p1

    :cond_1
    float-to-double v2, v0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float p2, v4

    neg-float p2, p2

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    sub-double/2addr p0, v2

    double-to-float p0, p0

    .line 10
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1, v1, p2, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p1
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
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method private ve()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/a/t;->ja(F)D

    move-result-wide v5

    .line 5
    invoke-direct {p0, v0, v3}, Lcom/smartisanos/launcher/animations/a/t;->r(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 6
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/a/g;

    double-to-float v10, v5

    .line 8
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v4, v2, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 9
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v10

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v10

    .line 10
    aget-object v10, v8, v10

    .line 11
    iget v11, v10, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v11, v12

    iget v10, v10, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v10, v12

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v9, v11, v10, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 15
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/a/t;->ga(F)D

    move-result-wide v5

    .line 16
    invoke-direct {p0, v0, v3}, Lcom/smartisanos/launcher/animations/a/t;->p(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 17
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/a/g;

    double-to-float v10, v5

    .line 19
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v4, v2, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 20
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v10

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v10

    .line 21
    aget-object v10, v8, v10

    .line 22
    iget v11, v10, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v11, v12

    iget v10, v10, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v10, v12

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v9, v11, v10, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_1

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    const-wide v7, 0x4000c152382d7365L    # 2.0943951023931953

    rem-double/2addr v5, v7

    const-wide/16 v9, 0x0

    cmpl-double v1, v5, v9

    if-ltz v1, :cond_3

    .line 24
    sget v1, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    int-to-double v9, v1

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    goto :goto_2

    :cond_3
    add-double/2addr v5, v7

    .line 25
    sget v1, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    int-to-double v9, v1

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    :goto_2
    long-to-int v1, v5

    .line 26
    sget v5, Lcom/smartisanos/launcher/animations/a/t;->tp:I

    const/4 v6, 0x0

    if-lt v1, v5, :cond_4

    move v1, v6

    .line 27
    :cond_4
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/animations/a/y;

    .line 28
    invoke-virtual {v7, v6, v1}, Lcom/smartisanos/launcher/animations/a/y;->r(II)V

    goto :goto_3

    .line 29
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 30
    :cond_6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_8

    .line 31
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 32
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/a/t;->ia(F)D

    move-result-wide v5

    .line 33
    invoke-direct {p0, v0, v3}, Lcom/smartisanos/launcher/animations/a/t;->q(FZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 34
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/a/g;

    double-to-float v8, v5

    .line 36
    new-instance v9, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v9, v4, v2, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 37
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v8

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v8

    .line 38
    aget-object v8, v3, v8

    .line 39
    iget v9, v8, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v0, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v9, v10

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v0, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v8, v10

    iget v10, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v7, v9, v8, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_4

    .line 40
    :cond_7
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_8
    return-void
.end method


# virtual methods
.method protected ca(I)Lcom/smartisanos/launcher/view/b/M;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    if-lt p1, v0, :cond_4

    .line 2
    iget v2, p0, Lcom/smartisanos/launcher/animations/a/i;->Uo:I

    add-int/lit8 v3, v2, 0x1

    if-le p1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    return-object p0

    :cond_2
    :goto_0
    if-ne p1, v0, :cond_3

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    return-object p0

    .line 5
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    return-object p0

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    if-ltz p1, :cond_7

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Uo:I

    if-le p1, v0, :cond_6

    goto :goto_2

    .line 7
    :cond_6
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    return-object p0

    :cond_7
    :goto_2
    return-object v1
.end method

.method public d(IF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->ke()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/a/t;->l(IF)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/a/t;->k(IF)V

    :goto_0
    return-void
.end method

.method public f(FF)V
    .locals 10

    const/4 v0, 0x5

    new-array v4, v0, [Laurelienribon/tweenengine/n;

    .line 1
    sget-object v0, Laurelienribon/tweenengine/a/v;->Lf:Laurelienribon/tweenengine/a/v;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    cmpl-float v0, p2, p1

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v9

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v7

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v6}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v5

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v8}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v2

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v9

    .line 8
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v7

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v6}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v5

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v8}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v2

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v6}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v9

    .line 13
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v7

    .line 14
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v5

    .line 15
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v8}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v2

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v8}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v9

    .line 17
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v6}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v7

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v5

    .line 19
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v2

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->he()F

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/launcher/animations/a/i;->a(FF[Laurelienribon/tweenengine/n;FLjava/lang/Runnable;)V

    return-void
.end method

.method public me()V
    .locals 8

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

    .line 6
    :cond_1
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/b/M;->nb(Z)V

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 11
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v4, v7, v5}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 12
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v5

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/smartisanos/launcher/animations/a/t;->getIndex(II)I

    move-result v5

    .line 13
    aget-object v5, v3, v5

    .line 14
    iget v6, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v4, v6, v5, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 15
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/a/ga;->ia(Z)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/animations/a/y;

    .line 22
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/animations/a/y;

    .line 25
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_2

    .line 26
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 27
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/t;->resetBackground()V

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->ph()V

    return-void
.end method

.method public ne()V
    .locals 6

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
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/t;->Fw()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/t;->Gw()V

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
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v4

    .line 10
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/b/M;->nb(Z)V

    .line 12
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 13
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/a/ga;->ia(Z)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/t;->Iw()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->ee()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/t;->Hw()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->ke()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/animations/a/y;

    .line 20
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_1

    .line 21
    :cond_6
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/a/y;

    .line 23
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_2

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/animations/a/y;

    .line 25
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_3

    .line 26
    :cond_8
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/a/y;

    .line 28
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_4

    .line 29
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/smartisanos/launcher/view/Eb;->b(FFF)V

    return-void
.end method

.method public oe()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/a/i;->oe()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->d(Lcom/smartisanos/launcher/view/b/M;)V

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->d(Lcom/smartisanos/launcher/view/b/M;)V

    .line 7
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/t;->getBackgroundColor()V

    return-void
.end method

.method public onRelease()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->d(Lcom/smartisanos/launcher/view/b/M;)V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/t;->rp:Lcom/smartisanos/launcher/view/b/M;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/i;->d(Lcom/smartisanos/launcher/view/b/M;)V

    .line 6
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/t;->sp:Lcom/smartisanos/launcher/view/b/M;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/animations/a/y;

    .line 9
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 10
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    goto :goto_0

    .line 11
    :cond_2
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/t;->lp:Ljava/util/ArrayList;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/animations/a/y;

    .line 14
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 15
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    goto :goto_1

    .line 16
    :cond_4
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/t;->mp:Ljava/util/ArrayList;

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 20
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/t;->np:Lcom/smartisanos/smengine/F;

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 23
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/a/t;->qp:Lcom/smartisanos/smengine/F;

    :cond_6
    return-void
.end method

.method public pe()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->se()F

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 5
    iget v5, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    const v6, -0x41b33333    # -0.2f

    sget-object v7, Laurelienribon/tweenengine/a/p;->OUT:Laurelienribon/tweenengine/a/p;

    const v8, 0x3eb851ec    # 0.36f

    new-instance v9, Lcom/smartisanos/launcher/animations/a/p;

    invoke-direct {v9, p0}, Lcom/smartisanos/launcher/animations/a/p;-><init>(Lcom/smartisanos/launcher/animations/a/t;)V

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/smartisanos/launcher/animations/a/i;->b(FFLaurelienribon/tweenengine/n;FLjava/lang/Runnable;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    const/4 v5, 0x0

    const v6, -0x41b33333    # -0.2f

    .line 9
    sget-object v7, Laurelienribon/tweenengine/a/p;->OUT:Laurelienribon/tweenengine/a/p;

    const v8, 0x3dcccccd    # 0.1f

    new-instance v9, Lcom/smartisanos/launcher/animations/a/r;

    invoke-direct {v9, p0}, Lcom/smartisanos/launcher/animations/a/r;-><init>(Lcom/smartisanos/launcher/animations/a/t;)V

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/smartisanos/launcher/animations/a/i;->b(FFLaurelienribon/tweenengine/n;FLjava/lang/Runnable;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    :goto_0
    return-void
.end method

.method public te()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->ke()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/t;->ve()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/t;->Jw()V

    :goto_0
    return-void
.end method
