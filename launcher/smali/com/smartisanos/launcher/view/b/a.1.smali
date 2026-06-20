.class public Lcom/smartisanos/launcher/view/b/a;
.super Lcom/smartisanos/launcher/view/b/ka;
.source "FolderPage.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/b/ka;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/a;->init()V

    return-void
.end method

.method private init()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/c;->clear(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/b;->clear(Z)V

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_page_scissor_expand_width:I

    int-to-float v4, v3

    sub-float/2addr v2, v4

    .line 9
    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    .line 10
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v5, :cond_0

    .line 11
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, v2

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_bookcase_width:F

    sub-float/2addr v2, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    int-to-float v6, v3

    add-float/2addr v2, v6

    .line 12
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    float-to-int v2, v2

    int-to-float v2, v2

    float-to-int v4, v4

    int-to-float v4, v4

    float-to-int v5, v5

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_bookcase_height:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-direct {v6, v2, v4, v3, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v6, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 13
    :cond_0
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    float-to-int v2, v2

    int-to-float v2, v2

    float-to-int v4, v4

    int-to-float v4, v4

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    float-to-int v6, v6

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    int-to-float v3, v6

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_bookcase_height:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-direct {v5, v2, v4, v3, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    return-void
.end method


# virtual methods
.method public Hn()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/ka;->mb(Z)V

    .line 2
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->create()V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Rn()V

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    :cond_0
    return-void
.end method

.method public a(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    if-nez p3, :cond_0

    .line 1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cell_empty"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 2
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cell "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 3
    :goto_0
    new-instance v0, Lcom/smartisanos/launcher/view/a/ba;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/a/ba;-><init>()V

    const/4 v1, 0x1

    const-string v2, "RenderWithBatch"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const-string v2, "RenderUsePageBatch"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const-string v2, "rowIndex"

    .line 6
    invoke-virtual {v0, v2, p1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string p1, "columnIndex"

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string p1, "itemInfo"

    .line 8
    invoke-virtual {v0, p1, p3}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    sget-object p1, Lcom/smartisanos/launcher/view/Mc;->GO:Landroid/graphics/Paint;

    const-string p2, "paint"

    invoke-virtual {v0, p2, p1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "PageCell"

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const-string p1, "CellOnFolderPage"

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result p1

    const-string p2, "singlePageMode"

    invoke-virtual {v0, p2, p1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result p1

    const-string p2, "multiPageMode"

    .line 14
    invoke-virtual {v0, p2, p1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 15
    new-instance p1, Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p1, p4, v0}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 17
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 18
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/g;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/a/g;->Ma(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->create()V

    return-object p1
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 2
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/b/ka;->draw(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method protected en()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    const-string v1, "cellCamera_just_for_open_camera"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/k;->Da(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/Camera;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v3, v3

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v2, v2

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    const/high16 v2, 0x41a00000    # 20.0f

    const v3, 0x42652ee0

    .line 4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v4, v2}, Lcom/smartisanos/smengine/a/a;->atan2(FF)F

    move-result v4

    mul-float/2addr v4, v3

    mul-float/2addr v4, v5

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42480000    # 50.0f

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/smartisanos/smengine/Camera;->d(FFFF)V

    .line 6
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Camera;->g(Lcom/smartisanos/smengine/a/j;)V

    .line 7
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2, v4, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sget-object v3, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/Camera;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/smengine/k;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 9
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    :cond_1
    return-void
.end method

.method public gb(Z)V
    .locals 0

    return-void
.end method

.method protected gn()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    move v2, v1

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/smartisanos/launcher/view/b/ka;->gn()V

    if-eqz v2, :cond_1

    .line 4
    sput-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    :cond_1
    return-void
.end method
