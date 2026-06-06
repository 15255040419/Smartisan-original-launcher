.class public Lcom/smartisanos/launcher/view/b/ka;
.super Lcom/smartisanos/launcher/view/b/M;
.source "PageWithRenderTarget.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private iJ:[Lcom/smartisanos/smengine/a/f;

.field private jJ:[Lcom/smartisanos/smengine/a/k;

.field protected kJ:Lcom/smartisanos/smengine/a/f;

.field private lJ:Ljava/util/ArrayList;

.field protected mJ:[Z

.field protected mPos:Lcom/smartisanos/smengine/a/j;

.field protected mRenderTarget:Lcom/smartisanos/smengine/N;

.field protected mSize:Lcom/smartisanos/smengine/a/j;

.field protected nJ:[F

.field protected oJ:[F

.field protected pH:Ljava/lang/String;

.field private pJ:Z

.field protected qJ:Z

.field private rJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/b/ka;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/b/ka;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/b/M;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    .line 2
    new-instance p1, Lcom/smartisanos/smengine/a/f;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ka;->kJ:Lcom/smartisanos/smengine/a/f;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ka;->lJ:Ljava/util/ArrayList;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ka;->nJ:[F

    .line 5
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ka;->mSize:Lcom/smartisanos/smengine/a/j;

    .line 6
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ka;->mPos:Lcom/smartisanos/smengine/a/j;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ka;->pJ:Z

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/b/ka;->qJ:Z

    .line 9
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ka;->rJ:Z

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ka;->init()V

    return-void
.end method

.method private e(Lcom/smartisanos/smengine/y;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    mul-int v1, v0, p0

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    .line 3
    new-array v1, v1, [F

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p0, :cond_2

    move v5, v4

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    const/4 v6, 0x0

    add-int/lit8 v7, v5, 0x1

    .line 4
    aput v6, v1, v5

    add-int/lit8 v5, v7, 0x1

    .line 5
    aput v6, v1, v7

    add-int/lit8 v7, v5, 0x1

    .line 6
    aput v6, v1, v5

    add-int/lit8 v5, v7, 0x1

    .line 7
    aput v6, v1, v7

    add-int/lit8 v7, v5, 0x1

    .line 8
    aput v6, v1, v5

    add-int/lit8 v5, v7, 0x1

    .line 9
    aput v6, v1, v7

    add-int/lit8 v7, v5, 0x1

    .line 10
    aput v6, v1, v5

    add-int/lit8 v5, v7, 0x1

    .line 11
    aput v6, v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    .line 12
    invoke-virtual {p1, p0, v1}, Lcom/smartisanos/smengine/y;->c(I[F)V

    return-void
.end method

.method private gy()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Jn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_1

    const-string v0, "background.png"

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "t_blur_background"

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->qo()V

    .line 11
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ka;->hy()V

    :cond_3
    return-void
.end method

.method private hy()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->vt()J

    move-result-wide v1

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESH_BATCH_9_CELLS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v3

    if-nez v3, :cond_c

    .line 5
    iget-object v3, v0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 6
    iget v6, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 7
    iget v7, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 8
    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-int v8, v4, v6

    mul-int/lit8 v9, v8, 0x4

    mul-int/lit8 v10, v9, 0x3

    .line 9
    new-array v12, v10, [F

    mul-int/lit8 v10, v9, 0x2

    .line 10
    new-array v13, v10, [F

    .line 11
    new-array v9, v9, [F

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v11, v6, :cond_3

    move v15, v14

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v4, :cond_2

    .line 12
    iget-object v10, v0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v10, v11, v14}, Lcom/smartisanos/smengine/N;->p(II)Lcom/smartisanos/smengine/M;

    .line 13
    new-instance v10, Lcom/smartisanos/smengine/a/j;

    move-wide/from16 v17, v1

    neg-float v1, v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v19, v5

    neg-float v5, v3

    div-float/2addr v5, v2

    const/4 v2, 0x0

    invoke-direct {v10, v1, v5, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 14
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    move/from16 v20, v8

    const/high16 v5, 0x40000000    # 2.0f

    div-float v8, v7, v5

    div-float v5, v3, v5

    invoke-direct {v1, v8, v5, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    add-int/lit8 v2, v15, 0x1

    .line 15
    iget v5, v10, Lcom/smartisanos/smengine/a/j;->x:F

    aput v5, v12, v15

    add-int/lit8 v8, v2, 0x1

    .line 16
    iget v10, v10, Lcom/smartisanos/smengine/a/j;->y:F

    aput v10, v12, v2

    add-int/lit8 v2, v8, 0x1

    .line 17
    iget v15, v0, Lcom/smartisanos/launcher/view/b/M;->WG:F

    aput v15, v12, v8

    add-int/lit8 v8, v2, 0x1

    move/from16 v21, v3

    .line 18
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    aput v3, v12, v2

    add-int/lit8 v2, v8, 0x1

    .line 19
    aput v10, v12, v8

    add-int/lit8 v8, v2, 0x1

    .line 20
    aput v15, v12, v2

    add-int/lit8 v2, v8, 0x1

    .line 21
    aput v3, v12, v8

    add-int/lit8 v3, v2, 0x1

    .line 22
    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    aput v1, v12, v2

    add-int/lit8 v2, v3, 0x1

    .line 23
    aput v15, v12, v3

    add-int/lit8 v3, v2, 0x1

    .line 24
    aput v5, v12, v2

    add-int/lit8 v2, v3, 0x1

    .line 25
    aput v1, v12, v3

    add-int/lit8 v1, v2, 0x1

    .line 26
    aput v15, v12, v2

    add-int/lit8 v14, v14, 0x1

    move v15, v1

    move-wide/from16 v1, v17

    move-object/from16 v5, v19

    move/from16 v8, v20

    move/from16 v3, v21

    goto :goto_1

    :cond_2
    move-wide/from16 v17, v1

    move/from16 v21, v3

    move-object/from16 v19, v5

    move/from16 v20, v8

    add-int/lit8 v11, v11, 0x1

    move v14, v15

    goto :goto_0

    :cond_3
    move-wide/from16 v17, v1

    move-object/from16 v19, v5

    move/from16 v20, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v1, v6, :cond_5

    move v3, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_4

    .line 27
    iget-object v5, v0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v5, v1, v2}, Lcom/smartisanos/smengine/N;->p(II)Lcom/smartisanos/smengine/M;

    move-result-object v5

    add-int/lit8 v7, v3, 0x1

    .line 28
    iget-object v8, v5, Lcom/smartisanos/smengine/M;->rG:[F

    const/4 v10, 0x0

    aget v11, v8, v10

    aput v11, v13, v3

    add-int/lit8 v3, v7, 0x1

    .line 29
    iget-object v5, v5, Lcom/smartisanos/smengine/M;->v:[F

    aget v11, v5, v10

    aput v11, v13, v7

    add-int/lit8 v7, v3, 0x1

    const/4 v11, 0x1

    .line 30
    aget v14, v8, v11

    aput v14, v13, v3

    add-int/lit8 v3, v7, 0x1

    .line 31
    aget v14, v5, v10

    aput v14, v13, v7

    add-int/lit8 v7, v3, 0x1

    .line 32
    aget v10, v8, v11

    aput v10, v13, v3

    add-int/lit8 v3, v7, 0x1

    .line 33
    aget v10, v5, v11

    aput v10, v13, v7

    add-int/lit8 v7, v3, 0x1

    const/4 v10, 0x0

    .line 34
    aget v8, v8, v10

    aput v8, v13, v3

    add-int/lit8 v3, v7, 0x1

    .line 35
    aget v5, v5, v11

    aput v5, v13, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    move v1, v10

    move v2, v1

    :goto_4
    if-ge v1, v6, :cond_7

    move v3, v2

    move v2, v10

    :goto_5
    if-ge v2, v4, :cond_6

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v5

    add-int/lit8 v7, v3, 0x1

    int-to-float v5, v5

    .line 37
    aput v5, v9, v3

    add-int/lit8 v3, v7, 0x1

    .line 38
    aput v5, v9, v7

    add-int/lit8 v7, v3, 0x1

    .line 39
    aput v5, v9, v3

    add-int/lit8 v3, v7, 0x1

    .line 40
    aput v5, v9, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_4

    :cond_7
    mul-int/lit8 v8, v20, 0x2

    mul-int/lit8 v8, v8, 0x3

    .line 41
    new-array v14, v8, [S

    move v1, v10

    move v2, v1

    :goto_6
    if-ge v1, v6, :cond_9

    move v3, v2

    move v2, v10

    :goto_7
    if-ge v2, v4, :cond_8

    mul-int v5, v1, v4

    mul-int/lit8 v5, v5, 0x4

    mul-int/lit8 v7, v2, 0x4

    add-int/2addr v5, v7

    int-to-short v5, v5

    add-int/lit8 v7, v5, 0x1

    int-to-short v7, v7

    add-int/lit8 v8, v7, 0x1

    int-to-short v8, v8

    add-int/lit8 v11, v8, 0x1

    int-to-short v11, v11

    add-int/lit8 v15, v3, 0x1

    .line 42
    aput-short v5, v14, v3

    add-int/lit8 v3, v15, 0x1

    .line 43
    aput-short v7, v14, v15

    add-int/lit8 v7, v3, 0x1

    .line 44
    aput-short v8, v14, v3

    add-int/lit8 v3, v7, 0x1

    .line 45
    aput-short v5, v14, v7

    add-int/lit8 v5, v3, 0x1

    .line 46
    aput-short v8, v14, v3

    add-int/lit8 v3, v5, 0x1

    .line 47
    aput-short v11, v14, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_6

    .line 48
    :cond_9
    new-instance v1, Lcom/smartisanos/smengine/y;

    invoke-direct {v1}, Lcom/smartisanos/smengine/y;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v1

    .line 49
    invoke-virtual/range {v11 .. v16}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/b/M;->Jn()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 51
    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/y;->c([F)V

    .line 52
    :cond_a
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_b

    .line 53
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/b/ka;->e(Lcom/smartisanos/smengine/y;)V

    .line 54
    :cond_b
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v17

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    goto :goto_8

    :cond_c
    move-object v1, v3

    .line 55
    :goto_8
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    return-void
.end method

.method private init()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v0

    .line 2
    new-array v1, v0, [Lcom/smartisanos/smengine/a/f;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->iJ:[Lcom/smartisanos/smengine/a/f;

    .line 3
    new-array v1, v0, [Lcom/smartisanos/smengine/a/k;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->jJ:[Lcom/smartisanos/smengine/a/k;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ka;->iJ:[Lcom/smartisanos/smengine/a/f;

    new-instance v4, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/f;-><init>()V

    aput-object v4, v3, v2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ka;->jJ:[Lcom/smartisanos/smengine/a/k;

    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/k;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_batchShadow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/view/c;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    iget v3, v0, Lcom/smartisanos/launcher/view/lb;->yw:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 12
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 14
    :cond_2
    new-instance v2, Lcom/smartisanos/launcher/view/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_batchBackground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/launcher/view/b;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    .line 15
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->Aw:I

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const-string v2, "smartisan_theme_aero"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 19
    :cond_3
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    return-void
.end method

.method private iy()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->vt()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_PageRenderTargetTexture"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v1, Lcom/smartisanos/smengine/a/i;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/b/ka;->rJ:Z

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->qr()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->pageSizeScale:[Lcom/smartisanos/smengine/a/i;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v2

    aget-object v1, v1, v2

    .line 11
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/b/ka;->rJ:Z

    .line 12
    sget-object v2, Lcom/smartisanos/launcher/view/b/ka;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is small render target. v = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/i;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 14
    iget v8, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 15
    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v5, v1, Lcom/smartisanos/smengine/a/i;->x:F

    mul-float/2addr v4, v5

    .line 16
    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float/2addr v2, v1

    float-to-int v6, v4

    float-to-int v7, v2

    .line 17
    new-instance v1, Lcom/smartisanos/smengine/D;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/smartisanos/smengine/D;-><init>(Ljava/lang/String;IIII)V

    .line 18
    new-instance v2, Lcom/smartisanos/smengine/Da;

    invoke-direct {v2, v1}, Lcom/smartisanos/smengine/Da;-><init>(Lcom/smartisanos/smengine/N;)V

    .line 19
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 20
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/N;->Ma(Z)V

    return-void
.end method


# virtual methods
.method public B(II)[Lcom/smartisanos/smengine/a/f;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->iJ:[Lcom/smartisanos/smengine/a/f;

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
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->jJ:[Lcom/smartisanos/smengine/a/k;

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

.method public Hn()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/b/ka;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPageContent pageIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/ka;->mb(Z)V

    .line 4
    invoke-super {p0}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    :cond_1
    return-void
.end method

.method protected In()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->wI:Lcom/smartisanos/smengine/a/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->so()V

    :cond_0
    return-void
.end method

.method public Un()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    if-eqz v0, :cond_3

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/b/ka;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasePageContent pageIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clearAll()V

    .line 6
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->Qk()V

    .line 9
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    .line 10
    :cond_2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 14
    invoke-super {p0}, Lcom/smartisanos/launcher/view/b/M;->Un()V

    :cond_3
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

    const-string v2, "columnIndex"

    .line 7
    invoke-virtual {v0, v2, p2}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string v2, "itemInfo"

    .line 8
    invoke-virtual {v0, v2, p3}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "PageCell"

    .line 9
    invoke-virtual {v0, p3, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    .line 10
    iget-object p3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p3}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p3

    const-string v1, "singlePageMode"

    invoke-virtual {v0, v1, p3}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 11
    iget-object p3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p3}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result p3

    const-string v1, "multiPageMode"

    invoke-virtual {v0, v1, p3}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 12
    iget-object p3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p3}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p3

    const-string v1, "KeyCurrentPageMode"

    invoke-virtual {v0, v1, p3}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 13
    new-instance p3, Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p3, p4, v0}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 15
    iget-object p4, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {p3, p4}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 16
    iget-object p4, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p3, p4}, Lcom/smartisanos/launcher/view/a/g;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 17
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/smartisanos/launcher/view/a/g;->Ma(Ljava/lang/String;)V

    .line 18
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {p3, p0}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p3}, Lcom/smartisanos/launcher/view/a/g;->create()V

    return-object p3
.end method

.method public a(IIZFLcom/smartisanos/smengine/a;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 22
    invoke-super/range {p0 .. p6}, Lcom/smartisanos/launcher/view/b/M;->a(IIZFLcom/smartisanos/smengine/a;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const/high16 p3, 0x10000

    .line 24
    invoke-virtual {p1, p3, p2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const p3, 0x8000

    .line 25
    invoke-virtual {p1, p3, p2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 26
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/ka;->lJ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->vo()Lcom/smartisanos/smengine/a/i;

    move-result-object p2

    .line 28
    iget p3, p2, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Lcom/smartisanos/launcher/view/a/g;->ob(I)V

    .line 29
    iget p2, p2, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/g;->nb(I)V

    .line 30
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 31
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/g;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 32
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/a/g;->Ma(Ljava/lang/String;)V

    return-object p1

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "$$$$$$$$$$$$ current page has no enough texture index!!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/ka;->lJ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->vo()Lcom/smartisanos/smengine/a/i;

    move-result-object p2

    .line 37
    iget p3, p2, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Lcom/smartisanos/launcher/view/a/g;->ob(I)V

    .line 38
    iget p2, p2, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/g;->nb(I)V

    .line 39
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 40
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/g;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 41
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/a/g;->Ma(Ljava/lang/String;)V

    return-object p1

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "$$$$$$$$$$$$ current page has no enough texture index!!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lcom/smartisanos/smengine/a/i;)V
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->lJ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V
    .locals 9

    .line 43
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 46
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->vn()Lcom/smartisanos/smengine/F;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 50
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 51
    new-instance v2, Lcom/smartisanos/launcher/view/b/ga;

    invoke-direct {v2, p0, v0}, Lcom/smartisanos/launcher/view/b/ga;-><init>(Lcom/smartisanos/launcher/view/b/ka;Lcom/smartisanos/smengine/F;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 52
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 53
    invoke-virtual {p6, p5, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_2

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->vn()Lcom/smartisanos/smengine/F;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 57
    sget-object v2, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    if-ne p1, v2, :cond_2

    .line 58
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    move-object v3, p2

    goto :goto_1

    .line 59
    :cond_2
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sEyeCoverPageColor:F

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    move-object v3, v2

    move-object v2, p1

    .line 60
    :goto_1
    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 61
    new-instance v2, Lcom/smartisanos/launcher/view/b/ha;

    invoke-direct {v2, p0, v0}, Lcom/smartisanos/launcher/view/b/ha;-><init>(Lcom/smartisanos/launcher/view/b/ka;Lcom/smartisanos/smengine/F;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 62
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 63
    invoke-virtual {p6, p5, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 64
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 66
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 67
    new-instance v2, Lcom/smartisanos/launcher/view/b/ia;

    invoke-direct {v2, p0, v0}, Lcom/smartisanos/launcher/view/b/ia;-><init>(Lcom/smartisanos/launcher/view/b/ka;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 68
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 69
    invoke-virtual {p6, p5, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 70
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->qn()Lcom/smartisanos/smengine/F;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 72
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 73
    new-instance p1, Lcom/smartisanos/launcher/view/b/ja;

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/view/b/ja;-><init>(Lcom/smartisanos/launcher/view/b/ka;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 74
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p0

    .line 75
    invoke-virtual {p6, p5, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public addMeshToRenderUnit(Lcom/smartisanos/smengine/I;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addMeshToRenderUnit(Lcom/smartisanos/smengine/I;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 4
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/b/ka;->B(II)[Lcom/smartisanos/smengine/a/f;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/b/ka;->C(II)[Lcom/smartisanos/smengine/a/k;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 7
    :goto_0
    array-length v6, v2

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    .line 8
    aget-object v6, v2, v5

    .line 9
    aput-object v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    move v6, v5

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v8

    const v9, 0x461c3c00    # 9999.0f

    const/4 v10, 0x0

    if-ge v5, v8, :cond_7

    .line 11
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    .line 12
    instance-of v11, v8, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v11, :cond_6

    .line 13
    move-object v11, v8

    check-cast v11, Lcom/smartisanos/launcher/view/a/g;

    .line 14
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getWorldMatrix()Lcom/smartisanos/smengine/a/f;

    move-result-object v8

    if-nez v8, :cond_2

    .line 15
    sget-boolean v12, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v12, :cond_2

    .line 16
    sget-object v12, Lcom/smartisanos/launcher/view/b/ka;->log:Lcom/smartisanos/launcher/va;

    const-string v13, "######### sn.getWorldMatrix() == null"

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/a/g;->dm()I

    move-result v12

    .line 18
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/a/g;->cm()I

    move-result v13

    .line 19
    invoke-virtual {p0, v12, v13}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v12

    const/high16 v13, 0x10000

    .line 20
    invoke-virtual {v11, v13}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 21
    aput-object v8, v2, v12

    goto :goto_2

    .line 22
    :cond_3
    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/ka;->kJ:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    .line 23
    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/ka;->kJ:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v8, v10, v9, v10}, Lcom/smartisanos/smengine/a/f;->f(FFF)V

    .line 24
    iget-object v8, p0, Lcom/smartisanos/launcher/view/b/ka;->kJ:Lcom/smartisanos/smengine/a/f;

    aput-object v8, v2, v12

    .line 25
    :goto_2
    aget-object v8, v3, v12

    if-nez v8, :cond_4

    .line 26
    new-instance v8, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v8}, Lcom/smartisanos/smengine/a/k;-><init>()V

    aput-object v8, v3, v12

    .line 27
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 28
    aget-object v8, v3, v12

    invoke-virtual {v11, v8}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_3

    .line 29
    :cond_5
    aget-object v8, v3, v12

    invoke-virtual {v11, v8}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 30
    :cond_7
    :goto_4
    array-length v3, v2

    if-ge v4, v3, :cond_9

    .line 31
    aget-object v3, v2, v4

    if-nez v3, :cond_8

    .line 32
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ka;->kJ:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    .line 33
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ka;->kJ:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v3, v10, v9, v10}, Lcom/smartisanos/smengine/a/f;->f(FFF)V

    .line 34
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ka;->kJ:Lcom/smartisanos/smengine/a/f;

    aput-object v3, v2, v4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    mul-int/2addr v0, v1

    if-le v6, v0, :cond_a

    .line 35
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "mat array num error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_a
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/I;->a([Lcom/smartisanos/smengine/a/f;)V

    throw v7
.end method

.method public c(FFF)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->wI:Lcom/smartisanos/smengine/a/j;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->wI:Lcom/smartisanos/smengine/a/j;

    .line 4
    :cond_1
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->so()V

    :cond_2
    return-void
.end method

.method public clear(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    .line 5
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->iJ:[Lcom/smartisanos/smengine/a/f;

    .line 7
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->jJ:[Lcom/smartisanos/smengine/a/k;

    .line 8
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->kJ:Lcom/smartisanos/smengine/a/f;

    .line 9
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->lJ:Ljava/util/ArrayList;

    .line 10
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->mJ:[Z

    .line 11
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->nJ:[F

    .line 12
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->mSize:Lcom/smartisanos/smengine/a/j;

    .line 13
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->mPos:Lcom/smartisanos/smengine/a/j;

    .line 14
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ka;->oJ:[F

    .line 15
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b;->clear(Z)V

    .line 18
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    .line 19
    :cond_1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->clear(Z)V

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Ln()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/ka;->pJ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 6
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 7
    instance-of v2, v0, Lcom/smartisanos/launcher/view/c;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Jn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 15
    :cond_7
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 16
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_b

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->lo()V

    goto :goto_3

    .line 18
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 19
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 22
    :cond_a
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v0, :cond_b

    .line 23
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public g(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->dm()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->cm()I

    move-result v0

    .line 4
    new-instance v2, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/i;-><init>()V

    int-to-float v1, v1

    int-to-float v0, v0

    .line 5
    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 6
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/ka;->a(Lcom/smartisanos/smengine/a/i;)V

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/smartisanos/launcher/view/b/M;->g(Lcom/smartisanos/smengine/SceneNode;Z)V

    return-void
.end method

.method protected gn()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ka;->iy()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->hn()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ka;->gy()V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->oo()V

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->updateGeometricState()V

    return-void
.end method

.method public ib(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v2, v2

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v3, v3

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v4, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->TI:Lcom/smartisanos/smengine/a/k;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v2, v2

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v3, v3

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v4, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    :cond_2
    return-void
.end method

.method public mb(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->mb(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/g;->bb(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Jn()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ka;->hy()V

    :cond_1
    return-void
.end method

.method public nb(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b;->yo()V

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const-string v1, "smartisan_theme_unused"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_0

    .line 7
    :cond_3
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/smartisanos/launcher/view/b/ka;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###show  batch background has parent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    goto :goto_0

    .line 10
    :cond_5
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/smartisanos/launcher/view/b/ka;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "###hide batch background no parent."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    .line 11
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 12
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/smartisanos/launcher/view/b/ka;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "### not gaussian theme, should not invoke this interface"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public ob(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/M;->vI:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/ka;->rJ:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->Un()V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->Hn()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ka;->rJ:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->Un()V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->Hn()V

    :cond_1
    :goto_0
    return-void
.end method

.method public oo()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    .line 3
    invoke-virtual {p0, v3, v4}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v5

    .line 4
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Jn()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/g;->bb(Z)V

    .line 6
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/M;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 7
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/g;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 8
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/g;->Ma(Ljava/lang/String;)V

    .line 9
    invoke-static {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->create()V

    .line 12
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Vg()V

    .line 13
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 14
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public pb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ka;->pJ:Z

    return-void
.end method

.method public po()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ka;->lJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->lJ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "$$$$$$$$$$$$ mCurrentFreeTextureIndexList.size() > 0 when up!!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public qb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ka;->qJ:Z

    return-void
.end method

.method protected qo()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Jn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    const-string v0, "TwoTextureBatchMaterial"

    goto :goto_0

    :cond_0
    const-string v0, "TextureBatchMaterial"

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v3

    .line 4
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/smartisanos/launcher/view/b/ka;->mJ:[Z

    .line 5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ka;->nJ:[F

    array-length v4, v4

    mul-int/2addr v4, v3

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/smartisanos/launcher/view/b/ka;->oJ:[F

    .line 6
    invoke-static {v0, v3}, Lcom/smartisanos/smengine/mymaterial/g;->p(Ljava/lang/String;I)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/f;->Wb(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    .line 12
    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 13
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 15
    new-instance v4, Lcom/smartisanos/smengine/Ca;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v2, v2, v2}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 16
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    goto :goto_2

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 19
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 20
    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->zw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->kJ:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    goto :goto_3

    :cond_3
    const-string v0, "SimpleTextureMaterial"

    .line 22
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 24
    new-instance p0, Lcom/smartisanos/smengine/Ca;

    invoke-direct {p0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    :goto_3
    return-void
.end method

.method public rb(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/smengine/mymaterial/D;

    if-nez v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 5
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v3

    const-string v4, "TwoTextureBatchMaterial"

    .line 6
    invoke-static {v4, v3}, Lcom/smartisanos/smengine/mymaterial/g;->p(Ljava/lang/String;I)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 9
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v3, :cond_1

    const-string v3, "background.png"

    .line 10
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "t_blur_background"

    .line 11
    invoke-virtual {p0, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/b/ka;->e(Lcom/smartisanos/smengine/y;)V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->yw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/smengine/mymaterial/r;

    if-nez v3, :cond_3

    .line 16
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 17
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v3

    const-string v4, "TextureBatchMaterial"

    .line 18
    invoke-static {v4, v3}, Lcom/smartisanos/smengine/mymaterial/g;->p(Ljava/lang/String;I)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 19
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 21
    invoke-virtual {p0, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 23
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->uw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    sget-object p1, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->sa(Ljava/lang/String;)Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/activeicon/m;

    if-eqz p0, :cond_5

    .line 25
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/activeicon/m;->setRenderQueue(I)V

    goto :goto_2

    .line 26
    :cond_4
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p0, :cond_5

    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    sget-object p1, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->sa(Ljava/lang/String;)Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/activeicon/m;

    if-eqz p0, :cond_5

    .line 28
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/activeicon/m;->setRenderQueue(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public rn()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    return-object p0
.end method

.method public ro()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->wI:Lcom/smartisanos/smengine/a/j;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v0

    const-string v1, "TextureBatchMaterial"

    .line 5
    invoke-static {v1, v0}, Lcom/smartisanos/smengine/mymaterial/g;->p(Ljava/lang/String;I)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    new-instance v2, Lcom/smartisanos/smengine/Ca;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->wI:Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public setNativeData(Lcom/smartisanos/smengine/Camera;)V
    .locals 24

    move-object/from16 v8, p0

    .line 1
    iget-object v0, v8, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v9, 0x0

    move v2, v9

    .line 3
    :goto_0
    iget-object v3, v8, Lcom/smartisanos/launcher/view/b/ka;->mJ:[Z

    array-length v4, v3

    const/4 v10, 0x1

    if-ge v2, v4, :cond_0

    .line 4
    aput-boolean v10, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/b/ka;->C(II)[Lcom/smartisanos/smengine/a/k;

    move-result-object v11

    mul-int v12, v1, v0

    .line 6
    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/SceneNode;->setMVPMatrixArrayNum(I)V

    move v13, v9

    move v14, v13

    .line 7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    if-ge v13, v0, :cond_8

    .line 8
    invoke-virtual {v8, v13}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v15

    .line 9
    instance-of v0, v15, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_7

    .line 10
    move-object v7, v15

    check-cast v7, Lcom/smartisanos/launcher/view/a/g;

    .line 11
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->dm()I

    move-result v0

    .line 12
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->cm()I

    move-result v1

    .line 13
    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v6

    const/high16 v0, 0x10000

    .line 14
    invoke-virtual {v7, v0}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v6

    move/from16 v18, v6

    move/from16 v6, v16

    move-object v10, v7

    move/from16 v7, v17

    .line 15
    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    goto :goto_2

    :cond_1
    move/from16 v18, v6

    move-object v10, v7

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v18

    .line 16
    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    .line 17
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/mymaterial/f;->iW:Z

    if-eqz v0, :cond_2

    move/from16 v0, v18

    .line 18
    invoke-virtual {v8, v10, v0}, Lcom/smartisanos/smengine/SceneNode;->calculateModeSpaceLightDirArrayData(Lcom/smartisanos/smengine/SceneNode;I)V

    goto :goto_3

    :cond_2
    move/from16 v0, v18

    .line 19
    :goto_3
    aget-object v1, v11, v0

    if-nez v1, :cond_3

    .line 20
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    aput-object v1, v11, v0

    .line 21
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    aget-object v1, v11, v0

    invoke-virtual {v10, v1}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    goto :goto_4

    .line 23
    :cond_4
    aget-object v1, v11, v0

    invoke-virtual {v10, v1}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 24
    :goto_4
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/smengine/mymaterial/D;

    if-eqz v1, :cond_6

    iget-boolean v1, v8, Lcom/smartisanos/launcher/view/b/ka;->qJ:Z

    if-eqz v1, :cond_6

    .line 25
    iget-object v1, v8, Lcom/smartisanos/launcher/view/b/ka;->mSize:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v15, v1}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 26
    iget-object v1, v8, Lcom/smartisanos/launcher/view/b/ka;->mPos:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v15, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 27
    iget-object v1, v8, Lcom/smartisanos/launcher/view/b/ka;->mPos:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    const/16 v20, 0x0

    iget-object v4, v8, Lcom/smartisanos/launcher/view/b/ka;->mSize:Lcom/smartisanos/smengine/a/j;

    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v6, v8, Lcom/smartisanos/launcher/view/b/ka;->nJ:[F

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v1

    move/from16 v21, v5

    move/from16 v22, v4

    move-object/from16 v23, v6

    invoke-static/range {v17 .. v23}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    const/4 v1, 0x1

    .line 28
    :goto_5
    iget-object v2, v8, Lcom/smartisanos/launcher/view/b/ka;->nJ:[F

    array-length v3, v2

    if-ge v1, v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    aget v4, v2, v1

    sub-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 30
    :cond_5
    iget-object v1, v8, Lcom/smartisanos/launcher/view/b/ka;->oJ:[F

    mul-int/lit8 v6, v0, 0x8

    array-length v3, v2

    invoke-static {v2, v9, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    :cond_6
    iget-object v1, v8, Lcom/smartisanos/launcher/view/b/ka;->mJ:[Z

    aput-boolean v9, v1, v0

    add-int/lit8 v14, v14, 0x1

    :cond_7
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 32
    :cond_8
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/D;

    if-eqz v0, :cond_9

    iget-boolean v0, v8, Lcom/smartisanos/launcher/view/b/ka;->qJ:Z

    if-eqz v0, :cond_9

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, v8, Lcom/smartisanos/launcher/view/b/ka;->oJ:[F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 34
    :cond_9
    :goto_6
    iget-object v0, v8, Lcom/smartisanos/launcher/view/b/ka;->mJ:[Z

    array-length v1, v0

    if-ge v9, v1, :cond_b

    .line 35
    aget-boolean v0, v0, v9

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    .line 36
    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    if-gt v14, v12, :cond_d

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v11}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    :cond_c
    return-void

    .line 39
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mat array num error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sn()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    return-object p0
.end method

.method public so()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v0

    const-string v1, "TextureBatchWithDirLightMaterial"

    .line 4
    invoke-static {v1, v0}, Lcom/smartisanos/smengine/mymaterial/g;->p(Ljava/lang/String;I)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/mymaterial/t;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/M;->wI:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/smengine/mymaterial/t;->m(FFF)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->Wb(Z)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/N;->Sk()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Lcom/smartisanos/smengine/Ca;

    const/4 v4, 0x5

    invoke-direct {v2, v4, v1, v1, v1}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v2, Lcom/smartisanos/smengine/Ca;

    invoke-direct {v2, v1, v1, v1, v1}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->cJ:Lcom/smartisanos/launcher/view/c;

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method public uo()Lcom/smartisanos/smengine/N;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    return-object p0
.end method

.method public updateGeometricState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/M;->dJ:Lcom/smartisanos/launcher/view/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_1
    return-void
.end method

.method public updateLayer(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->updateLayer(I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->zw:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method public vo()Lcom/smartisanos/smengine/a/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ka;->lJ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/i;

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ka;->lJ:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v0
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 4

    const-string v0, "PageWithRenderTarget"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ka;->pH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mRenderTargetTextureName"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ka;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mRenderTarget"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, v0, p2}, Lcom/smartisanos/launcher/view/b/M;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method
