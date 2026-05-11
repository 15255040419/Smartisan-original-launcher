.class public Lcom/smartisanos/launcher/view/c;
.super Lcom/smartisanos/smengine/SceneNode;
.source "BatchShadow.java"


# instance fields
.field AJ:Ljava/lang/String;

.field BJ:I

.field protected Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private WG:F

.field private iJ:[Lcom/smartisanos/smengine/a/f;

.field private jJ:[Lcom/smartisanos/smengine/a/k;

.field private kJ:Lcom/smartisanos/smengine/a/f;

.field protected vJ:Z

.field protected wJ:Z

.field protected xJ:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/c;->WG:F

    .line 3
    new-instance p1, Lcom/smartisanos/smengine/a/f;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/c;->kJ:Lcom/smartisanos/smengine/a/f;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/c;->vJ:Z

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/c;->wJ:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/view/c;->xJ:F

    .line 7
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/c;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 8
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p2

    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result p2

    iput p2, p0, Lcom/smartisanos/launcher/view/c;->BJ:I

    .line 9
    iget p2, p0, Lcom/smartisanos/launcher/view/c;->BJ:I

    new-array v0, p2, [Lcom/smartisanos/smengine/a/f;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/c;->iJ:[Lcom/smartisanos/smengine/a/f;

    .line 10
    new-array p2, p2, [Lcom/smartisanos/smengine/a/k;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/c;->jJ:[Lcom/smartisanos/smengine/a/k;

    .line 11
    :goto_0
    iget p2, p0, Lcom/smartisanos/launcher/view/c;->BJ:I

    if-ge p1, p2, :cond_0

    .line 12
    iget-object p2, p0, Lcom/smartisanos/launcher/view/c;->iJ:[Lcom/smartisanos/smengine/a/f;

    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    aput-object v0, p2, p1

    .line 13
    iget-object p2, p0, Lcom/smartisanos/launcher/view/c;->jJ:[Lcom/smartisanos/smengine/a/k;

    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/k;-><init>()V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "TextureBatchMaterial"

    .line 14
    iput-object p1, p0, Lcom/smartisanos/launcher/view/c;->AJ:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/c;->gy()V

    return-void
.end method

.method private b([Lcom/smartisanos/smengine/a/f;)V
    .locals 1

    const/4 p0, 0x0

    .line 1
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_0

    .line 2
    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private gy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/c;->wo()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/c;->ky()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    return-void
.end method

.method private ky()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    const-string v2, "SHADOW_MESH_BATCH_9_CELLS"

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v1

    if-nez v1, :cond_9

    .line 3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/c;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 4
    iget v4, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 5
    iget v5, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_width:F

    mul-float/2addr v5, v6

    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_content_width:F

    div-float/2addr v5, v6

    .line 6
    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_height:F

    mul-float/2addr v6, v7

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_normal_shadow_image_content_height:F

    div-float/2addr v6, v1

    mul-int v1, v3, v4

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v7, 0x3

    .line 7
    new-array v10, v8, [F

    mul-int/lit8 v8, v7, 0x2

    .line 8
    new-array v11, v8, [F

    .line 9
    new-array v7, v7, [F

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x0

    if-ge v9, v4, :cond_2

    move v14, v12

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v3, :cond_1

    .line 10
    new-instance v15, Lcom/smartisanos/smengine/a/j;

    neg-float v8, v5

    const/high16 v17, 0x40000000    # 2.0f

    div-float v8, v8, v17

    move-object/from16 v18, v2

    neg-float v2, v6

    div-float v2, v2, v17

    invoke-direct {v15, v8, v2, v13}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 11
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    div-float v8, v5, v17

    move/from16 v19, v5

    div-float v5, v6, v17

    invoke-direct {v2, v8, v5, v13}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    add-int/lit8 v5, v14, 0x1

    .line 12
    iget v8, v15, Lcom/smartisanos/smengine/a/j;->x:F

    aput v8, v10, v14

    add-int/lit8 v14, v5, 0x1

    .line 13
    iget v15, v15, Lcom/smartisanos/smengine/a/j;->y:F

    aput v15, v10, v5

    add-int/lit8 v5, v14, 0x1

    .line 14
    iget v13, v0, Lcom/smartisanos/launcher/view/c;->WG:F

    aput v13, v10, v14

    add-int/lit8 v14, v5, 0x1

    move/from16 v20, v6

    .line 15
    iget v6, v2, Lcom/smartisanos/smengine/a/j;->x:F

    aput v6, v10, v5

    add-int/lit8 v5, v14, 0x1

    .line 16
    aput v15, v10, v14

    add-int/lit8 v14, v5, 0x1

    .line 17
    aput v13, v10, v5

    add-int/lit8 v5, v14, 0x1

    .line 18
    aput v6, v10, v14

    add-int/lit8 v6, v5, 0x1

    .line 19
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    aput v2, v10, v5

    add-int/lit8 v5, v6, 0x1

    .line 20
    aput v13, v10, v6

    add-int/lit8 v6, v5, 0x1

    .line 21
    aput v8, v10, v5

    add-int/lit8 v5, v6, 0x1

    .line 22
    aput v2, v10, v6

    add-int/lit8 v14, v5, 0x1

    .line 23
    aput v13, v10, v5

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v18

    move/from16 v5, v19

    move/from16 v6, v20

    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v18, v2

    move/from16 v19, v5

    move/from16 v20, v6

    add-int/lit8 v9, v9, 0x1

    move v12, v14

    goto :goto_0

    :cond_2
    move-object/from16 v18, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x2

    if-ge v2, v4, :cond_4

    move v8, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_3

    .line 24
    new-instance v9, Lcom/smartisanos/smengine/M;

    invoke-direct {v9}, Lcom/smartisanos/smengine/M;-><init>()V

    new-array v12, v6, [F

    .line 25
    iput-object v12, v9, Lcom/smartisanos/smengine/M;->rG:[F

    new-array v12, v6, [F

    .line 26
    iput-object v12, v9, Lcom/smartisanos/smengine/M;->v:[F

    .line 27
    iget-object v12, v9, Lcom/smartisanos/smengine/M;->rG:[F

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v15, 0x1

    const/16 v17, 0x0

    .line 28
    aput v17, v12, v15

    .line 29
    iget-object v9, v9, Lcom/smartisanos/smengine/M;->v:[F

    aput v13, v9, v14

    .line 30
    aput v17, v9, v15

    add-int/lit8 v13, v8, 0x1

    .line 31
    aget v16, v12, v14

    aput v16, v11, v8

    add-int/lit8 v8, v13, 0x1

    .line 32
    aget v16, v9, v14

    aput v16, v11, v13

    add-int/lit8 v13, v8, 0x1

    .line 33
    aget v16, v12, v15

    aput v16, v11, v8

    add-int/lit8 v8, v13, 0x1

    .line 34
    aget v19, v9, v14

    aput v19, v11, v13

    add-int/lit8 v13, v8, 0x1

    .line 35
    aget v14, v12, v15

    aput v14, v11, v8

    add-int/lit8 v8, v13, 0x1

    .line 36
    aget v14, v9, v15

    aput v14, v11, v13

    add-int/lit8 v13, v8, 0x1

    const/4 v14, 0x0

    .line 37
    aget v12, v12, v14

    aput v12, v11, v8

    add-int/lit8 v8, v13, 0x1

    .line 38
    aget v9, v9, v15

    aput v9, v11, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    const/16 v17, 0x0

    add-int/lit8 v2, v2, 0x1

    move v5, v8

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    move v2, v14

    move v5, v2

    :goto_4
    if-ge v2, v4, :cond_6

    move v8, v5

    move v5, v14

    :goto_5
    if-ge v5, v3, :cond_5

    .line 39
    invoke-static {v2, v5}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v9

    add-int/lit8 v12, v8, 0x1

    int-to-float v9, v9

    .line 40
    aput v9, v7, v8

    add-int/lit8 v8, v12, 0x1

    .line 41
    aput v9, v7, v12

    add-int/lit8 v12, v8, 0x1

    .line 42
    aput v9, v7, v8

    add-int/lit8 v8, v12, 0x1

    .line 43
    aput v9, v7, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v5, v8

    goto :goto_4

    :cond_6
    mul-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x3

    .line 44
    new-array v12, v1, [S

    move v1, v14

    move v2, v1

    :goto_6
    if-ge v1, v4, :cond_8

    move v5, v2

    move v2, v14

    :goto_7
    if-ge v2, v3, :cond_7

    mul-int v6, v1, v3

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v8, v2, 0x4

    add-int/2addr v6, v8

    int-to-short v6, v6

    add-int/lit8 v8, v6, 0x1

    int-to-short v8, v8

    add-int/lit8 v9, v8, 0x1

    int-to-short v9, v9

    add-int/lit8 v13, v9, 0x1

    int-to-short v13, v13

    add-int/lit8 v15, v5, 0x1

    .line 45
    aput-short v6, v12, v5

    add-int/lit8 v5, v15, 0x1

    .line 46
    aput-short v8, v12, v15

    add-int/lit8 v8, v5, 0x1

    .line 47
    aput-short v9, v12, v5

    add-int/lit8 v5, v8, 0x1

    .line 48
    aput-short v6, v12, v8

    add-int/lit8 v6, v5, 0x1

    .line 49
    aput-short v9, v12, v5

    add-int/lit8 v5, v6, 0x1

    .line 50
    aput-short v13, v12, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_6

    .line 51
    :cond_8
    new-instance v1, Lcom/smartisanos/smengine/y;

    invoke-direct {v1}, Lcom/smartisanos/smengine/y;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    .line 52
    invoke-virtual/range {v9 .. v14}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    .line 53
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/y;->c([F)V

    .line 54
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 55
    :cond_9
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    return-void
.end method


# virtual methods
.method public B(II)[Lcom/smartisanos/smengine/a/f;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/c;->iJ:[Lcom/smartisanos/smengine/a/f;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown row num and col num : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public C(II)[Lcom/smartisanos/smengine/a/k;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/c;->jJ:[Lcom/smartisanos/smengine/a/k;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown row num and col num : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addMeshToRenderUnit(Lcom/smartisanos/smengine/I;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addMeshToRenderUnit(Lcom/smartisanos/smengine/I;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/c;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 4
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/c;->B(II)[Lcom/smartisanos/smengine/a/f;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/c;->C(II)[Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    .line 7
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/c;->b([Lcom/smartisanos/smengine/a/f;)V

    const/4 v1, 0x0

    .line 8
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 9
    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/c;->xo()V

    .line 11
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/I;->a([Lcom/smartisanos/smengine/a/f;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c(ZF)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/c;->wJ:Z

    .line 2
    iput p2, p0, Lcom/smartisanos/launcher/view/c;->xJ:F

    return-void
.end method

.method public clear(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/c;->iJ:[Lcom/smartisanos/smengine/a/f;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/c;->jJ:[Lcom/smartisanos/smengine/a/k;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/c;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/c;->kJ:Lcom/smartisanos/smengine/a/f;

    .line 5
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method public sb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/c;->vJ:Z

    return-void
.end method

.method public setNativeData(Lcom/smartisanos/smengine/Camera;)V
    .locals 17

    move-object/from16 v8, p0

    .line 1
    iget-object v0, v8, Lcom/smartisanos/launcher/view/c;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 3
    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/c;->C(II)[Lcom/smartisanos/smengine/a/k;

    move-result-object v9

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    array-length v4, v9

    const/4 v10, 0x0

    if-ge v3, v4, :cond_0

    .line 5
    aget-object v4, v9, v3

    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    mul-int v11, v1, v0

    .line 6
    invoke-virtual {v8, v11}, Lcom/smartisanos/smengine/SceneNode;->setMVPMatrixArrayNum(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/smartisanos/launcher/view/b/M;

    move v13, v2

    move v14, v13

    .line 8
    :goto_1
    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    const v1, 0x8000

    if-ge v13, v0, :cond_8

    .line 9
    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 10
    instance-of v0, v2, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_7

    .line 11
    move-object v15, v2

    check-cast v15, Lcom/smartisanos/launcher/view/a/g;

    .line 12
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldMatrix()Lcom/smartisanos/smengine/a/f;

    .line 13
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/a/g;->dm()I

    move-result v0

    .line 14
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/a/g;->cm()I

    move-result v3

    .line 15
    invoke-virtual {v12, v0, v3}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v16

    .line 16
    invoke-virtual {v15, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-boolean v0, v8, Lcom/smartisanos/launcher/view/c;->wJ:Z

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v0

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v8, Lcom/smartisanos/launcher/view/c;->xJ:F

    invoke-virtual {v1, v2, v10, v0, v3}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v5

    .line 20
    iget v4, v8, Lcom/smartisanos/launcher/view/c;->xJ:F

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    goto :goto_2

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v16

    .line 21
    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    goto :goto_2

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v16

    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    .line 23
    :goto_2
    aget-object v0, v9, v16

    if-nez v0, :cond_3

    .line 24
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/k;-><init>()V

    aput-object v0, v9, v16

    .line 25
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    iget-boolean v0, v8, Lcom/smartisanos/launcher/view/c;->vJ:Z

    if-nez v0, :cond_4

    .line 27
    aget-object v0, v9, v16

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_3

    .line 28
    :cond_4
    aget-object v0, v9, v16

    invoke-virtual {v8, v0}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_3

    .line 29
    :cond_5
    iget-boolean v0, v8, Lcom/smartisanos/launcher/view/c;->vJ:Z

    if-nez v0, :cond_6

    .line 30
    aget-object v0, v9, v16

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_3

    .line 31
    :cond_6
    aget-object v0, v9, v16

    invoke-virtual {v8, v0}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 32
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-nez v0, :cond_9

    goto/16 :goto_6

    .line 33
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 34
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 35
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->dm()I

    move-result v1

    .line 36
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->cm()I

    move-result v2

    .line 37
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 38
    instance-of v4, v3, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v4, :cond_a

    goto :goto_4

    .line 39
    :cond_a
    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 40
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    :cond_b
    :goto_4
    if-ne v3, v12, :cond_e

    .line 41
    invoke-static {v1, v2}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v1

    move-object/from16 v2, p1

    .line 42
    invoke-virtual {v8, v2, v0, v1, v10}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixArrayDataWithChildZ(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IF)V

    .line 43
    aget-object v2, v9, v1

    if-nez v2, :cond_c

    .line 44
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/k;-><init>()V

    aput-object v2, v9, v1

    .line 45
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 46
    aget-object v2, v9, v1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_5

    .line 47
    :cond_d
    aget-object v2, v9, v1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 48
    :goto_5
    aget-object v0, v9, v1

    .line 49
    aget-object v1, v9, v1

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 50
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v9}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    :cond_f
    if-gt v14, v11, :cond_10

    return-void

    .line 52
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mat array num error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_6
    return-void
.end method

.method protected wo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/c;->AJ:Ljava/lang/String;

    iget v1, p0, Lcom/smartisanos/launcher/view/c;->BJ:I

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/mymaterial/g;->p(Ljava/lang/String;I)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    const/4 v2, 0x2

    .line 9
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    const/4 v2, 0x3

    .line 10
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setDepthTestFunc(I)V

    const-string v0, "brick_shadow.png"

    .line 11
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    return-void
.end method

.method public xo()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/c;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/c;->B(II)[Lcom/smartisanos/smengine/a/f;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/c;->C(II)[Lcom/smartisanos/smengine/a/k;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    const/4 v5, 0x0

    move v6, v5

    .line 6
    :goto_0
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v7

    const v8, 0x8000

    const/4 v9, 0x0

    if-ge v5, v7, :cond_7

    .line 7
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    .line 8
    instance-of v10, v7, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v10, :cond_6

    .line 9
    move-object v10, v7

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    .line 10
    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getWorldMatrix()Lcom/smartisanos/smengine/a/f;

    move-result-object v11

    .line 11
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->dm()I

    move-result v12

    .line 12
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->cm()I

    move-result v13

    .line 13
    invoke-virtual {v4, v12, v13}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v12

    .line 14
    invoke-virtual {v10, v8}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 15
    aget-object v8, v2, v12

    invoke-virtual {v8, v11}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/f;)V

    .line 16
    iget-boolean v8, p0, Lcom/smartisanos/launcher/view/c;->wJ:Z

    if-eqz v8, :cond_1

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v8

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v11

    iget v13, p0, Lcom/smartisanos/launcher/view/c;->xJ:F

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v11, v14, v9, v8, v13}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v8

    .line 19
    new-instance v9, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v9}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 20
    invoke-virtual {v7, v9}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 21
    aget-object v7, v2, v12

    iget v11, v9, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v11, v14

    iget v13, p0, Lcom/smartisanos/launcher/view/c;->xJ:F

    div-float/2addr v11, v13

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v9, v14

    div-float/2addr v9, v13

    invoke-virtual {v7, v11, v9, v8}, Lcom/smartisanos/smengine/a/f;->f(FFF)V

    .line 22
    aget-object v7, v2, v12

    iget v8, p0, Lcom/smartisanos/launcher/view/c;->xJ:F

    div-float v9, v14, v8

    div-float v8, v14, v8

    invoke-virtual {v7, v9, v8, v14}, Lcom/smartisanos/smengine/a/f;->setScale(FFF)V

    goto :goto_1

    .line 23
    :cond_0
    iget-object v7, p0, Lcom/smartisanos/launcher/view/c;->kJ:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    .line 24
    iget-object v7, p0, Lcom/smartisanos/launcher/view/c;->kJ:Lcom/smartisanos/smengine/a/f;

    const v8, 0x461c3c00    # 9999.0f

    invoke-virtual {v7, v9, v8, v9}, Lcom/smartisanos/smengine/a/f;->f(FFF)V

    .line 25
    aget-object v7, v2, v12

    iget-object v8, p0, Lcom/smartisanos/launcher/view/c;->kJ:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/f;)V

    .line 26
    :cond_1
    :goto_1
    aget-object v7, v3, v12

    if-nez v7, :cond_2

    .line 27
    new-instance v7, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v7}, Lcom/smartisanos/smengine/a/k;-><init>()V

    aput-object v7, v3, v12

    .line 28
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 29
    iget-boolean v7, p0, Lcom/smartisanos/launcher/view/c;->vJ:Z

    if-nez v7, :cond_3

    .line 30
    aget-object v7, v3, v12

    invoke-virtual {v10, v7}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_2

    .line 31
    :cond_3
    aget-object v7, v3, v12

    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_2

    .line 32
    :cond_4
    iget-boolean v7, p0, Lcom/smartisanos/launcher/view/c;->vJ:Z

    if-nez v7, :cond_5

    .line 33
    aget-object v7, v3, v12

    invoke-virtual {v10, v7}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_2

    .line 34
    :cond_5
    aget-object v7, v3, v12

    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 35
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 36
    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 37
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->dm()I

    move-result v5

    .line 38
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->cm()I

    move-result v7

    .line 39
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    .line 40
    instance-of v10, v8, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v10, :cond_8

    goto :goto_3

    .line 41
    :cond_8
    invoke-static {v8}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 42
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    :cond_9
    :goto_3
    if-ne v8, v4, :cond_c

    .line 43
    invoke-static {v5, v7}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v4

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldMatrix()Lcom/smartisanos/smengine/a/f;

    move-result-object v5

    .line 45
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 46
    invoke-virtual {p0, v7}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 47
    iget v8, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v5, v8, v7, v9}, Lcom/smartisanos/smengine/a/f;->f(FFF)V

    .line 48
    aget-object v2, v2, v4

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/f;)V

    .line 49
    aget-object v2, v3, v4

    if-nez v2, :cond_a

    .line 50
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/k;-><init>()V

    aput-object v2, v3, v4

    .line 51
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 52
    aget-object v2, v3, v4

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_4

    .line 53
    :cond_b
    aget-object v2, v3, v4

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 54
    :goto_4
    aget-object p0, v3, v4

    .line 55
    aget-object v2, v3, v4

    iget v3, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v2, v3, v4, v5, p0}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    :cond_c
    mul-int/2addr v0, v1

    if-gt v6, v0, :cond_d

    return-void

    .line 56
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mat array num error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
