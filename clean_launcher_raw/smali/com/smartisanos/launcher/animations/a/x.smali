.class public Lcom/smartisanos/launcher/animations/a/x;
.super Lcom/smartisanos/launcher/animations/a/i;
.source "PageScrollAnimationSwitchCard.java"


# instance fields
.field private Ap:Lcom/smartisanos/smengine/F;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/i;-><init>()V

    return-void
.end method

.method private Kw()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 4
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "HELP_SCROLL_ANIM_ZOOMIN"

    .line 5
    invoke-static {v4, v1, v0, v3, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    const-string v0, "GlobalColorMaterial"

    .line 6
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 10
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    .line 12
    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 13
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {v0, v3, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 20
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public me()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    const/4 v4, 0x1

    .line 3
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    invoke-virtual {v1, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object p0

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    return-void
.end method

.method public ne()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/x;->Kw()V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    :cond_0
    return-void
.end method

.method public te()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 2
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const v4, 0x3e4ccccd    # 0.2f

    const/16 v5, -0x18

    const v6, 0x3f1eb852    # 0.62f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3, v8, v5}, Lcom/smartisanos/launcher/view/b/M;->t(II)V

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    iget v5, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {v3, v2, v5, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    mul-float/2addr v4, v0

    sub-float v3, v9, v4

    .line 9
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4, v3, v3, v9}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 13
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3, v8, v8}, Lcom/smartisanos/launcher/view/b/M;->t(II)V

    .line 14
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    sub-float v4, v9, v0

    mul-float/2addr v4, v1

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {v3, v4, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v9, v9, v9}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_7

    sub-float/2addr v0, v9

    mul-float v3, v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v3, v9

    mul-float/2addr v3, v6

    .line 18
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v2, v2, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 20
    :cond_3
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v10, :cond_4

    .line 21
    invoke-virtual {v10, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 22
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v10, v8, v5}, Lcom/smartisanos/launcher/view/b/M;->t(II)V

    .line 23
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    iget v10, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {v5, v2, v10, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v0

    sub-float/2addr v5, v4

    .line 24
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4, v5, v5, v9}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 25
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 26
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v4, :cond_5

    .line 27
    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 28
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4, v8, v8}, Lcom/smartisanos/launcher/view/b/M;->t(II)V

    .line 29
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    neg-float v5, v0

    mul-float/2addr v5, v1

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {v4, v5, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 30
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v9, v9, v9}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 31
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 32
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_6

    .line 33
    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 34
    :cond_6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    mul-float v3, v0, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v6

    add-float/2addr v3, v6

    .line 35
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 36
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/x;->Ap:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v2, v2, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_7
    :goto_0
    return-void
.end method
