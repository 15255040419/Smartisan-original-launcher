.class public Lcom/smartisanos/smengine/F;
.super Lcom/smartisanos/launcher/view/Ia;
.source "RectNode.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private BM:Lcom/smartisanos/smengine/F;

.field private WG:F

.field private mBottom:F

.field private mLeft:F

.field private mRight:F

.field private mTop:F

.field private uM:F

.field private vM:F

.field private wM:F

.field private xM:F

.field private yM:Lcom/smartisanos/smengine/E;

.field private zM:Lcom/smartisanos/smengine/F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/F;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/F;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;FFFFFFF)V
    .locals 9

    move-object v8, p0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ia;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/F;->a(FFFFFFF)V

    .line 3
    iget v0, v8, Lcom/smartisanos/smengine/F;->uM:F

    iget v1, v8, Lcom/smartisanos/smengine/F;->vM:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-gez v0, :cond_1

    .line 4
    iget v0, v8, Lcom/smartisanos/smengine/F;->wM:F

    iget v1, v8, Lcom/smartisanos/smengine/F;->xM:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p3

    if-gez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/RectNode$RectException;

    const-string v1, "create rect error: top and bottom padding exceed height"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RectNode$RectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/RectNode$RectException;

    const-string v1, "create rect error: left and right padding exeed width"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RectNode$RectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;FFFFFFFI)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    move/from16 v1, p9

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/smartisanos/launcher/view/Ia;-><init>(Ljava/lang/String;I)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/F;->a(FFFFFFF)V

    .line 9
    iget v0, v8, Lcom/smartisanos/smengine/F;->uM:F

    iget v1, v8, Lcom/smartisanos/smengine/F;->vM:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-gez v0, :cond_1

    .line 10
    iget v0, v8, Lcom/smartisanos/smengine/F;->wM:F

    iget v1, v8, Lcom/smartisanos/smengine/F;->xM:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p3

    if-gez v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/RectNode$RectException;

    const-string v1, "create rect error: top and bottom padding exceed height"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RectNode$RectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/RectNode$RectException;

    const-string v1, "create rect error: left and right padding exeed width"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RectNode$RectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;FFFLcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/F;
    .locals 10

    .line 33
    new-instance v9, Lcom/smartisanos/smengine/F;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/smengine/F;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 34
    new-instance v0, Ljava/lang/Float;

    move v1, p3

    invoke-direct {v0, p3}, Ljava/lang/Float;-><init>(F)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mesh.rect.normalize.color_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/smartisanos/smengine/d/c;->a(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 36
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;ZLcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Z)V

    const-string v0, "SimpleColorMaterial"

    .line 37
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 38
    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    div-float v0, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    invoke-virtual {v9, v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 42
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object v9
.end method

.method public static a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;
    .locals 10

    .line 22
    new-instance v9, Lcom/smartisanos/smengine/F;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/smengine/F;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 23
    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, p3}, Ljava/lang/Float;-><init>(F)V

    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mesh.rect.normalize.texture_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/smartisanos/smengine/d/c;->a(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move v7, p4

    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;ZLcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Z)V

    const-string p0, "SimpleTextureMaterial"

    .line 26
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    .line 27
    invoke-virtual {v9, p0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 p0, 0x0

    .line 28
    invoke-virtual {v9, p0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    const/4 p0, 0x1

    .line 29
    invoke-virtual {v9, p0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 30
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    div-float/2addr p2, p0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 31
    invoke-virtual {v9, p1, p2, p0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 32
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object v9
.end method

.method public static a(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/F;
    .locals 11

    .line 68
    new-instance v10, Lcom/smartisanos/smengine/F;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/smartisanos/smengine/F;-><init>(Ljava/lang/String;FFFFFFFI)V

    .line 69
    new-instance v0, Ljava/lang/Float;

    move v1, p3

    invoke-direct {v0, p3}, Ljava/lang/Float;-><init>(F)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mesh.rect.normalize.texture_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/smartisanos/smengine/d/c;->a(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move v7, p4

    .line 71
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;ZLcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Z)V

    const-string v0, "SimpleTextureMaterial"

    .line 72
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 73
    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 76
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    div-float v0, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 77
    invoke-virtual {v10, v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 78
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object v10
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;ZII)Lcom/smartisanos/smengine/F;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 43
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 44
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 45
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v2, v3

    move/from16 v3, p5

    .line 46
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v4, p6

    if-le v2, v4, :cond_0

    move v2, v4

    .line 47
    :cond_0
    new-instance v13, Lcom/smartisanos/smengine/F;

    int-to-float v14, v3

    int-to-float v15, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v13

    move-object/from16 v5, p0

    move v6, v14

    move v7, v15

    move/from16 v8, p2

    invoke-direct/range {v4 .. v12}, Lcom/smartisanos/smengine/F;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 48
    new-instance v4, Ljava/lang/Float;

    move/from16 v5, p2

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mesh.rect.normalize.texture_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    invoke-static {v4, v12}, Lcom/smartisanos/smengine/d/c;->a(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v13

    move/from16 v11, p4

    .line 50
    invoke-direct/range {v4 .. v11}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;ZLcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Z)V

    .line 51
    invoke-static {v0, v1}, Lcom/smartisanos/smengine/Da;->a(Ljava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v13, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    const-string v0, "TextureModularColorMaterial"

    .line 54
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    const/4 v4, 0x4

    .line 55
    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 56
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    const/4 v1, 0x3

    .line 57
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 58
    invoke-virtual {v13, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {v13, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 60
    invoke-virtual {v13, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 61
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, v14, v0

    div-float v0, v15, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 62
    invoke-virtual {v13, v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    const/4 v0, 0x0

    .line 63
    iput v0, v13, Lcom/smartisanos/smengine/F;->mLeft:F

    .line 64
    iput v14, v13, Lcom/smartisanos/smengine/F;->mRight:F

    .line 65
    iput v15, v13, Lcom/smartisanos/smengine/F;->mTop:F

    .line 66
    iput v0, v13, Lcom/smartisanos/smengine/F;->mBottom:F

    .line 67
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object v13
.end method

.method private a(FFFFFFF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_0

    cmpg-float v1, p2, v0

    if-lez v1, :cond_0

    cmpg-float v1, p4, v0

    if-ltz v1, :cond_0

    cmpg-float v1, p5, v0

    if-ltz v1, :cond_0

    cmpg-float v1, p6, v0

    if-ltz v1, :cond_0

    cmpg-float v0, p7, v0

    if-ltz v0, :cond_0

    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/smartisanos/smengine/F;->mLeft:F

    neg-float v0, p2

    div-float/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/smartisanos/smengine/F;->mBottom:F

    div-float/2addr p2, v1

    .line 14
    iput p2, p0, Lcom/smartisanos/smengine/F;->mTop:F

    div-float/2addr p1, v1

    .line 15
    iput p1, p0, Lcom/smartisanos/smengine/F;->mRight:F

    .line 16
    iput p3, p0, Lcom/smartisanos/smengine/F;->WG:F

    .line 17
    iput p4, p0, Lcom/smartisanos/smengine/F;->uM:F

    .line 18
    iput p5, p0, Lcom/smartisanos/smengine/F;->vM:F

    .line 19
    iput p6, p0, Lcom/smartisanos/smengine/F;->wM:F

    .line 20
    iput p7, p0, Lcom/smartisanos/smengine/F;->xM:F

    return-void

    .line 21
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/RectNode$RectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "width ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "], height ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "], leftPadding ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "], rightPadding ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "], topPadding ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "], bottomPadding ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RectNode$RectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/lang/String;ZLcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v5

    if-eqz p7, :cond_0

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_TEXYINVERSE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    move-object v6, v7

    .line 3
    :goto_0
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v7

    if-nez v7, :cond_3

    const/16 v7, 0xc

    new-array v8, v7, [F

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v8, v9

    const/4 v11, 0x1

    aput v10, v8, v11

    .line 4
    iget v12, v0, Lcom/smartisanos/smengine/F;->WG:F

    const/4 v13, 0x2

    aput v12, v8, v13

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v8, v14

    const/16 v16, 0x4

    aput v10, v8, v16

    const/16 v17, 0x5

    aput v12, v8, v17

    const/4 v7, 0x6

    aput v15, v8, v7

    const/16 v18, 0x7

    aput v15, v8, v18

    const/16 v14, 0x8

    aput v12, v8, v14

    const/16 v19, 0x9

    aput v10, v8, v19

    const/16 v10, 0xa

    aput v15, v8, v10

    const/16 v15, 0xb

    aput v12, v8, v15

    new-array v12, v7, [S

    .line 5
    fill-array-data v12, :array_0

    const/16 v20, 0x0

    if-eqz p2, :cond_1

    new-array v15, v14, [F

    .line 6
    fill-array-data v15, :array_1

    goto :goto_1

    :cond_1
    move-object/from16 v15, v20

    :goto_1
    const/16 v20, 0x0

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    const/16 v10, 0x10

    new-array v10, v10, [F

    .line 7
    iget v14, v1, Lcom/smartisanos/smengine/a/k;->x:F

    aput v14, v10, v9

    iget v9, v1, Lcom/smartisanos/smengine/a/k;->y:F

    aput v9, v10, v11

    iget v9, v1, Lcom/smartisanos/smengine/a/k;->z:F

    aput v9, v10, v13

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    const/4 v9, 0x3

    aput v1, v10, v9

    iget v1, v2, Lcom/smartisanos/smengine/a/k;->x:F

    aput v1, v10, v16

    iget v1, v2, Lcom/smartisanos/smengine/a/k;->y:F

    aput v1, v10, v17

    iget v1, v2, Lcom/smartisanos/smengine/a/k;->z:F

    aput v1, v10, v7

    iget v1, v2, Lcom/smartisanos/smengine/a/k;->w:F

    aput v1, v10, v18

    iget v1, v3, Lcom/smartisanos/smengine/a/k;->x:F

    const/16 v2, 0x8

    aput v1, v10, v2

    iget v1, v3, Lcom/smartisanos/smengine/a/k;->y:F

    aput v1, v10, v19

    iget v1, v3, Lcom/smartisanos/smengine/a/k;->z:F

    const/16 v2, 0xa

    aput v1, v10, v2

    iget v1, v3, Lcom/smartisanos/smengine/a/k;->w:F

    const/16 v2, 0xb

    aput v1, v10, v2

    iget v1, v4, Lcom/smartisanos/smengine/a/k;->x:F

    const/16 v2, 0xc

    aput v1, v10, v2

    const/16 v1, 0xd

    iget v2, v4, Lcom/smartisanos/smengine/a/k;->y:F

    aput v2, v10, v1

    const/16 v1, 0xe

    iget v2, v4, Lcom/smartisanos/smengine/a/k;->z:F

    aput v2, v10, v1

    const/16 v1, 0xf

    iget v2, v4, Lcom/smartisanos/smengine/a/k;->w:F

    aput v2, v10, v1

    goto :goto_2

    :cond_2
    move-object/from16 v10, v20

    .line 8
    :goto_2
    new-instance v1, Lcom/smartisanos/smengine/y;

    invoke-direct {v1, v6}, Lcom/smartisanos/smengine/y;-><init>(Ljava/lang/String;)V

    move-object/from16 p1, v1

    move-object/from16 p2, v8

    move-object/from16 p3, v15

    move-object/from16 p4, v12

    move-object/from16 p5, v10

    move/from16 p6, p7

    .line 9
    invoke-virtual/range {p1 .. p6}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    .line 10
    invoke-virtual {v5, v6, v1}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    goto :goto_3

    :cond_3
    move-object v1, v7

    .line 11
    :goto_3
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static b(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;
    .locals 10

    .line 1
    new-instance v9, Lcom/smartisanos/smengine/F;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/smengine/F;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 2
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p3}, Ljava/lang/Float;-><init>(F)V

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mesh.rect.normalize.texture_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/d/c;->a(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move v7, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;ZLcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Z)V

    const-string p0, "SimpleTextureMaterial"

    .line 5
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    .line 6
    invoke-virtual {v9, p0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 p0, 0x0

    .line 7
    invoke-virtual {v9, p0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    const/4 p0, 0x1

    .line 8
    invoke-virtual {v9, p0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 9
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    div-float/2addr p2, p0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v9, p1, p2, p0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 11
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object v9
.end method

.method public static b(Ljava/lang/String;FFFZI)Lcom/smartisanos/smengine/F;
    .locals 11

    .line 12
    new-instance v10, Lcom/smartisanos/smengine/F;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/smartisanos/smengine/F;-><init>(Ljava/lang/String;FFFFFFFI)V

    .line 13
    new-instance v0, Ljava/lang/Float;

    move v1, p3

    invoke-direct {v0, p3}, Ljava/lang/Float;-><init>(F)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mesh.rect.normalize.texture_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/smartisanos/smengine/d/c;->a(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move v7, p4

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;ZLcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Z)V

    const-string v0, "SimpleTextureMaterial"

    .line 16
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 17
    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 v0, 0x0

    .line 18
    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    const/4 v0, 0x1

    .line 19
    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 20
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    div-float v0, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    invoke-virtual {v10, v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 22
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object v10
.end method

.method public static c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;
    .locals 10

    .line 1
    new-instance v9, Lcom/smartisanos/smengine/F;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/smengine/F;-><init>(Ljava/lang/String;FFFFFFF)V

    .line 2
    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, p3}, Ljava/lang/Float;-><init>(F)V

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mesh.rect.normalize.texture_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/smartisanos/smengine/d/c;->a(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move v7, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;ZLcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Z)V

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    div-float/2addr p2, p0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {v9, p1, p2, p0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 6
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 7
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object v9
.end method

.method public static vp()Lcom/smartisanos/smengine/y;
    .locals 9

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    const-string v1, "mesh.rect.normalize.texture_0"

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0xc

    new-array v4, v2, [F

    .line 3
    fill-array-data v4, :array_0

    const/4 v2, 0x6

    new-array v6, v2, [S

    .line 4
    fill-array-data v6, :array_1

    const/16 v2, 0x8

    new-array v5, v2, [F

    .line 5
    fill-array-data v5, :array_2

    .line 6
    new-instance v2, Lcom/smartisanos/smengine/y;

    invoke-direct {v2, v1}, Lcom/smartisanos/smengine/y;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    .line 7
    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    :cond_0
    return-object v2

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public d([F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/F;->yM:Lcom/smartisanos/smengine/E;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, v0, Lcom/smartisanos/smengine/E;->iF:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/F;->zM:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/F;->zM:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method public e([F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/y;->Aa(Z)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    :cond_0
    return-void
.end method

.method public getHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/F;->mTop:F

    iget p0, p0, Lcom/smartisanos/smengine/F;->mBottom:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public getSize(Lcom/smartisanos/smengine/a/j;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-object p0, v0, Lcom/smartisanos/smengine/d/f;->CY:[F

    invoke-static {v1, v2, p0}, Lcom/smartisanos/smengine/SceneNode;->nGetWorldScale(J[F)V

    .line 3
    iget-object p0, v0, Lcom/smartisanos/smengine/d/f;->CY:[F

    const/4 v1, 0x0

    aget v1, p0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    mul-float/2addr v3, v2

    const/4 v4, 0x2

    aget p0, p0, v4

    mul-float/2addr p0, v2

    invoke-virtual {p1, v1, v3, p0}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-void
.end method

.method public getWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/F;->mRight:F

    iget p0, p0, Lcom/smartisanos/smengine/F;->mLeft:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/theme/ActiveIconRasterSpec;->textureForNode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/F;->yM:Lcom/smartisanos/smengine/E;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/F;->zM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/smengine/F;->BM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
