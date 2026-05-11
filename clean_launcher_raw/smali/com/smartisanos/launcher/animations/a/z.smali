.class public Lcom/smartisanos/launcher/animations/a/z;
.super Lcom/smartisanos/smengine/SceneNode;
.source "PageScrollShadowRotatePage.java"


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

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/z;->PG:[Lcom/smartisanos/smengine/a/j;

    .line 3
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/z;->RG:[I

    .line 4
    iput p2, p0, Lcom/smartisanos/launcher/animations/a/z;->QG:I

    .line 5
    iput p3, p0, Lcom/smartisanos/launcher/animations/a/z;->mScale:F

    return-void
.end method

.method public static a(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/a/z;
    .locals 3

    .line 1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v0

    add-float/2addr v1, p2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/animations/a/z;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/smartisanos/launcher/animations/a/z;-><init>(Ljava/lang/String;IF)V

    .line 3
    invoke-static/range {p1 .. p6}, Lcom/smartisanos/launcher/animations/a/z;->a(FFFFIF)Lcom/smartisanos/smengine/y;

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

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->Da(Z)V

    const/4 p0, 0x2

    .line 12
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const-string p0, "page_scroll_rotate_page.png"

    .line 13
    invoke-static {p0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(FFFFIF)Lcom/smartisanos/smengine/y;
    .locals 27

    move/from16 v6, p1

    move/from16 v7, p4

    .line 14
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v0

    add-float/2addr v1, v6

    int-to-float v0, v0

    div-float v8, v1, v0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v0, v9, v8

    mul-float v10, v0, p5

    const v0, 0x3d75c28f    # 0.06f

    mul-float v11, p0, v0

    const v0, 0x3da3d70a    # 0.08f

    mul-float v12, p0, v0

    mul-int/lit8 v0, v7, 0x6

    mul-int/lit8 v1, v0, 0x3

    .line 15
    new-array v13, v1, [F

    const/4 v14, 0x2

    mul-int/2addr v0, v14

    .line 16
    new-array v15, v0, [F

    mul-int/lit8 v0, v7, 0x4

    const/16 v16, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 17
    new-array v5, v0, [S

    const/16 v17, 0x0

    move/from16 v4, v17

    :goto_0
    if-ge v4, v7, :cond_0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    int-to-double v2, v4

    mul-double/2addr v2, v0

    mul-int/lit8 v0, v7, 0x2

    int-to-double v0, v0

    div-double/2addr v2, v0

    double-to-float v2, v2

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p2

    move/from16 v18, v4

    move/from16 v4, p3

    move-object/from16 v19, v5

    move/from16 v5, p5

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/a/z;->c(FFFFFF)[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    mul-int/lit8 v4, v18, 0x12

    add-int/lit8 v1, v4, 0x0

    .line 19
    aget-object v2, v0, v17

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v2, v11

    mul-float/2addr v2, v8

    aput v2, v13, v1

    add-int/lit8 v1, v4, 0x1

    .line 20
    aget-object v2, v0, v17

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v12

    mul-float/2addr v2, v8

    add-float/2addr v2, v10

    aput v2, v13, v1

    add-int/lit8 v1, v4, 0x2

    neg-float v2, v6

    .line 21
    aput v2, v13, v1

    add-int/lit8 v1, v4, 0x3

    const/4 v3, 0x1

    .line 22
    aget-object v5, v0, v3

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    aput v5, v13, v1

    add-int/lit8 v1, v4, 0x4

    .line 23
    aget-object v5, v0, v3

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v13, v1

    add-int/lit8 v1, v4, 0x5

    .line 24
    aput v2, v13, v1

    add-int/lit8 v1, v4, 0x6

    .line 25
    aget-object v5, v0, v14

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    aput v5, v13, v1

    add-int/lit8 v1, v4, 0x7

    .line 26
    aget-object v5, v0, v14

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v5, v12

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v13, v1

    add-int/lit8 v1, v4, 0x8

    .line 27
    aput v2, v13, v1

    add-int/lit8 v1, v4, 0x9

    .line 28
    aget-object v5, v0, v16

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v5, v11

    mul-float/2addr v5, v8

    aput v5, v13, v1

    add-int/lit8 v1, v4, 0xa

    .line 29
    aget-object v5, v0, v16

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v5, v12

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v13, v1

    add-int/lit8 v1, v4, 0xb

    .line 30
    aput v2, v13, v1

    add-int/lit8 v1, v4, 0xc

    const/4 v5, 0x4

    .line 31
    aget-object v9, v0, v5

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v9, v11

    mul-float/2addr v9, v8

    aput v9, v13, v1

    add-int/lit8 v1, v4, 0xd

    .line 32
    aget-object v5, v0, v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v13, v1

    add-int/lit8 v1, v4, 0xe

    .line 33
    aput v2, v13, v1

    add-int/lit8 v1, v4, 0xf

    const/4 v5, 0x5

    .line 34
    aget-object v9, v0, v5

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v9, v11

    mul-float/2addr v9, v8

    aput v9, v13, v1

    add-int/lit8 v1, v4, 0x10

    .line 35
    aget-object v5, v0, v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v5, v12

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v13, v1

    add-int/lit8 v4, v4, 0x11

    .line 36
    aput v2, v13, v4

    mul-int/lit8 v4, v18, 0xc

    .line 37
    aget-object v1, v0, v3

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v2, v0, v17

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v1, v2

    add-float/2addr v1, v12

    aget-object v2, v0, v14

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v0, v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v12

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    add-int/lit8 v0, v4, 0x0

    const/4 v2, 0x0

    .line 38
    aput v2, v15, v0

    add-int/lit8 v3, v4, 0x1

    .line 39
    aput v2, v15, v3

    add-int/lit8 v5, v4, 0x2

    .line 40
    aput v2, v15, v5

    add-int/lit8 v9, v4, 0x3

    .line 41
    aput v1, v15, v9

    add-int/lit8 v21, v4, 0x4

    .line 42
    aput v2, v15, v21

    add-int/lit8 v22, v4, 0x5

    const/high16 v20, 0x3f800000    # 1.0f

    .line 43
    aput v20, v15, v22

    add-int/lit8 v23, v4, 0x6

    .line 44
    aput v20, v15, v23

    add-int/lit8 v24, v4, 0x7

    .line 45
    aput v2, v15, v24

    add-int/lit8 v2, v4, 0x8

    .line 46
    aput v20, v15, v2

    add-int/lit8 v25, v4, 0x9

    .line 47
    aput v1, v15, v25

    add-int/lit8 v1, v4, 0xa

    .line 48
    aput v20, v15, v1

    add-int/lit8 v4, v4, 0xb

    .line 49
    aput v20, v15, v4

    mul-int/lit8 v26, v18, 0x6

    add-int/lit8 v14, v26, 0x0

    int-to-short v14, v14

    .line 50
    aput-short v14, v19, v0

    add-int/lit8 v0, v26, 0x3

    int-to-short v0, v0

    .line 51
    aput-short v0, v19, v3

    add-int/lit8 v0, v26, 0x4

    int-to-short v0, v0

    .line 52
    aput-short v0, v19, v5

    .line 53
    aput-short v0, v19, v9

    add-int/lit8 v3, v26, 0x1

    int-to-short v3, v3

    .line 54
    aput-short v3, v19, v21

    .line 55
    aput-short v14, v19, v22

    .line 56
    aput-short v3, v19, v23

    .line 57
    aput-short v0, v19, v24

    add-int/lit8 v0, v26, 0x5

    int-to-short v0, v0

    .line 58
    aput-short v0, v19, v2

    .line 59
    aput-short v0, v19, v25

    const/4 v0, 0x2

    add-int/lit8 v2, v26, 0x2

    int-to-short v2, v2

    .line 60
    aput-short v2, v19, v1

    .line 61
    aput-short v3, v19, v4

    add-int/lit8 v4, v18, 0x1

    move v14, v0

    move-object/from16 v5, v19

    move/from16 v9, v20

    goto/16 :goto_0

    :cond_0
    move-object/from16 v19, v5

    .line 62
    new-instance v0, Lcom/smartisanos/smengine/y;

    invoke-direct {v0}, Lcom/smartisanos/smengine/y;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 p0, v0

    move-object/from16 p1, v13

    move-object/from16 p2, v15

    move-object/from16 p3, v19

    move-object/from16 p4, v1

    move/from16 p5, v2

    .line 63
    invoke-virtual/range {p0 .. p5}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    return-object v0
.end method

.method private static a(FFIFFF)Lcom/smartisanos/smengine/y;
    .locals 26

    move/from16 v6, p0

    move/from16 v7, p2

    .line 64
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v0

    add-float/2addr v1, v6

    int-to-float v0, v0

    div-float v8, v1, v0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v0, v9, v8

    mul-float v10, v0, p5

    const v0, 0x3da3d70a    # 0.08f

    mul-float v11, v6, v0

    mul-int/lit8 v0, v7, 0x6

    mul-int/lit8 v1, v0, 0x3

    .line 65
    new-array v12, v1, [F

    const/4 v13, 0x2

    mul-int/2addr v0, v13

    .line 66
    new-array v14, v0, [F

    mul-int/lit8 v0, v7, 0x4

    const/4 v15, 0x3

    mul-int/2addr v0, v15

    .line 67
    new-array v5, v0, [S

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_0
    if-ge v4, v7, :cond_0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    int-to-double v2, v4

    mul-double/2addr v2, v0

    mul-int/lit8 v0, v7, 0x2

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

    .line 68
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/a/z;->d(FFFFFF)[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    mul-int/lit8 v4, v17, 0x12

    add-int/lit8 v1, v4, 0x0

    .line 69
    aget-object v2, v0, v16

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v2, v11

    mul-float/2addr v2, v8

    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x1

    .line 70
    aget-object v2, v0, v16

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v11

    mul-float/2addr v2, v8

    add-float/2addr v2, v10

    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x2

    neg-float v2, v6

    .line 71
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x3

    const/4 v3, 0x1

    .line 72
    aget-object v5, v0, v3

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v5, v8

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x4

    .line 73
    aget-object v5, v0, v3

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x5

    .line 74
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x6

    .line 75
    aget-object v5, v0, v13

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v5, v11

    mul-float/2addr v5, v8

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x7

    .line 76
    aget-object v5, v0, v13

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0x8

    .line 77
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0x9

    .line 78
    aget-object v5, v0, v15

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v8

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0xa

    .line 79
    aget-object v5, v0, v15

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0xb

    .line 80
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0xc

    const/4 v5, 0x4

    .line 81
    aget-object v15, v0, v5

    iget v15, v15, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v15, v8

    aput v15, v12, v1

    add-int/lit8 v1, v4, 0xd

    .line 82
    aget-object v5, v0, v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v5, v11

    mul-float/2addr v5, v8

    add-float/2addr v5, v10

    aput v5, v12, v1

    add-int/lit8 v1, v4, 0xe

    .line 83
    aput v2, v12, v1

    add-int/lit8 v1, v4, 0xf

    const/4 v5, 0x5

    .line 84
    aget-object v15, v0, v5

    iget v15, v15, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v15, v11

    mul-float/2addr v15, v8

    aput v15, v12, v1

    add-int/lit8 v1, v4, 0x10

    .line 85
    aget-object v15, v0, v5

    iget v15, v15, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v15, v11

    mul-float/2addr v15, v8

    add-float/2addr v15, v10

    aput v15, v12, v1

    add-int/lit8 v4, v4, 0x11

    .line 86
    aput v2, v12, v4

    mul-int/lit8 v4, v17, 0xc

    .line 87
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

    .line 88
    aput v2, v14, v0

    add-int/lit8 v3, v4, 0x1

    .line 89
    aput v2, v14, v3

    add-int/lit8 v15, v4, 0x2

    .line 90
    aput v1, v14, v15

    add-int/lit8 v19, v4, 0x3

    .line 91
    aput v2, v14, v19

    add-int/lit8 v20, v4, 0x4

    .line 92
    aput v9, v14, v20

    add-int/lit8 v21, v4, 0x5

    .line 93
    aput v2, v14, v21

    add-int/lit8 v22, v4, 0x6

    .line 94
    aput v2, v14, v22

    add-int/lit8 v2, v4, 0x7

    .line 95
    aput v9, v14, v2

    add-int/lit8 v23, v4, 0x8

    .line 96
    aput v1, v14, v23

    add-int/lit8 v1, v4, 0x9

    .line 97
    aput v9, v14, v1

    add-int/lit8 v24, v4, 0xa

    .line 98
    aput v9, v14, v24

    add-int/lit8 v4, v4, 0xb

    .line 99
    aput v9, v14, v4

    mul-int/lit8 v25, v17, 0x6

    add-int/lit8 v9, v25, 0x0

    int-to-short v9, v9

    .line 100
    aput-short v9, v18, v0

    add-int/lit8 v0, v25, 0x1

    int-to-short v0, v0

    .line 101
    aput-short v0, v18, v3

    add-int/lit8 v3, v25, 0x4

    int-to-short v3, v3

    .line 102
    aput-short v3, v18, v15

    .line 103
    aput-short v3, v18, v19

    add-int/lit8 v15, v25, 0x3

    int-to-short v15, v15

    .line 104
    aput-short v15, v18, v20

    .line 105
    aput-short v9, v18, v21

    .line 106
    aput-short v0, v18, v22

    add-int/lit8 v9, v25, 0x2

    int-to-short v9, v9

    .line 107
    aput-short v9, v18, v2

    add-int/lit8 v2, v25, 0x5

    int-to-short v2, v2

    .line 108
    aput-short v2, v18, v23

    .line 109
    aput-short v2, v18, v1

    .line 110
    aput-short v3, v18, v24

    .line 111
    aput-short v0, v18, v4

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v5, v18

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x3

    goto/16 :goto_0

    :cond_0
    move-object/from16 v18, v5

    .line 112
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

    .line 113
    invoke-virtual/range {p0 .. p5}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/a/z;
    .locals 9

    .line 2
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v0

    add-float/2addr v1, p1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/animations/a/z;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/smartisanos/launcher/animations/a/z;-><init>(Ljava/lang/String;IF)V

    move v3, p1

    move v4, p2

    move v5, p5

    move v6, p3

    move v7, p4

    move v8, p6

    .line 4
    invoke-static/range {v3 .. v8}, Lcom/smartisanos/launcher/animations/a/z;->a(FFIFFF)Lcom/smartisanos/smengine/y;

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

    const-string p0, "page_scroll_rotate_page.png"

    .line 14
    invoke-static {p0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 17
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, v0

    .line 18
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v1

    .line 19
    iget-object v2, v1, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, v3, p1, v0}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 21
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/a/j;->y(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    .line 22
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    neg-float v0, v0

    .line 23
    iget v2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    div-float/2addr v0, v2

    .line 24
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/a/j;->ca(F)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/j;->m(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 25
    invoke-virtual {v1}, Lcom/smartisanos/smengine/d/f;->release()V

    return-object p0
.end method

.method private static b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 15
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p2, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    .line 16
    :goto_0
    iget p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method private static c(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 31
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move-object p0, p1

    .line 32
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
    .locals 20

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    float-to-double v5, v5

    mul-float v7, v2, v4

    mul-float/2addr v7, v1

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-float v5, v5

    neg-float v6, v0

    div-float/2addr v6, v4

    add-float v6, v6, p3

    float-to-double v7, v5

    float-to-double v9, v1

    float-to-double v11, v2

    .line 1
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    sub-double v13, v7, v13

    double-to-float v2, v13

    add-float v2, v2, p4

    add-float/2addr v2, v3

    neg-float v1, v1

    float-to-double v13, v1

    .line 2
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v0, v13, v15

    double-to-float v0, v0

    add-float v5, v5, p4

    add-float/2addr v5, v3

    .line 3
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v9

    move/from16 p1, v5

    add-double v4, v7, v15

    double-to-float v4, v4

    add-float v4, v4, p4

    add-float/2addr v4, v3

    .line 4
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    move/from16 p2, v2

    mul-double v1, v13, v15

    double-to-float v1, v1

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/smartisanos/smengine/a/j;

    .line 5
    new-instance v15, Lcom/smartisanos/smengine/a/j;

    move/from16 v5, p2

    invoke-direct {v15, v6, v5, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v15, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 6
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    const/4 v15, 0x0

    move-wide/from16 v17, v13

    move/from16 v13, p1

    invoke-direct {v5, v6, v13, v15}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v5, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 7
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v14, v6, v4, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v14, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 8
    invoke-static {v0, v5, v1}, Lcom/smartisanos/launcher/animations/a/z;->e(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    .line 9
    invoke-static {v0, v5, v1}, Lcom/smartisanos/launcher/animations/a/z;->c(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    const/4 v14, 0x2

    aput-object v4, v2, v14

    .line 10
    aget-object v4, v2, v6

    const/16 v19, 0x1

    if-eq v0, v4, :cond_0

    aget-object v4, v2, v14

    if-eq v0, v4, :cond_0

    aput-object v0, v2, v19

    goto :goto_0

    .line 11
    :cond_0
    aget-object v0, v2, v6

    if-eq v5, v0, :cond_1

    aget-object v0, v2, v14

    if-eq v5, v0, :cond_1

    aput-object v5, v2, v19

    goto :goto_0

    :cond_1
    aput-object v1, v2, v19

    .line 12
    :goto_0
    aget-object v0, v2, v19

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v1, v2, v6

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v0, v1

    aget-object v1, v2, v14

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v4, v2, v6

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v1, v4

    div-float/2addr v0, v1

    .line 13
    aget-object v1, v2, v6

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v4, v2, v14

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v5, v2, v6

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    .line 14
    aget-object v0, v2, v19

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 15
    aget-object v0, v2, v19

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p0, v0

    add-float v0, v0, p3

    .line 16
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v9

    sub-double v4, v7, v4

    double-to-float v1, v4

    add-float v1, v1, p4

    add-float/2addr v1, v3

    .line 17
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v17

    double-to-float v4, v4

    .line 18
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    double-to-float v5, v7

    add-float v5, v5, p4

    add-float/2addr v5, v3

    .line 19
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v17

    double-to-float v6, v6

    .line 20
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v0, v1, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v7, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 21
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4, v0, v13, v15}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v4, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 22
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v0, v5, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v7, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 23
    invoke-static {v1, v4, v0}, Lcom/smartisanos/launcher/animations/a/z;->e(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 24
    invoke-static {v1, v4, v0}, Lcom/smartisanos/launcher/animations/a/z;->c(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    const/4 v6, 0x5

    aput-object v3, v2, v6

    .line 25
    aget-object v3, v2, v5

    const/4 v7, 0x4

    if-eq v1, v3, :cond_3

    aget-object v3, v2, v6

    if-eq v1, v3, :cond_3

    aput-object v1, v2, v7

    goto :goto_1

    .line 26
    :cond_3
    aget-object v1, v2, v5

    if-eq v4, v1, :cond_4

    aget-object v1, v2, v6

    if-eq v4, v1, :cond_4

    aput-object v4, v2, v7

    goto :goto_1

    :cond_4
    aput-object v0, v2, v7

    .line 27
    :goto_1
    aget-object v0, v2, v7

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v1, v2, v5

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v0, v1

    aget-object v1, v2, v6

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v3, v2, v5

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v1, v3

    div-float/2addr v0, v1

    .line 28
    aget-object v1, v2, v5

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v3, v2, v6

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v4, v2, v5

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    .line 29
    aget-object v0, v2, v7

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 30
    aget-object v0, v2, v7

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    :cond_5
    return-object v2
.end method

.method private static d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 31
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move-object p0, p1

    .line 32
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
    .locals 19

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    neg-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    float-to-double v6, v6

    mul-float v8, v2, v5

    mul-float/2addr v8, v0

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v7, v6

    float-to-double v9, v0

    float-to-double v11, v2

    .line 1
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    sub-double v13, v7, v13

    double-to-float v0, v13

    add-float v0, v0, p3

    neg-float v2, v1

    div-float/2addr v2, v5

    add-float v2, v2, p4

    add-float/2addr v2, v3

    float-to-double v13, v4

    .line 2
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v4, v13, v15

    double-to-float v4, v4

    add-float v6, v6, p3

    .line 3
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v9

    move-wide/from16 v17, v9

    add-double v9, v7, v15

    double-to-float v5, v9

    add-float v5, v5, p3

    .line 4
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v13

    double-to-float v9, v9

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/smartisanos/smengine/a/j;

    .line 5
    new-instance v15, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v15, v0, v2, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v15, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 6
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    const/4 v15, 0x0

    invoke-direct {v4, v6, v2, v15}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v4, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 7
    new-instance v15, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v15, v5, v2, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v15, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 8
    invoke-static {v0, v4, v2}, Lcom/smartisanos/launcher/animations/a/z;->d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v10, v9

    .line 9
    invoke-static {v0, v4, v2}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    const/4 v15, 0x2

    aput-object v5, v10, v15

    .line 10
    aget-object v5, v10, v9

    const/16 v16, 0x1

    if-eq v0, v5, :cond_0

    aget-object v5, v10, v15

    if-eq v0, v5, :cond_0

    aput-object v0, v10, v16

    goto :goto_0

    .line 11
    :cond_0
    aget-object v0, v10, v9

    if-eq v4, v0, :cond_1

    aget-object v0, v10, v15

    if-eq v4, v0, :cond_1

    aput-object v4, v10, v16

    goto :goto_0

    :cond_1
    aput-object v2, v10, v16

    .line 12
    :goto_0
    aget-object v0, v10, v16

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v2, v10, v9

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v0, v2

    aget-object v2, v10, v15

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v4, v10, v9

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v2, v4

    div-float/2addr v0, v2

    .line 13
    aget-object v2, v10, v9

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v4, v10, v15

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v5, v10, v9

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    .line 14
    aget-object v0, v10, v16

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 15
    aget-object v0, v10, v16

    iput v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 16
    :cond_2
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v17

    sub-double v4, v7, v4

    double-to-float v0, v4

    add-float v0, v0, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v1, v1, p4

    add-float/2addr v1, v3

    .line 17
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v13

    double-to-float v2, v4

    .line 18
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v17

    add-double/2addr v7, v4

    double-to-float v4, v7

    add-float v4, v4, p3

    .line 19
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v13, v7

    double-to-float v5, v13

    .line 20
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v0, v1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v7, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 21
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    const/4 v7, 0x0

    invoke-direct {v2, v6, v1, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 22
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6, v4, v1, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-static {v6, v3}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 23
    invoke-static {v0, v2, v1}, Lcom/smartisanos/launcher/animations/a/z;->d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v10, v4

    .line 24
    invoke-static {v0, v2, v1}, Lcom/smartisanos/launcher/animations/a/z;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v10, v5

    .line 25
    aget-object v3, v10, v4

    const/4 v6, 0x4

    if-eq v0, v3, :cond_3

    aget-object v3, v10, v5

    if-eq v0, v3, :cond_3

    aput-object v0, v10, v6

    goto :goto_1

    .line 26
    :cond_3
    aget-object v0, v10, v4

    if-eq v2, v0, :cond_4

    aget-object v0, v10, v5

    if-eq v2, v0, :cond_4

    aput-object v2, v10, v6

    goto :goto_1

    :cond_4
    aput-object v1, v10, v6

    .line 27
    :goto_1
    aget-object v0, v10, v6

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v1, v10, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v0, v1

    aget-object v1, v10, v5

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v2, v10, v4

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 28
    aget-object v1, v10, v4

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v2, v10, v5

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v3, v10, v4

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 29
    aget-object v0, v10, v6

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 30
    aget-object v0, v10, v6

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    :cond_5
    return-object v10
.end method

.method private static e(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    .line 2
    :goto_0
    iget p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    move-object p0, p1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public Wa(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/z;->RG:[I

    aget p0, p0, p1

    return p0
.end method

.method public Xa(I)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/z;->PG:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public Yk()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/a/z;->QG:I

    return p0
.end method

.method public b(ILcom/smartisanos/smengine/a/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/z;->PG:[Lcom/smartisanos/smengine/a/j;

    iget p0, p0, Lcom/smartisanos/launcher/animations/a/z;->mScale:F

    invoke-virtual {p2, p0}, Lcom/smartisanos/smengine/a/j;->ca(F)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    aput-object p0, v0, p1

    return-void
.end method

.method public r(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/z;->RG:[I

    aput p2, p0, p1

    return-void
.end method
