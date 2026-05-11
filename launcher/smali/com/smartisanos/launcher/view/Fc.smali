.class public Lcom/smartisanos/launcher/view/Fc;
.super Lcom/smartisanos/launcher/view/Ia;
.source "SpecialDrawMultiTimesCubeNode.java"


# instance fields
.field private rM:Lcom/smartisanos/smengine/F;

.field private sM:Lcom/smartisanos/smengine/F;

.field private tM:Lcom/smartisanos/smengine/F;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Gc;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/Gc;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->this$0:Lcom/smartisanos/launcher/view/Gc;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/view/Ia;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private Pb(I)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_specialCube_BackFace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v8, p1

    invoke-static/range {v3 .. v8}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/F;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    const-string p1, "DrawMultiTimesMaterial"

    .line 4
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 11
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    const/16 v2, 0xc6

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    const/high16 v2, -0x3ee00000    # -10.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    const v2, 0x40490fdb    # (float)Math.PI

    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4, v3, v0, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {p1, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method private Py()Lcom/smartisanos/smengine/y;
    .locals 30

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESH_SPECIAL_CUBE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v1

    .line 5
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 6
    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 7
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/16 v3, 0x18

    new-array v5, v3, [F

    const/16 v4, 0x10

    new-array v6, v4, [F

    new-array v7, v3, [S

    .line 8
    new-instance v3, Lcom/smartisanos/smengine/a/i;

    neg-float v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    neg-float v10, v1

    div-float/2addr v10, v9

    invoke-direct {v3, v8, v10}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    .line 9
    new-instance v11, Lcom/smartisanos/smengine/a/i;

    div-float/2addr v2, v9

    div-float/2addr v1, v9

    invoke-direct {v11, v2, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    const/high16 v9, 0x41200000    # 10.0f

    .line 10
    new-instance v12, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v12, v8, v10}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    .line 11
    new-instance v8, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v8, v2, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    const/high16 v1, -0x3ee00000    # -10.0f

    const/4 v2, 0x1

    .line 12
    iget v10, v3, Lcom/smartisanos/smengine/a/i;->x:F

    const/4 v13, 0x0

    aput v10, v5, v13

    .line 13
    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    aput v3, v5, v2

    const/4 v14, 0x2

    aput v9, v5, v14

    .line 14
    iget v15, v11, Lcom/smartisanos/smengine/a/i;->x:F

    const/4 v14, 0x3

    aput v15, v5, v14

    const/4 v14, 0x4

    aput v3, v5, v14

    const/4 v3, 0x5

    aput v9, v5, v3

    const/4 v3, 0x6

    aput v15, v5, v3

    const/16 v15, 0x8

    .line 15
    iget v11, v11, Lcom/smartisanos/smengine/a/i;->y:F

    const/4 v3, 0x7

    aput v11, v5, v3

    const/16 v19, 0x9

    aput v9, v5, v15

    const/16 v20, 0xa

    aput v10, v5, v19

    const/16 v10, 0xb

    aput v11, v5, v20

    const/16 v11, 0xc

    aput v9, v5, v10

    const/16 v9, 0xd

    .line 16
    iget v10, v8, Lcom/smartisanos/smengine/a/i;->x:F

    aput v10, v5, v11

    const/16 v22, 0xe

    .line 17
    iget v11, v12, Lcom/smartisanos/smengine/a/i;->y:F

    aput v11, v5, v9

    const/16 v24, 0xf

    aput v1, v5, v22

    .line 18
    iget v12, v12, Lcom/smartisanos/smengine/a/i;->x:F

    aput v12, v5, v24

    const/16 v25, 0x11

    aput v11, v5, v4

    const/16 v11, 0x12

    aput v1, v5, v25

    const/16 v26, 0x13

    aput v12, v5, v11

    const/16 v12, 0x14

    .line 19
    iget v8, v8, Lcom/smartisanos/smengine/a/i;->y:F

    aput v8, v5, v26

    const/16 v27, 0x15

    aput v1, v5, v12

    const/16 v28, 0x16

    aput v10, v5, v27

    const/16 v10, 0x17

    aput v8, v5, v28

    aput v1, v5, v10

    const/4 v1, 0x0

    aput v1, v6, v13

    aput v1, v6, v2

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v29, 0x2

    aput v8, v6, v29

    const/16 v16, 0x3

    aput v1, v6, v16

    aput v8, v6, v14

    const/16 v17, 0x5

    aput v8, v6, v17

    const/16 v18, 0x6

    aput v1, v6, v18

    aput v8, v6, v3

    aput v1, v6, v15

    aput v1, v6, v19

    aput v8, v6, v20

    const/16 v21, 0xb

    aput v1, v6, v21

    const/16 v23, 0xc

    aput v8, v6, v23

    aput v8, v6, v9

    aput v1, v6, v22

    aput v8, v6, v24

    const/4 v1, 0x3

    int-to-short v8, v1

    aput-short v8, v7, v13

    const/4 v10, 0x2

    int-to-short v12, v10

    aput-short v12, v7, v2

    int-to-short v11, v3

    aput-short v11, v7, v10

    aput-short v8, v7, v1

    aput-short v11, v7, v14

    const/4 v1, 0x6

    int-to-short v10, v1

    const/4 v4, 0x5

    aput-short v10, v7, v4

    int-to-short v4, v4

    aput-short v4, v7, v1

    int-to-short v1, v13

    aput-short v1, v7, v3

    aput-short v8, v7, v15

    aput-short v4, v7, v19

    aput-short v8, v7, v20

    const/16 v3, 0xb

    aput-short v10, v7, v3

    const/16 v3, 0xc

    aput-short v4, v7, v3

    int-to-short v3, v14

    aput-short v3, v7, v9

    int-to-short v2, v2

    aput-short v2, v7, v22

    aput-short v4, v7, v24

    const/16 v4, 0x10

    aput-short v2, v7, v4

    aput-short v1, v7, v25

    const/16 v1, 0x12

    aput-short v2, v7, v1

    aput-short v3, v7, v26

    const/16 v1, 0x14

    aput-short v11, v7, v1

    aput-short v2, v7, v27

    aput-short v11, v7, v28

    const/16 v1, 0x17

    aput-short v12, v7, v1

    .line 20
    new-instance v1, Lcom/smartisanos/smengine/y;

    invoke-direct {v1}, Lcom/smartisanos/smengine/y;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v1

    .line 21
    invoke-virtual/range {v4 .. v9}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    return-object v1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Fc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Fc;->create()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Fc;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Fc;->xd(I)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Fc;Lcom/smartisanos/smengine/M;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Fc;->b(Lcom/smartisanos/smengine/M;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Fc;Lcom/smartisanos/smengine/M;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/Fc;->a(Lcom/smartisanos/smengine/M;I)V

    return-void
.end method

.method private a(Lcom/smartisanos/smengine/M;I)V
    .locals 11

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->vt()J

    move-result-wide v1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_specialCube_snapShot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/smartisanos/smengine/F;->b(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/F;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    const-string p2, "DrawMultiTimesMaterial"

    .line 9
    invoke-static {p2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p2

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 11
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 12
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 13
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 14
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 15
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 16
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 17
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 18
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 19
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 20
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {p2, v3, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 21
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    const/16 v3, 0xc8

    invoke-virtual {p2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 23
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 24
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object p2

    .line 25
    iget-object v3, p1, Lcom/smartisanos/smengine/M;->rG:[F

    aget v4, v3, v1

    aput v4, p2, v1

    .line 26
    iget-object p1, p1, Lcom/smartisanos/smengine/M;->v:[F

    aget v4, p1, v1

    aput v4, p2, v0

    const/4 v4, 0x3

    .line 27
    aget v5, v3, v0

    aput v5, p2, v2

    const/4 v2, 0x4

    .line 28
    aget v5, p1, v1

    aput v5, p2, v4

    const/4 v4, 0x5

    .line 29
    aget v5, v3, v0

    aput v5, p2, v2

    const/4 v2, 0x6

    .line 30
    aget v5, p1, v0

    aput v5, p2, v4

    const/4 v4, 0x7

    .line 31
    aget v3, v3, v1

    aput v3, p2, v2

    .line 32
    aget p1, p1, v0

    aput p1, p2, v4

    .line 33
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 34
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Fc;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Fc;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Fc;->Pb(I)V

    return-void
.end method

.method private b(Lcom/smartisanos/smengine/M;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->this$0:Lcom/smartisanos/launcher/view/Gc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/launcher/view/Gc;)[F

    move-result-object v0

    iget-object v1, p1, Lcom/smartisanos/smengine/M;->rG:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->this$0:Lcom/smartisanos/launcher/view/Gc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/launcher/view/Gc;)[F

    move-result-object v0

    iget-object v1, p1, Lcom/smartisanos/smengine/M;->v:[F

    aget v1, v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->this$0:Lcom/smartisanos/launcher/view/Gc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/launcher/view/Gc;)[F

    move-result-object v0

    iget-object v1, p1, Lcom/smartisanos/smengine/M;->rG:[F

    aget v1, v1, v3

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->this$0:Lcom/smartisanos/launcher/view/Gc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/launcher/view/Gc;)[F

    move-result-object v0

    iget-object v1, p1, Lcom/smartisanos/smengine/M;->v:[F

    aget v1, v1, v2

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->this$0:Lcom/smartisanos/launcher/view/Gc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/launcher/view/Gc;)[F

    move-result-object v0

    iget-object v1, p1, Lcom/smartisanos/smengine/M;->rG:[F

    aget v1, v1, v3

    const/4 v4, 0x4

    aput v1, v0, v4

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->this$0:Lcom/smartisanos/launcher/view/Gc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/launcher/view/Gc;)[F

    move-result-object v0

    iget-object v1, p1, Lcom/smartisanos/smengine/M;->v:[F

    aget v1, v1, v3

    const/4 v4, 0x5

    aput v1, v0, v4

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->this$0:Lcom/smartisanos/launcher/view/Gc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/launcher/view/Gc;)[F

    move-result-object v0

    iget-object v1, p1, Lcom/smartisanos/smengine/M;->rG:[F

    aget v1, v1, v2

    const/4 v4, 0x6

    aput v1, v0, v4

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->this$0:Lcom/smartisanos/launcher/view/Gc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/launcher/view/Gc;)[F

    move-result-object v0

    iget-object p1, p1, Lcom/smartisanos/smengine/M;->v:[F

    aget p1, p1, v3

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Fc;->this$0:Lcom/smartisanos/launcher/view/Gc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/launcher/view/Gc;)[F

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/smartisanos/smengine/y;->d(I[F)V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/Fc;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Fc;->tM:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method private create()V
    .locals 3

    const-string v0, "DrawMultiTimesMaterial"

    .line 1
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Fc;->Py()Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 8
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    const/16 v0, 0xc7

    .line 13
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 14
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    const v0, 0x3e4ccccd    # 0.2f

    .line 15
    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :goto_0
    return-void
.end method

.method private xd(I)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_specialCube_ActiveIconCover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v4, v1, v2

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    sub-float v5, v0, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v8, p1

    invoke-static/range {v3 .. v8}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/F;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    const-string p1, "DrawMultiTimesMaterial"

    .line 4
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 p1, 0x1

    const-string v0, "brick_unselect.png"

    .line 7
    invoke-static {v0, p1}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/view/Ia;->b(ILjava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Fc;->sM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method


# virtual methods
.method public clear(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Fc;->rM:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 4
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method
