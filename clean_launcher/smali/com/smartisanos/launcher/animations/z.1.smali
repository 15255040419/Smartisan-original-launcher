.class public Lcom/smartisanos/launcher/animations/z;
.super Lcom/smartisanos/smengine/c;
.source "CellConvertAnimation.java"

# interfaces
.implements Laurelienribon/tweenengine/a;


# instance fields
.field private Vo:Laurelienribon/tweenengine/k;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/c;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/animations/x;

    invoke-direct {v0, p1}, Lcom/smartisanos/launcher/animations/x;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    return-void
.end method

.method public static Jj()F
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method private static a(Lcom/smartisanos/launcher/view/a/g;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/g;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/g;->kill()V

    .line 7
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    new-instance v5, Lcom/smartisanos/smengine/g;

    invoke-direct {v5}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v5, v4, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    .line 9
    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v5, v6

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v2

    mul-float/2addr v7, v9

    .line 10
    iget v10, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float v11, v10, v6

    mul-float v18, v11, v9

    mul-float/2addr v5, v6

    sub-float v19, v8, v3

    mul-float v5, v5, v19

    mul-float/2addr v10, v6

    mul-float v20, v10, v19

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/ga;->zi()V

    const/16 v15, 0xa

    .line 12
    invoke-virtual {v0, v15}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 13
    invoke-virtual {v0, v15}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    const/16 v13, 0x10

    .line 14
    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    const/16 v12, 0x12

    .line 15
    invoke-virtual {v0, v12}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 16
    invoke-virtual {v0, v14, v14}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v10, 0x8

    .line 17
    invoke-virtual {v0, v10, v14}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 18
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0, v15}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    invoke-direct {v11, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 19
    invoke-virtual {v11, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v10, 0xe

    .line 20
    invoke-virtual {v11, v10}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v16, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    move v6, v10

    move-object v10, v11

    move-object v8, v11

    move/from16 v11, v16

    move v12, v7

    move/from16 v13, v18

    move/from16 v14, v17

    move v15, v5

    move/from16 v16, v20

    move/from16 v17, v21

    .line 21
    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v15, 0x0

    .line 22
    invoke-virtual {v8, v15}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v10

    iget-object v10, v10, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v8}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 24
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/16 v13, 0x18

    if-eqz v8, :cond_2

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 25
    new-instance v8, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 26
    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 27
    invoke-virtual {v8, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v24, 0x1

    .line 29
    iget v10, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->select_cell_gaussian_background_sale_x_factor:F

    mul-float v25, v7, v10

    iget v7, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->select_cell_gaussian_background_sale_y_factor:F

    mul-float v26, v18, v7

    const/high16 v27, 0x3f800000    # 1.0f

    mul-float v28, v5, v10

    mul-float v29, v20, v7

    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v30}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    move v7, v14

    move v6, v15

    goto :goto_0

    :cond_1
    const/4 v11, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v10, v8

    move v12, v7

    move v7, v13

    move/from16 v13, v18

    move v7, v14

    move/from16 v14, v16

    move v6, v15

    move v15, v5

    move/from16 v16, v20

    .line 30
    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 31
    :goto_0
    invoke-virtual {v8, v6}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v7, v8}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    :cond_2
    move v7, v14

    move v6, v15

    :goto_1
    const/16 v5, 0xa

    .line 33
    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/z;->v(Lcom/smartisanos/smengine/SceneNode;)F

    move-result v8

    .line 34
    invoke-static {}, Lcom/smartisanos/launcher/animations/z;->Jj()F

    move-result v10

    div-float v10, v19, v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v12, v10, v11

    if-lez v12, :cond_3

    const/high16 v10, 0x3f800000    # 1.0f

    :cond_3
    cmpl-float v11, v8, v10

    if-eqz v11, :cond_4

    .line 35
    new-instance v12, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-direct {v12, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 36
    invoke-virtual {v12, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v5, 0xe

    .line 37
    invoke-virtual {v12, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v23, 0x3

    move-object/from16 v22, v12

    move/from16 v24, v8

    move/from16 v25, v8

    move/from16 v26, v8

    move/from16 v27, v8

    move/from16 v28, v10

    move/from16 v29, v10

    move/from16 v30, v10

    move/from16 v31, v10

    .line 38
    invoke-virtual/range {v22 .. v31}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v7, v12}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 40
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_4

    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 41
    new-instance v12, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-direct {v12, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 42
    invoke-virtual {v12, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v5, 0xe

    .line 43
    invoke-virtual {v12, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v23, 0x3

    move-object/from16 v22, v12

    move/from16 v24, v8

    move/from16 v25, v8

    move/from16 v26, v8

    move/from16 v27, v8

    move/from16 v28, v10

    move/from16 v29, v10

    move/from16 v30, v10

    move/from16 v31, v10

    .line 44
    invoke-virtual/range {v22 .. v31}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v7, v12}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 46
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/aa;->o(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/a/i;

    move-result-object v5

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->Dl()I

    move-result v12

    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v12

    .line 48
    iget v13, v5, Lcom/smartisanos/smengine/a/i;->x:F

    iget v14, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_width:F

    iget v15, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_content_width:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    iput v13, v5, Lcom/smartisanos/smengine/a/i;->x:F

    .line 49
    iget v13, v5, Lcom/smartisanos/smengine/a/i;->y:F

    iget v14, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_height:F

    iget v12, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_content_height:F

    div-float/2addr v14, v12

    mul-float/2addr v13, v14

    iput v13, v5, Lcom/smartisanos/smengine/a/i;->y:F

    .line 50
    iget v12, v5, Lcom/smartisanos/smengine/a/i;->x:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v14, v12, v13

    mul-float v24, v14, v9

    .line 51
    iget v5, v5, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float v14, v5, v13

    mul-float v25, v14, v9

    mul-float/2addr v12, v13

    mul-float v27, v12, v19

    mul-float/2addr v5, v13

    mul-float v28, v5, v19

    .line 52
    new-instance v5, Lcom/smartisanos/smengine/oa;

    const/16 v12, 0x10

    invoke-virtual {v0, v12}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 53
    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v13, 0xe

    .line 54
    invoke-virtual {v5, v13}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v23, 0x1

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v22, v5

    .line 55
    invoke-virtual/range {v22 .. v29}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 56
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v13

    iget-object v13, v13, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v13, v7, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 58
    new-instance v5, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0, v12}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 59
    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v12, 0xe

    .line 60
    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/c;->Ja(I)V

    if-eqz p4, :cond_5

    const/16 v23, 0x3

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x0

    move-object/from16 v22, v5

    move/from16 v27, v8

    .line 61
    invoke-virtual/range {v22 .. v31}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v12

    iget-object v12, v12, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v12, v7, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_2

    :cond_5
    if-eqz v11, :cond_6

    const/16 v23, 0x3

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v22, v5

    move/from16 v27, v8

    move/from16 v31, v10

    .line 63
    invoke-virtual/range {v22 .. v31}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v12

    iget-object v12, v12, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v12, v7, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 65
    :cond_6
    :goto_2
    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v13, v5, v12

    mul-float v24, v13, v9

    .line 66
    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float v13, v4, v12

    mul-float v25, v13, v9

    mul-float/2addr v5, v12

    mul-float v27, v5, v19

    mul-float/2addr v4, v12

    mul-float v28, v4, v19

    .line 67
    new-instance v4, Lcom/smartisanos/smengine/oa;

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 68
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v9, 0xe

    .line 69
    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v23, 0x1

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v22, v4

    .line 70
    invoke-virtual/range {v22 .. v29}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 71
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v6

    iget-object v6, v6, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6, v7, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 73
    new-instance v4, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 74
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v5, 0xe

    .line 75
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    if-eqz p4, :cond_7

    const/16 v23, 0x3

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v22, v4

    move/from16 v24, v8

    move/from16 v25, v8

    move/from16 v26, v8

    move/from16 v27, v8

    .line 76
    invoke-virtual/range {v22 .. v31}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v7, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_3

    :cond_7
    if-eqz v11, :cond_8

    const/16 v23, 0x3

    move-object/from16 v22, v4

    move/from16 v24, v8

    move/from16 v25, v8

    move/from16 v26, v8

    move/from16 v27, v8

    move/from16 v28, v10

    move/from16 v29, v10

    move/from16 v30, v10

    move/from16 v31, v10

    .line 78
    invoke-virtual/range {v22 .. v31}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v7, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 80
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 81
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    .line 82
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->Qa(Z)V

    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    .line 83
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->Na(Z)V

    .line 84
    :goto_4
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v5

    if-eqz v5, :cond_c

    if-eqz p5, :cond_a

    .line 85
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisanos/launcher/animations/z;->v(Lcom/smartisanos/smengine/SceneNode;)F

    move-result v5

    move v14, v5

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_6

    .line 86
    :cond_a
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisanos/launcher/animations/z;->v(Lcom/smartisanos/smengine/SceneNode;)F

    move-result v5

    .line 87
    invoke-static {}, Lcom/smartisanos/launcher/animations/z;->Jj()F

    move-result v6

    cmpg-float v6, v19, v6

    if-gez v6, :cond_b

    move v8, v7

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/animations/z;->Jj()F

    move-result v6

    sub-float v19, v19, v6

    invoke-static {}, Lcom/smartisanos/launcher/animations/z;->Jj()F

    move-result v6

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v6

    div-float v19, v19, v8

    move/from16 v8, v19

    :goto_5
    move v14, v5

    move/from16 v18, v8

    :goto_6
    cmpl-float v5, v14, v18

    if-eqz v5, :cond_c

    .line 88
    new-instance v5, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 89
    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v4, 0xe

    .line 90
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v10, 0x3

    move-object v9, v5

    move v11, v14

    move v12, v14

    move v13, v14

    move/from16 v15, v18

    move/from16 v16, v18

    move/from16 v17, v18

    .line 91
    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v7, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 93
    :cond_c
    new-instance v4, Lcom/smartisanos/launcher/animations/z;

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/animations/z;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    .line 94
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v1, 0xe

    .line 95
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 96
    invoke-virtual {v4, v2, v3}, Lcom/smartisanos/launcher/animations/z;->l(FF)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/animations/w;

    move-object/from16 v3, p6

    invoke-direct {v2, v0, v3}, Lcom/smartisanos/launcher/animations/w;-><init>(Lcom/smartisanos/launcher/view/a/g;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    return-object v0
.end method

.method public static a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;F)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Sl()F

    move-result v2

    .line 2
    new-instance v6, Lcom/smartisanos/launcher/animations/u;

    invoke-direct {v6, p1}, Lcom/smartisanos/launcher/animations/u;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/z;->a(Lcom/smartisanos/launcher/view/a/g;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/g;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public static b(Lcom/smartisanos/launcher/view/a/g;F)V
    .locals 10

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const v2, 0x3e99999a    # 0.3f

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Sl()F

    move-result v5

    cmpl-float p1, v5, v0

    if-eqz p1, :cond_3

    sub-float/2addr v0, v5

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float v4, p1, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    .line 5
    invoke-static/range {v3 .. v9}, Lcom/smartisanos/launcher/animations/z;->a(Lcom/smartisanos/launcher/view/a/g;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v1, :cond_2

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/animations/z;->Jj()F

    move-result v1

    sub-float v1, v0, v1

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Sl()F

    move-result v4

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, p1

    :goto_0
    cmpl-float p1, v4, v5

    if-eqz p1, :cond_3

    sub-float p1, v5, v4

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3ecccccd    # 0.4f

    mul-float v3, p1, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    .line 10
    invoke-static/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/z;->a(Lcom/smartisanos/launcher/view/a/g;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_1

    :cond_2
    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Sl()F

    move-result v5

    cmpl-float p1, v5, v0

    if-eqz p1, :cond_3

    sub-float/2addr v0, v5

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float v4, p1, v2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    .line 14
    invoke-static/range {v3 .. v9}, Lcom/smartisanos/launcher/animations/z;->a(Lcom/smartisanos/launcher/view/a/g;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;F)V
    .locals 8

    .line 16
    invoke-static {p1}, Lcom/smartisanos/launcher/view/a/aa;->q(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Sl()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 18
    new-instance v7, Lcom/smartisanos/launcher/animations/v;

    invoke-direct {v7, p1}, Lcom/smartisanos/launcher/animations/v;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    move-object v1, p1

    move v2, p2

    invoke-static/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/z;->a(Lcom/smartisanos/launcher/view/a/g;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/g;

    move-result-object p1

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p2, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method private d(Laurelienribon/tweenengine/k;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/k;->h(F)Laurelienribon/tweenengine/k;

    return-void
.end method

.method private static v(Lcom/smartisanos/smengine/SceneNode;)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/k;

    if-eqz p0, :cond_0

    .line 3
    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method protected Hj()Laurelienribon/tweenengine/k;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/c;->mDuration:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 3
    const-class v0, Lcom/smartisanos/launcher/animations/x;

    invoke-static {v0}, Laurelienribon/tweenengine/k;->d(Ljava/lang/Class;)Laurelienribon/tweenengine/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-class v0, Lcom/smartisanos/launcher/animations/x;

    new-instance v1, Lcom/smartisanos/launcher/animations/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smartisanos/launcher/animations/y;-><init>(Lcom/smartisanos/launcher/animations/u;)V

    invoke-static {v0, v1}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Class;Laurelienribon/tweenengine/l;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    iget v1, p0, Lcom/smartisanos/smengine/c;->pC:I

    iget v2, p0, Lcom/smartisanos/smengine/c;->mDuration:F

    invoke-static {v0, v1, v2}, Laurelienribon/tweenengine/k;->a(Ljava/lang/Object;IF)Laurelienribon/tweenengine/k;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/z;->d(Laurelienribon/tweenengine/k;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    iget v1, p0, Lcom/smartisanos/smengine/c;->mC:I

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/c;->Ka(I)Laurelienribon/tweenengine/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/k;->a(Laurelienribon/tweenengine/n;)Laurelienribon/tweenengine/k;

    iget v1, p0, Lcom/smartisanos/smengine/c;->oC:F

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->f(F)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    new-instance v1, Lcom/smartisanos/smengine/b;

    invoke-direct {v1, p0}, Lcom/smartisanos/smengine/b;-><init>(Lcom/smartisanos/smengine/c;)V

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/m;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->F(I)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->setName(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/smartisanos/smengine/c;->mRepeatCount:I

    if-lez v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    iget v2, p0, Lcom/smartisanos/smengine/c;->nC:F

    invoke-virtual {v1, v0, v2}, Laurelienribon/tweenengine/b;->b(IF)Ljava/lang/Object;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/a;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    iget-object v1, p0, Lcom/smartisanos/smengine/c;->mUserData:Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    return-object p0

    .line 16
    :cond_2
    new-instance p0, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v0, "duration is null"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_3
    new-instance p0, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v0, "target value is null error"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    :cond_0
    return-void
.end method

.method public isFinished()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->isFinished()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPaused()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->isPaused()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public l(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/launcher/animations/x;

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    const/4 v1, 0x0

    aput p2, p0, v1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/launcher/animations/x;->a(FZ)V

    return-void
.end method

.method public o(F)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/c;->reset()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->kC:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/smartisanos/launcher/animations/x;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/x;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/z;->Vo:Laurelienribon/tweenengine/k;

    return-void
.end method
