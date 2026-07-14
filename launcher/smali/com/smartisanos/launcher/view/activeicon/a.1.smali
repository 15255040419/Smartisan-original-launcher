.class public Lcom/smartisanos/launcher/view/activeicon/a;
.super Lcom/smartisanos/smengine/SceneNode;
.source "ActiveIconView.java"


# instance fields
.field private pP:Z

.field protected qP:Lcom/smartisanos/launcher/view/a/g;

.field protected rP:Lcom/smartisanos/launcher/view/a/ka;

.field protected sP:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/a;->sP:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method public static sq()F
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    .line 3
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    .line 4
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x40400000    # 3.0f

    .line 5
    sget v2, Lcom/smartisanos/launcher/data/Constants;->density:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public Da(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Eb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/activeicon/a;->pP:Z

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->composeActiveIconToBaseBounds(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    # On the port, p1 is the complete static application icon rather than the
    # shadow-only base used by the original Smartisan package. Drawing it here
    # duplicates the weather/calendar artwork underneath the live frame. The
    # ordinary Cell shadow is attached separately by g.rl(), so p1 only defines
    # the output canvas bounds.

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/a;->sq()F

    move-result v4

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v5, v4

    .line 11
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    .line 12
    new-instance v6, Landroid/graphics/Rect;

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v2, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    invoke-virtual {v1, p2, v6, v7, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public a([BLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 17
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->c([B)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/activeicon/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public c(Lcom/smartisanos/launcher/view/a/ka;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/a;->rP:Lcom/smartisanos/launcher/view/a/ka;

    return-void
.end method

.method public clear(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    .line 2
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public createComposedBitmap()Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public d([B)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/a;->createComposedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/activeicon/a;->a([BLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public isTransformedTouchPointInView(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/a;->createComposedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/activeicon/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;->PAUSE:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->sP:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->sP:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    return-void
.end method

.method public qq()V
    .locals 0

    return-void
.end method

.method public rq()V
    .locals 0

    return-void
.end method

.method public setRenderQueue(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public tq()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->pP:Z

    return p0
.end method

.method public uq()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->gj()V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->rP:Lcom/smartisanos/launcher/view/a/ka;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ka;->gj()V

    :cond_1
    return-void
.end method
