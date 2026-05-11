.class public Lcom/smartisanos/launcher/view/Uc;
.super Lcom/smartisanos/smengine/SceneNode;
.source "WaveView.java"


# instance fields
.field private Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private WG:F

.field private ZO:Ljava/lang/String;

.field private _O:I

.field private aP:I

.field private bP:F

.field private cP:F

.field public dP:[Lcom/smartisanos/launcher/view/Tc;

.field private eP:I

.field private fP:I

.field private gP:Ljava/lang/String;

.field private hP:Ljava/lang/String;

.field private iP:F

.field private jP:F

.field private kP:I

.field private lP:[F

.field private nP:[F

.field private oP:[S


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFI)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/Uc;->WG:F

    const-string v0, "WAVE_MESH_NAME"

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Uc;->ZO:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/view/Uc;->_O:I

    const/16 v1, 0xa

    .line 5
    iput v1, p0, Lcom/smartisanos/launcher/view/Uc;->aP:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcom/smartisanos/launcher/view/Uc;->bP:F

    .line 7
    iput v1, p0, Lcom/smartisanos/launcher/view/Uc;->cP:F

    .line 8
    iput p1, p0, Lcom/smartisanos/launcher/view/Uc;->iP:F

    .line 9
    iput p1, p0, Lcom/smartisanos/launcher/view/Uc;->jP:F

    .line 10
    iget p1, p0, Lcom/smartisanos/launcher/view/Uc;->aP:I

    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/smartisanos/launcher/view/Uc;->kP:I

    .line 11
    iget v1, p0, Lcom/smartisanos/launcher/view/Uc;->kP:I

    mul-int/lit8 v2, v1, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    mul-int/lit8 v1, v1, 0x2

    .line 12
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/smartisanos/launcher/view/Uc;->nP:[F

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x3

    .line 13
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Uc;->oP:[S

    .line 14
    iput v0, p0, Lcom/smartisanos/launcher/view/Uc;->_O:I

    .line 15
    iput-object p2, p0, Lcom/smartisanos/launcher/view/Uc;->hP:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/smartisanos/launcher/view/Uc;->gP:Ljava/lang/String;

    .line 17
    invoke-static {p6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Uc;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 18
    invoke-direct {p0, p4, p5}, Lcom/smartisanos/launcher/view/Uc;->create(FF)V

    return-void
.end method

.method private Az()Lcom/smartisanos/smengine/y;
    .locals 14

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Uc;->cP:F

    neg-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    .line 3
    aput v0, v1, v4

    .line 4
    iget v5, p0, Lcom/smartisanos/launcher/view/Uc;->WG:F

    const/4 v6, 0x2

    aput v5, v1, v6

    const/4 v7, 0x3

    .line 5
    aput v2, v1, v7

    const/4 v8, 0x4

    .line 6
    aput v2, v1, v8

    const/4 v8, 0x5

    .line 7
    aput v5, v1, v8

    const/4 v1, 0x6

    move v5, v1

    move v1, v3

    .line 8
    :goto_0
    iget v8, p0, Lcom/smartisanos/launcher/view/Uc;->aP:I

    if-ge v1, v8, :cond_0

    .line 9
    iget v9, p0, Lcom/smartisanos/launcher/view/Uc;->bP:F

    int-to-float v8, v8

    div-float/2addr v9, v8

    add-int/lit8 v1, v1, 0x1

    int-to-float v8, v1

    mul-float/2addr v9, v8

    add-float/2addr v9, v2

    .line 10
    iget v8, p0, Lcom/smartisanos/launcher/view/Uc;->WG:F

    .line 11
    iget-object v10, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    aput v9, v10, v5

    add-int/lit8 v5, v5, 0x1

    .line 12
    aput v0, v10, v5

    add-int/2addr v5, v4

    .line 13
    aput v8, v10, v5

    add-int/2addr v5, v4

    .line 14
    aput v9, v10, v5

    add-int/2addr v5, v4

    .line 15
    aput v2, v10, v5

    add-int/2addr v5, v4

    .line 16
    aput v8, v10, v5

    add-int/2addr v5, v4

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    array-length v0, v0

    if-ne v5, v0, :cond_d

    move v0, v3

    move v1, v0

    .line 18
    :goto_1
    iget v2, p0, Lcom/smartisanos/launcher/view/Uc;->aP:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, v6

    add-int/lit8 v5, v2, 0x3

    int-to-short v5, v5

    add-int/2addr v2, v6

    int-to-short v2, v2

    mul-int/lit8 v8, v0, 0x2

    add-int/lit8 v9, v8, 0x2

    int-to-short v9, v9

    add-int/2addr v8, v7

    int-to-short v8, v8

    .line 19
    iget-object v10, p0, Lcom/smartisanos/launcher/view/Uc;->oP:[S

    aput-short v5, v10, v1

    add-int/lit8 v1, v1, 0x1

    .line 20
    aput-short v2, v10, v1

    add-int/2addr v1, v4

    .line 21
    aput-short v9, v10, v1

    add-int/2addr v1, v4

    .line 22
    aput-short v5, v10, v1

    add-int/2addr v1, v4

    .line 23
    aput-short v9, v10, v1

    add-int/2addr v1, v4

    .line 24
    aput-short v8, v10, v1

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Uc;->oP:[S

    array-length v0, v0

    if-ne v1, v0, :cond_c

    move v0, v3

    .line 26
    :goto_2
    iget v1, p0, Lcom/smartisanos/launcher/view/Uc;->kP:I

    if-ge v0, v1, :cond_2

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Uc;->nP:[F

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v5, v2, 0x0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    mul-int/lit8 v8, v0, 0x3

    add-int/lit8 v9, v8, 0x0

    aget v9, v6, v9

    aput v9, v1, v5

    add-int/2addr v2, v4

    add-int/2addr v8, v4

    .line 28
    aget v5, v6, v8

    neg-float v5, v5

    aput v5, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29
    :cond_2
    iget v0, p0, Lcom/smartisanos/launcher/view/Uc;->_O:I

    if-le v0, v4, :cond_a

    .line 30
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    array-length v1, v1

    mul-int/2addr v1, v0

    new-array v1, v1, [F

    .line 31
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Uc;->nP:[F

    array-length v2, v2

    mul-int/2addr v2, v0

    new-array v2, v2, [F

    .line 32
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Uc;->oP:[S

    array-length v4, v4

    mul-int/2addr v4, v0

    new-array v0, v4, [S

    move v4, v3

    .line 33
    :goto_3
    iget v5, p0, Lcom/smartisanos/launcher/view/Uc;->_O:I

    if-ge v4, v5, :cond_6

    move v5, v3

    .line 34
    :goto_4
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    array-length v8, v6

    if-ge v5, v8, :cond_3

    .line 35
    array-length v8, v6

    mul-int/2addr v8, v4

    add-int/2addr v8, v5

    aget v6, v6, v5

    aput v6, v1, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    move v5, v3

    .line 36
    :goto_5
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Uc;->nP:[F

    array-length v8, v6

    if-ge v5, v8, :cond_4

    .line 37
    array-length v8, v6

    mul-int/2addr v8, v4

    add-int/2addr v8, v5

    aget v6, v6, v5

    aput v6, v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    move v5, v3

    .line 38
    :goto_6
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Uc;->oP:[S

    array-length v8, v6

    if-ge v5, v8, :cond_5

    .line 39
    array-length v8, v6

    mul-int/2addr v8, v4

    add-int/2addr v8, v5

    aget-short v6, v6, v5

    iget v9, p0, Lcom/smartisanos/launcher/view/Uc;->kP:I

    mul-int/2addr v9, v4

    add-int/2addr v6, v9

    int-to-short v6, v6

    aput-short v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 40
    :cond_6
    new-instance v4, Lcom/smartisanos/smengine/y;

    invoke-direct {v4}, Lcom/smartisanos/smengine/y;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v8, v4

    move-object v9, v1

    move-object v10, v2

    move-object v11, v0

    .line 41
    invoke-virtual/range {v8 .. v13}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    .line 42
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/Uc;->ZO:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 43
    array-length v5, v1

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    move v5, v3

    .line 44
    :goto_7
    array-length v6, v1

    if-ge v5, v6, :cond_7

    .line 45
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    aget v8, v1, v5

    aput v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 46
    :cond_7
    array-length v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/smartisanos/launcher/view/Uc;->nP:[F

    move v1, v3

    .line 47
    :goto_8
    array-length v5, v2

    if-ge v1, v5, :cond_8

    .line 48
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Uc;->nP:[F

    aget v6, v2, v1

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 49
    :cond_8
    array-length v1, v0

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/smartisanos/launcher/view/Uc;->oP:[S

    .line 50
    :goto_9
    array-length v1, v0

    if-ge v3, v1, :cond_9

    .line 51
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Uc;->oP:[S

    aget-short v2, v0, v3

    aput-short v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    move-object v0, v4

    goto :goto_a

    :cond_a
    if-ne v0, v4, :cond_b

    .line 52
    new-instance v0, Lcom/smartisanos/smengine/y;

    invoke-direct {v0}, Lcom/smartisanos/smengine/y;-><init>()V

    .line 53
    iget-object v9, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    iget-object v10, p0, Lcom/smartisanos/launcher/view/Uc;->nP:[F

    iget-object v11, p0, Lcom/smartisanos/launcher/view/Uc;->oP:[S

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v8, v0

    invoke-virtual/range {v8 .. v13}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    .line 54
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Uc;->ZO:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 55
    :goto_a
    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->wk()[F

    move-result-object v1

    array-length v1, v1

    div-int/2addr v1, v7

    iput v1, p0, Lcom/smartisanos/launcher/view/Uc;->eP:I

    .line 56
    iget v1, p0, Lcom/smartisanos/launcher/view/Uc;->eP:I

    iget v2, p0, Lcom/smartisanos/launcher/view/Uc;->_O:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/smartisanos/launcher/view/Uc;->fP:I

    return-object v0

    .line 57
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n_wave < 1. n_wave = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/view/Uc;->_O:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error. index_waveIndices = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " waveIndices.size = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Uc;->oP:[S

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error. indexVertex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " waveVertices.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Uc;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Uc;->aP:I

    return p0
.end method

.method private create(FF)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Uc;->yz()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Uc;->hP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Uc;->zz()V

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Uc;->Az()Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/smartisanos/launcher/view/Uc;->iP:F

    div-float v1, p2, v1

    .line 9
    iput v1, p0, Lcom/smartisanos/launcher/view/Uc;->jP:F

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/smartisanos/launcher/view/Uc;->setTranslate(FFF)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method private yz()V
    .locals 3

    const-string v0, "WaveMaterial"

    .line 1
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    return-void
.end method

.method private zz()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Uc;->_O:I

    new-array v0, v0, [Lcom/smartisanos/launcher/view/Tc;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/smartisanos/launcher/view/Uc;->_O:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    new-instance v2, Lcom/smartisanos/launcher/view/Tc;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/Tc;-><init>(Lcom/smartisanos/launcher/view/Uc;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->a:F

    return-void
.end method

.method public B(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->d:F

    return-void
.end method

.method public C(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->ry:F

    return-void
.end method

.method public D(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->qy:F

    return-void
.end method

.method public E(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->time:F

    return-void
.end method

.method public F(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iput p1, p0, Lcom/smartisanos/launcher/view/Tc;->w:F

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method public pq()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    if-eqz v0, :cond_5

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/view/Uc;->_O:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    move v0, v2

    move v4, v0

    .line 5
    :goto_0
    iget v5, p0, Lcom/smartisanos/launcher/view/Uc;->fP:I

    if-ge v0, v5, :cond_5

    .line 6
    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    .line 7
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v7, v7, v2

    add-int/lit8 v8, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v7, v4}, Lcom/smartisanos/launcher/view/Tc;->n(F)F

    move-result v4

    aput v4, v5, v6

    .line 8
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Uc;->nP:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v3

    iget-object v7, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    aget v6, v7, v6

    neg-float v6, v6

    aput v6, v4, v5

    move v4, v8

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 9
    :goto_1
    iget v4, p0, Lcom/smartisanos/launcher/view/Uc;->_O:I

    if-ge v0, v4, :cond_5

    .line 10
    iget v4, p0, Lcom/smartisanos/launcher/view/Uc;->fP:I

    mul-int/2addr v4, v0

    move v5, v2

    :goto_2
    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/smartisanos/launcher/view/Uc;->fP:I

    mul-int/2addr v7, v6

    if-ge v4, v7, :cond_4

    .line 11
    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_3

    .line 12
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    mul-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    aget-object v8, v8, v0

    add-int/lit8 v9, v5, 0x1

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Lcom/smartisanos/launcher/view/Tc;->n(F)F

    move-result v5

    aput v5, v6, v7

    .line 13
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Uc;->nP:[F

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v3

    iget-object v8, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    aget v7, v8, v7

    neg-float v7, v7

    aput v7, v5, v6

    move v5, v9

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_1

    .line 14
    :cond_5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Uc;->lP:[F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Uc;->nP:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/smengine/y;->a([F[F[S[F[FZ)V

    return-void
.end method

.method public setTranslate(FFF)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/Uc;->iP:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/smartisanos/launcher/view/Uc;->jP:F

    add-float/2addr p1, p2

    invoke-super {p0, v0, p1, p3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    return-void
.end method
