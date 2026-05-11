.class public Lcom/smartisanos/launcher/view/b/O;
.super Lcom/smartisanos/launcher/view/b/M;
.source "PageNoRenderTarget.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/b/M;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    return-void
.end method


# virtual methods
.method public Hn()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/O;->oo()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

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

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 3
    :goto_0
    new-instance v0, Lcom/smartisanos/launcher/view/a/ba;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/a/ba;-><init>()V

    const-string v1, "itemInfo"

    .line 4
    invoke-virtual {v0, v1, p3}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "rowIndex"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string v1, "columnIndex"

    .line 6
    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const/4 v1, 0x0

    const-string v2, "RenderWithBatch"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const-string v2, "RenderUsePageBatch"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const-string v2, "PageCell"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    const-string v2, "singlePageMode"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    const-string v2, "multiPageMode"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v1

    const-string v2, "KeyCurrentPageMode"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 13
    new-instance v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v1, p4, v0}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    if-eqz p3, :cond_1

    .line 14
    iget-wide p3, p3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 16
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->create()V

    return-object v1
.end method

.method protected gn()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->hn()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 3
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_0

    .line 5
    invoke-virtual {p0, v4, v5}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v6

    .line 6
    invoke-virtual {p0, v4, v5}, Lcom/smartisanos/launcher/view/b/M;->z(II)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-virtual {p0, v4, v5, v7, v8}, Lcom/smartisanos/launcher/view/b/O;->a(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    .line 7
    aget-object v6, v2, v6

    .line 8
    iget v8, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, p0, Lcom/smartisanos/launcher/view/b/M;->WG:F

    invoke-virtual {v7, v8, v6, v9}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 9
    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 10
    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected oo()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->AI:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    .line 4
    invoke-virtual {p0, v3, v4}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v5

    .line 5
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 7
    invoke-static {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->create()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
