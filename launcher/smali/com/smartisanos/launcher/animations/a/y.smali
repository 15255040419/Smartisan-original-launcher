.class public Lcom/smartisanos/launcher/animations/a/y;
.super Lcom/smartisanos/smengine/SceneNode;
.source "PageScrollShadowLouver.java"


# instance fields
.field private PG:[Lcom/smartisanos/smengine/a/j;

.field private QG:I

.field private RG:[I

.field private mScale:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    new-array p1, p2, [Lcom/smartisanos/smengine/a/j;

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/y;->PG:[Lcom/smartisanos/smengine/a/j;

    .line 3
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/y;->RG:[I

    .line 4
    iput p2, p0, Lcom/smartisanos/launcher/animations/a/y;->QG:I

    .line 5
    iput p3, p0, Lcom/smartisanos/launcher/animations/a/y;->mScale:F

    return-void
.end method

.method public static a(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/a/y;
    .locals 3

    .line 1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v0

    add-float/2addr v1, p2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/animations/a/y;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/smartisanos/launcher/animations/a/y;-><init>(Ljava/lang/String;IF)V

    .line 3
    invoke-static/range {p1 .. p6}, Lcom/smartisanos/launcher/animations/a/y;->a(FFFFIF)Lcom/smartisanos/smengine/y;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    const-string p0, "DrawMultiTimesMaterial"

    .line 5
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->setDepthTestFunc(I)V

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->Da(Z)V

    const/4 p0, 0x2

    .line 13
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const-string p0, "page_scroll_louver_h.png"

    .line 14
    invoke-static {p0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(FFFFIF)Lcom/smartisanos/smengine/y;
    .locals 25

    move/from16 v6, p1

    move/from16 v7, p4

    .line 15
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v0

    add-float/2addr v1, v6

    int-to-float v0, v0

    div-float v8, v1, v0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v0, v9, v8

    mul-float v10, v0, p5

    const v0, 0x3e3851ec    # 0.18f

    mul-float v11, v6, v0

    mul-int/lit8 v0, v7, 0x6

    mul-int/lit8 v1, v0, 0x3

    .line 16
    new-array v12, v1, [F

    const/4 v13, 0x2

    mul-int/2addr v0, v13

    .line 17
    new-array v14, v0, [F

    mul-int/lit8 v0, v7, 0x4

    const/4 v15, 0x3

    mul-int/2addr v0, v15

    .line 18
    new-array v5, v0, [S

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_0
    if-ge v4, v7, :cond_0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v2, v4

    mul-double/2addr v2, v0

    mul-int/lit8 v0, v7, 0x3

    int-to-double v0, v0

    div-double/2addr v2, v0

    double-to-float v2, v2

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p2

    move/from16 v17, v4

    move/from16 v4, p3

    move-object/from16 v18, v5

    move/from16 v5, p5

    .line 19
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/a/y;->c(FFFFFF)[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    mul-int/lit8 v4, v17, 0x12

    add-int/lit8 v1, v4, 0x0

    .line 20
    aget-object v2, v0, v16

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v2, v11

    mul-float/2addr v2, v8

    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x1

    .line 21
    aget-object v2, v0, v16

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v11

    mul-float/2addr v2, v8

    add-float/2addr v2, v10

    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x2

    neg-float v2, v6

    .line 22
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x3

    const/4 v3, 0x1

    .line 23
    aget-object v5, v0, v3

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x4

    .line 24
    aget-object v5, v0, v3

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x5

    .line 25
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x6

    .line 26
    aget-object v5, v0, v13

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x7

    .line 27
    aget-object v5, v0, v13

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x8

    .line 28
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x9

    .line 29
    aget-object v5, v0, v15

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v5, v11

    mul-float/2addr v5, v8

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0xa

    .line 30
    aget-object v5, v0, v15

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0xb

    .line 31
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0xc

    const/4 v5, 0x4

    .line 32
    aget-object v15, v0, v5

    iget v15, v15, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v15, v11

    mul-float/2addr v15, v8

    aput v15, v12, v1

    add-int/lit8 v1, v4, 0xd

    .line 33
    aget-object v5, v0, v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0xe

    .line 34
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0xf

    const/4 v5, 0x5

    .line 35
    aget-object v15, v0, v5

    iget v15, v15, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v15, v11

    mul-float/2addr v15, v8

    aput v15, v12, v1

    add-int/lit8 v1, v4, 0x10

    .line 36
    aget-object v5, v0, v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v4, v4, 0x11

    .line 37
    aput v2, v12, v4

    mul-int/lit8 v4, v17, 0xc

    .line 38
    aget-object v1, v0, v3

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v2, v0, v16

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v1, v2

    add-float/2addr v1, v11

    aget-object v2, v0, v13

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v0, v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v11

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    add-int/lit8 v0, v4, 0x0

    const/4 v2, 0x0

    .line 39
    aput v2, v14, v0

    add-int/lit8 v3, v4, 0x1

    .line 40
    aput v2, v14, v3

    add-int/lit8 v5, v4, 0x2

    .line 41
    aput v2, v14, v5

    add-int/lit8 v15, v4, 0x3

    .line 42
    aput v1, v14, v15

    add-int/lit8 v19, v4, 0x4

    .line 43
    aput v2, v14, v19

    add-int/lit8 v20, v4, 0x5

    .line 44
    aput v9, v14, v20

    add-int/lit8 v21, v4, 0x6

    .line 45
    aput v9, v14, v21

    add-int/lit8 v22, v4, 0x7

    .line 46
    aput v2, v14, v22

    add-int/lit8 v2, v4, 0x8

    .line 47
    aput v9, v14, v2

    add-int/lit8 v23, v4, 0x9

    .line 48
    aput v1, v14, v23

    add-int/lit8 v1, v4, 0xa

    .line 49
    aput v9, v14, v1

    add-int/lit8 v4, v4, 0xb

    .line 50
    aput v9, v14, v4

    mul-int/lit8 v24, v17, 0x6

    add-int/lit8 v9, v24, 0x0

    int-to-short v9, v9

    .line 51
    aput-short v9, v18, v0

    add-int/lit8 v0, v24, 0x3

    int-to-short v0, v0

    .line 52
    aput-short v0, v18, v3

    add-int/lit8 v0, v24, 0x4

    int-to-short v0, v0

    .line 53
    aput-short v0, v18, v5

    .line 54
    aput-short v0, v18, v15

    add-int/lit8 v3, v24, 0x1

    int-to-short v3, v3

    .line 55
    aput-short v3, v18, v19

    .line 56
    aput-short v9, v18, v20

    .line 57
    aput-short v3, v18, v21

    .line 58
    aput-short v0, v18, v22

    add-int/lit8 v0, v24, 0x5

    int-to-short v0, v0

    .line 59
    aput-short v0, v18, v2

    .line 60
    aput-short v0, v18, v23

    add-int/lit8 v0, v24, 0x2

    int-to-short v0, v0

    .line 61
    aput-short v0, v18, v1

    .line 62
    aput-short v3, v18, v4

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v5, v18

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x3

    goto/16 :goto_0

    :cond_0
    move-object/from16 v18, v5

    .line 63
    new-instance v0, Lcom/smartisanos/smengine/y;

    invoke-direct {v0}, Lcom/smartisanos/smengine/y;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 p0, v0

    move-object/from16 p1, v12

    move-object/from16 p2, v14

    move-object/from16 p3, v18

    move-object/from16 p4, v1

    move/from16 p5, v2

    .line 64
    invoke-virtual/range {p0 .. p5}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    return-object v0
.end method

.method private static a(FFIFFF)Lcom/smartisanos/smengine/y;
    .locals 26

    move/from16 v6, p0

    move/from16 v7, p2

    .line 65
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v0

    add-float/2addr v1, v6

    int-to-float v0, v0

    div-float v8, v1, v0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v0, v9, v8

    mul-float v10, v0, p5

    const v0, 0x3e3851ec    # 0.18f

    mul-float v11, v6, v0

    mul-int/lit8 v0, v7, 0x6

    mul-int/lit8 v1, v0, 0x3

    .line 66
    new-array v12, v1, [F

    const/4 v13, 0x2

    mul-int/2addr v0, v13

    .line 67
    new-array v14, v0, [F

    mul-int/lit8 v0, v7, 0x4

    const/4 v15, 0x3

    mul-int/2addr v0, v15

    .line 68
    new-array v5, v0, [S

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_0
    if-ge v4, v7, :cond_0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v2, v4

    mul-double/2addr v2, v0

    mul-int/lit8 v0, v7, 0x3

    int-to-double v0, v0

    div-double/2addr v2, v0

    double-to-float v2, v2

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v17, v4

    move/from16 v4, p4

    move-object/from16 v18, v5

    move/from16 v5, p5

    .line 69
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/a/y;->d(FFFFFF)[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    mul-int/lit8 v4, v17, 0x12

    add-int/lit8 v1, v4, 0x0

    .line 70
    aget-object v2, v0, v16

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v2, v11

    mul-float/2addr v2, v8

    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x1

    .line 71
    aget-object v2, v0, v16

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v11

    mul-float/2addr v2, v8

    add-float/2addr v2, v10

    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x2

    neg-float v2, v6

    .line 72
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x3

    const/4 v3, 0x1

    .line 73
    aget-object v5, v0, v3

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v5, v8

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x4

    .line 74
    aget-object v5, v0, v3

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x5

    .line 75
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x6

    .line 76
    aget-object v5, v0, v13

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v5, v11

    mul-float/2addr v5, v8

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x7

    .line 77
    aget-object v5, v0, v13

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x8

    .line 78
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x9

    .line 79
    aget-object v5, v0, v15

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0xa

    .line 80
    aget-object v5, v0, v15

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0xb

    .line 81
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0xc

    const/4 v5, 0x4

    .line 82
    aget-object v15, v0, v5

    iget v15, v15, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v15, v8

    aput v15, v12, v1

    add-int/lit8 v1, v4, 0xd

    .line 83
    aget-object v5, v0, v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0xe

    .line 84
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0xf

    const/4 v5, 0x5

    .line 85
    aget-object v15, v0, v5

    iget v15, v15, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v15, v11

    mul-float/2addr v15, v8

    aput v15, v12, v1

    add-int/lit8 v1, v4, 0x10

    .line 86
    aget-object v15, v0, v5

    iget v15, v15, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v15, v11

    mul-float/2addr v15, v8

    add-float/2addr v15, v10

    aput v15, v12, v1

    add-int/lit8 v4, v4, 0x11

    .line 87
    aput v2, v12, v4

    mul-int/lit8 v4, v17, 0xc

    .line 88
    aget-object v1, v0, v3

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v2, v0, v16

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v1, v2

    add-float/2addr v1, v11

    aget-object v2, v0, v13

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v0, v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v11

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    add-int/lit8 v0, v4, 0x0

    const/4 v2, 0x0

    .line 89
    aput v2, v14, v0

    add-int/lit8 v3, v4, 0x1

    .line 90
    aput v2, v14, v3

    add-int/lit8 v15, v4, 0x2

    .line 91
    aput v1, v14, v15

    add-int/lit8 v19, v4, 0x3

    .line 92
    aput v2, v14, v19

    add-int/lit8 v20, v4, 0x4

    .line 93
    aput v9, v14, v20

    add-int/lit8 v21, v4, 0x5

    .line 94
    aput v2, v14, v21

    add-int/lit8 v22, v4, 0x6

    .line 95
    aput v2, v14, v22

    add-int/lit8 v2, v4, 0x7

    .line 96
    aput v9, v14, v2

    add-int/lit8 v23, v4, 0x8

    .line 97
    aput v1, v14, v23

    add-int/lit8 v1, v4, 0x9

    .line 98
    aput v9, v14, v1

    add-int/lit8 v24, v4, 0xa

    .line 99
    aput v9, v14, v24

    add-int/lit8 v4, v4, 0xb

    .line 100
    aput v9, v14, v4

    mul-int/lit8 v25, v17, 0x6

    add-int/lit8 v9, v25, 0x0

    int-to-short v9, v9

    .line 101
    aput-short v9, v18, v0

    add-int/lit8 v0, v25, 0x1

    int-to-short v0, v0

    .line 102
    aput-short v0, v18, v3

    add-int/lit8 v3, v25, 0x4

    int-to-short v3, v3

    .line 103
    aput-short v3, v18, v15

    .line 104
    aput-short v3, v18, v19

    add-int/lit8 v15, v25, 0x3

    int-to-short v15, v15

    .line 105
    aput-short v15, v18, v20

    .line 106
    aput-short v9, v18, v21

    .line 107
    aput-short v0, v18, v22

    add-int/lit8 v9, v25, 0x2

    int-to-short v9, v9

    .line 108
    aput-short v9, v18, v2

    add-int/lit8 v2, v25, 0x5

    int-to-short v2, v2

    .line 109
    aput-short v2, v18, v23

    .line 110
    aput-short v2, v18, v1

    .line 111
    aput-short v3, v18, v24

    .line 112
    aput-short v0, v18, v4

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v5, v18

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x3

    goto/16 :goto_0

    :cond_0
    move-object/from16 v18, v5

    .line 113
    new-instance v0, Lcom/smartisanos/smengine/y;

    invoke-direct {v0}, Lcom/smartisanos/smengine/y;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 p0, v0

    move-object/from16 p1, v12

    move-object/from16 p2, v14

    move-object/from16 p3, v18

    move-object/from16 p4, v1

    move/from16 p5, v2

    .line 114
    invoke-virtual/range {p0 .. p5}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/a/y;
    .locals 9

    .line 2
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v0

    add-float/2addr v1, p1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/animations/a/y;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/smartisanos/launcher/animations/a/y;-><init>(Ljava/lang/String;IF)V

    move v3, p1

    move v4, p2

    move v5, p5

    move v6, p3

    move v7, p4

    move v8, p6

    .line 4
    invoke-static/range {v3 .. v8}, Lcom/smartisanos/launcher/animations/a/y;->a(FFIFFF)Lcom/smartisanos/smengine/y;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    const-string p0, "DrawMultiTimesMaterial"

    .line 6
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->setDepthTestFunc(I)V

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->Da(Z)V

    const/4 p0, 0x2

    .line 14
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const-string p0, "page_scroll_louver_v.png"

    .line 15
    invoke-static {p0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 18
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, v0

    .line 19
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v1

    .line 20
    iget-object v2, v1, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v2, v3, p1, v0}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 22
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/a/j;->y(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    .line 23
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    neg-float v0, v0

    .line 24
    iget v2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    div-float/2addr v0, v2

    .line 25
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/a/j;->ca(F)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/j;->m(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 26
    invoke-virtual {v1}, Lcom/smartisanos/smengine/d/f;->release()V

    return-object p0
.end method

.method private static b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 16
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move-object p0, p1

    .line 17
    :cond_0
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    move-object p0, p2

    :cond_1
    return-object p0
.end method

.method private static c(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 37
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move-object p0, p1

    .line 38
    :cond_0
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    move-object p0, p2

    :cond_1
    return-object p0
.end method

.method private static c(FFFFFF)[Lcom/smartisanos/smengine/a/j;
    .locals 23

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    float-to-double v3, v3

    const-wide v5, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 1
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    double-to-float v3, v3

    float-to-double v7, v1

    .line 2
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v7, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v4

    double-to-float v1, v7

    move/from16 v4, p2

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v6, v4

    double-to-float v6, v6

    neg-float v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v7, v7, p3

    float-to-double v9, v3

    float-to-double v11, v6

    .line 3
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    double-to-float v3, v13

    add-float v3, v3, p4

    add-float/2addr v3, v2

    .line 4
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    move-wide v15, v9

    float-to-double v8, v1

    sub-double/2addr v13, v8

    double-to-float v1, v13

    const-wide v13, 0x3ff0c152382d7365L    # 1.0471975511965976

    sub-double/2addr v13, v4

    double-to-float v6, v13

    float-to-double v13, v6

    .line 5
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v19, v11

    mul-double v10, v15, v17

    double-to-float v6, v10

    add-float v6, v6, p4

    add-float/2addr v6, v2

    .line 6
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v15

    sub-double/2addr v10, v8

    double-to-float v10, v10

    const-wide v11, -0x400f3eadc7d28c9bL    # -1.0471975511965976

    sub-double/2addr v11, v4

    double-to-float v4, v11

    float-to-double v4, v4

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v15

    double-to-float v11, v11

    add-float v11, v11, p4

    add-float/2addr v11, v2

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v15

    move-wide/from16 v21, v4

    sub-double v4, v17, v8

    double-to-float v4, v4

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/smartisanos/smengine/a/j;

    .line 9
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12, v7, v3, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v12, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 10
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3, v7, v6, v10}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v3, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 11
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6, v7, v11, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v6, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 12
    invoke-static {v1, v3, v4}, Lcom/smartisanos/launcher/animations/a/y;->e(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 13
    invoke-static {v1, v3, v4}, Lcom/smartisanos/launcher/animations/a/y;->c(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    const/4 v10, 0x2

    aput-object v6, v5, v10

    .line 14
    aget-object v6, v5, v7

    const/4 v11, 0x1

    if-eq v1, v6, :cond_0

    aget-object v6, v5, v10

    if-eq v1, v6, :cond_0

    aput-object v1, v5, v11

    goto :goto_0

    .line 15
    :cond_0
    aget-object v1, v5, v7

    if-eq v3, v1, :cond_1

    aget-object v1, v5, v10

    if-eq v3, v1, :cond_1

    aput-object v3, v5, v11

    goto :goto_0

    :cond_1
    aput-object v4, v5, v11

    .line 16
    :goto_0
    aget-object v1, v5, v11

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v3, v5, v7

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v1, v3

    aget-object v3, v5, v10

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v4, v5, v7

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    .line 17
    aget-object v3, v5, v7

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v4, v5, v10

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v6, v5, v7

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 18
    aget-object v1, v5, v11

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 19
    aget-object v1, v5, v11

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v0, v0, p3

    .line 20
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v15

    double-to-float v1, v3

    add-float v1, v1, p4

    add-float/2addr v1, v2

    .line 21
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v15

    sub-double/2addr v3, v8

    double-to-float v3, v3

    .line 22
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v15

    double-to-float v4, v6

    add-float v4, v4, p4

    add-float/2addr v4, v2

    .line 23
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v15

    sub-double/2addr v6, v8

    double-to-float v6, v6

    .line 24
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v15

    double-to-float v7, v10

    add-float v7, v7, p4

    add-float/2addr v7, v2

    .line 25
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v15

    sub-double/2addr v10, v8

    double-to-float v8, v10

    .line 26
    new-instance v9, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v9, v0, v1, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v9, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 27
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3, v0, v4, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v3, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 28
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4, v0, v7, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v4, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 29
    invoke-static {v1, v3, v0}, Lcom/smartisanos/launcher/animations/a/y;->e(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v5, v4

    .line 30
    invoke-static {v1, v3, v0}, Lcom/smartisanos/launcher/animations/a/y;->c(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v5, v6

    .line 31
    aget-object v2, v5, v4

    const/4 v7, 0x4

    if-eq v1, v2, :cond_3

    aget-object v2, v5, v6

    if-eq v1, v2, :cond_3

    aput-object v1, v5, v7

    goto :goto_1

    .line 32
    :cond_3
    aget-object v1, v5, v4

    if-eq v3, v1, :cond_4

    aget-object v1, v5, v6

    if-eq v3, v1, :cond_4

    aput-object v3, v5, v7

    goto :goto_1

    :cond_4
    aput-object v0, v5, v7

    .line 33
    :goto_1
    aget-object v0, v5, v7

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v1, v5, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v0, v1

    aget-object v1, v5, v6

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v2, v5, v4

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 34
    aget-object v1, v5, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v2, v5, v6

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v3, v5, v4

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 35
    aget-object v0, v5, v7

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 36
    aget-object v0, v5, v7

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    :cond_5
    return-object v5
.end method

.method private static d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 37
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move-object p0, p1

    .line 38
    :cond_0
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    move-object p0, p2

    :cond_1
    return-object p0
.end method

.method private static d(FFFFFF)[Lcom/smartisanos/smengine/a/j;
    .locals 24

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    float-to-double v3, v3

    const-wide v5, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 1
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    double-to-float v3, v3

    float-to-double v7, v0

    .line 2
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    double-to-float v0, v7

    move/from16 v4, p2

    float-to-double v7, v4

    const-wide v9, 0x4012d97c7f3321d2L    # 4.71238898038469

    sub-double/2addr v9, v7

    double-to-float v4, v9

    float-to-double v9, v3

    float-to-double v3, v4

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    double-to-float v11, v11

    add-float v11, v11, p3

    neg-float v12, v1

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float v12, v12, p4

    add-float/2addr v12, v2

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v9

    float-to-double v5, v0

    sub-double/2addr v14, v5

    double-to-float v0, v14

    const-wide v14, 0x4004f1a6c638d03eL    # 2.617993877991494

    sub-double/2addr v14, v7

    double-to-float v14, v14

    float-to-double v14, v14

    .line 5
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v20, v14

    mul-double v13, v9, v18

    double-to-float v13, v13

    add-float v13, v13, p3

    .line 6
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v9

    sub-double/2addr v14, v5

    double-to-float v14, v14

    const-wide v15, 0x3fe0c152382d7365L    # 0.5235987755982988

    sub-double v7, v15, v7

    double-to-float v7, v7

    float-to-double v7, v7

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    move-wide/from16 v17, v3

    mul-double v3, v9, v15

    double-to-float v3, v3

    add-float v3, v3, p3

    .line 8
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v9

    move-wide/from16 v22, v7

    sub-double v7, v15, v5

    double-to-float v4, v7

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/smartisanos/smengine/a/j;

    .line 9
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8, v11, v12, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v8, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 10
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8, v13, v12, v14}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v8, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 11
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v3, v12, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v11, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 12
    invoke-static {v0, v8, v3}, Lcom/smartisanos/launcher/animations/a/y;->d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v7, v11

    .line 13
    invoke-static {v0, v8, v3}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v7, v12

    .line 14
    aget-object v4, v7, v11

    const/4 v13, 0x1

    if-eq v0, v4, :cond_0

    aget-object v4, v7, v12

    if-eq v0, v4, :cond_0

    aput-object v0, v7, v13

    goto :goto_0

    .line 15
    :cond_0
    aget-object v0, v7, v11

    if-eq v8, v0, :cond_1

    aget-object v0, v7, v12

    if-eq v8, v0, :cond_1

    aput-object v8, v7, v13

    goto :goto_0

    :cond_1
    aput-object v3, v7, v13

    .line 16
    :goto_0
    aget-object v0, v7, v13

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v3, v7, v11

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v0, v3

    aget-object v3, v7, v12

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v4, v7, v11

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v3, v4

    div-float/2addr v0, v3

    .line 17
    aget-object v3, v7, v11

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v4, v7, v12

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v8, v7, v11

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v4, v8

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    .line 18
    aget-object v0, v7, v13

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 19
    aget-object v0, v7, v13

    iput v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 20
    :cond_2
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    double-to-float v0, v3

    add-float v0, v0, p3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float v1, v1, p4

    add-float/2addr v1, v2

    .line 21
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    sub-double/2addr v3, v5

    double-to-float v3, v3

    .line 22
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    double-to-float v4, v11

    add-float v4, v4, p3

    .line 23
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    sub-double/2addr v11, v5

    double-to-float v8, v11

    .line 24
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    double-to-float v11, v11

    add-float v11, v11, p3

    .line 25
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v9, v12

    sub-double/2addr v9, v5

    double-to-float v5, v9

    .line 26
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6, v0, v1, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v6, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 27
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3, v4, v1, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v3, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 28
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4, v11, v1, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v4, v2}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 29
    invoke-static {v0, v3, v1}, Lcom/smartisanos/launcher/animations/a/y;->d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v7, v4

    .line 30
    invoke-static {v0, v3, v1}, Lcom/smartisanos/launcher/animations/a/y;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v7, v5

    .line 31
    aget-object v2, v7, v4

    const/4 v6, 0x4

    if-eq v0, v2, :cond_3

    aput-object v0, v7, v6

    goto :goto_1

    .line 32
    :cond_3
    aget-object v0, v7, v5

    if-eq v3, v0, :cond_4

    aput-object v3, v7, v6

    goto :goto_1

    :cond_4
    aput-object v1, v7, v6

    .line 33
    :goto_1
    aget-object v0, v7, v6

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v1, v7, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v0, v1

    aget-object v1, v7, v5

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v2, v7, v4

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 34
    aget-object v1, v7, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v2, v7, v5

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v3, v7, v4

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 35
    aget-object v0, v7, v6

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 36
    aget-object v0, v7, v6

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    :cond_5
    return-object v7
.end method

.method private static e(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 1
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move-object p0, p1

    .line 2
    :cond_0
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    move-object p0, p2

    :cond_1
    return-object p0
.end method


# virtual methods
.method public Wa(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/y;->RG:[I

    aget p0, p0, p1

    return p0
.end method

.method public Xa(I)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/y;->PG:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public Yk()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/a/y;->QG:I

    return p0
.end method

.method public b(ILcom/smartisanos/smengine/a/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/y;->PG:[Lcom/smartisanos/smengine/a/j;

    iget p0, p0, Lcom/smartisanos/launcher/animations/a/y;->mScale:F

    invoke-virtual {p2, p0}, Lcom/smartisanos/smengine/a/j;->ca(F)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    aput-object p0, v0, p1

    return-void
.end method

.method public r(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/y;->RG:[I

    aput p2, p0, p1

    return-void
.end method
