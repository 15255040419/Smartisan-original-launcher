.class public Lcom/smartisanos/launcher/view/a/X;
.super Ljava/lang/Object;
.source "CellAnimation.java"


# static fields
.field public static My:Lcom/smartisanos/smengine/g; = null

.field protected static Ny:F = 1.35f


# instance fields
.field private Ay:Lcom/smartisanos/smengine/g;

.field private By:Lcom/smartisanos/smengine/g;

.field protected Cy:Lcom/smartisanos/launcher/animations/G;

.field protected Dy:Lcom/smartisanos/smengine/g;

.field protected Ey:Lcom/smartisanos/smengine/oa;

.field public Fy:Lcom/smartisanos/smengine/g;

.field protected Gy:Lcom/smartisanos/smengine/g;

.field protected Hy:Lcom/smartisanos/smengine/g;

.field private Iy:Lcom/smartisanos/smengine/g;

.field private Jy:I

.field private Ky:Lcom/smartisanos/smengine/n;

.field protected Ly:F

.field private Qj:Lcom/smartisanos/launcher/view/a/g;

.field private icon_scale:F

.field private log:Lcom/smartisanos/launcher/va;

.field private yy:Lcom/smartisanos/smengine/g;

.field private zy:Lcom/smartisanos/smengine/g;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->By:Lcom/smartisanos/smengine/g;

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Dy:Lcom/smartisanos/smengine/g;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    .line 11
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/smartisanos/launcher/view/a/X;->Jy:I

    const v0, 0x3e99999a    # 0.3f

    .line 13
    iput v0, p0, Lcom/smartisanos/launcher/view/a/X;->Ly:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 14
    iput v0, p0, Lcom/smartisanos/launcher/view/a/X;->icon_scale:F

    .line 15
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 16
    new-instance p1, Lcom/smartisanos/launcher/animations/G;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {p1, v0, v1}, Lcom/smartisanos/launcher/animations/G;-><init>(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/launcher/data/ItemInfo;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Cy:Lcom/smartisanos/launcher/animations/G;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(ZFFFLcom/smartisanos/smengine/g;IF)V
    .locals 10

    move-object v0, p0

    .line 197
    new-instance v9, Lcom/smartisanos/smengine/oa;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    move/from16 v1, p7

    .line 198
    invoke-virtual {v9, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 199
    invoke-virtual {v9, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, v9

    move v3, p2

    move v4, p2

    move v6, p3

    move v7, p3

    .line 200
    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    move/from16 v1, p6

    .line 201
    invoke-virtual {v9, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 202
    new-instance v1, Lcom/smartisanos/launcher/view/a/A;

    move v2, p1

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/launcher/view/a/A;-><init>(Lcom/smartisanos/launcher/view/a/X;Z)V

    invoke-virtual {v9, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    move v0, p4

    move-object v1, p5

    .line 203
    invoke-virtual {p5, p4, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/va;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->log:Lcom/smartisanos/launcher/va;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private b(Lcom/smartisanos/smengine/g;FZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 64
    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 65
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 66
    new-instance v14, Lcom/smartisanos/smengine/oa;

    invoke-direct {v14, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 67
    invoke-virtual {v14, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v15, 0xe

    .line 68
    invoke-virtual {v14, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    if-eqz p3, :cond_0

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v14

    .line 69
    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e4ccccd    # 0.2f

    const v11, 0x3e4ccccd    # 0.2f

    const v12, 0x3e4ccccd    # 0.2f

    const v13, 0x3e4ccccd    # 0.2f

    move-object v4, v14

    .line 70
    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 71
    :goto_0
    new-instance v4, Lcom/smartisanos/launcher/view/a/l;

    invoke-direct {v4, v0, v3}, Lcom/smartisanos/launcher/view/a/l;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v14, v4}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/4 v3, 0x0

    .line 72
    invoke-virtual {v2, v3, v14}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 73
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    .line 74
    new-instance v14, Lcom/smartisanos/smengine/oa;

    invoke-direct {v14, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 75
    invoke-virtual {v14, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 76
    invoke-virtual {v14, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    if-eqz p3, :cond_1

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    move-object v5, v14

    move-object/from16 v16, v14

    move v14, v4

    .line 77
    invoke-virtual/range {v5 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    goto :goto_1

    :cond_1
    move-object/from16 v16, v14

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3e4ccccd    # 0.2f

    const v12, 0x3e4ccccd    # 0.2f

    const v13, 0x3e4ccccd    # 0.2f

    const v14, 0x3dcccccd    # 0.1f

    move-object/from16 v5, v16

    .line 78
    invoke-virtual/range {v5 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    :goto_1
    move-object/from16 v4, v16

    .line 79
    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 80
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v4, 0x1b

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    new-instance v14, Lcom/smartisanos/smengine/oa;

    invoke-direct {v14, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 82
    invoke-virtual {v14, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 83
    invoke-virtual {v14, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    if-eqz p3, :cond_2

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v14

    .line 84
    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e4ccccd    # 0.2f

    const v11, 0x3e4ccccd    # 0.2f

    const v12, 0x3e4ccccd    # 0.2f

    const v13, 0x3dcccccd    # 0.1f

    move-object v4, v14

    .line 85
    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 86
    :goto_2
    invoke-virtual {v2, v3, v14}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_3
    move-object/from16 v0, p1

    .line 87
    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method private b(ZFFFLcom/smartisanos/smengine/g;IZF)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p8

    .line 88
    new-instance v13, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v14, 0xb

    invoke-virtual {v5, v14}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-direct {v13, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 89
    invoke-virtual {v13, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v15, 0x0

    .line 90
    invoke-virtual {v13, v15}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v6, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v5, v13

    move/from16 v7, p2

    move/from16 v8, p2

    move/from16 v10, p3

    move/from16 v11, p3

    .line 91
    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 92
    invoke-virtual {v13, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 93
    new-instance v5, Lcom/smartisanos/launcher/view/a/y;

    move/from16 v6, p1

    invoke-direct {v5, v0, v6}, Lcom/smartisanos/launcher/view/a/y;-><init>(Lcom/smartisanos/launcher/view/a/X;Z)V

    invoke-virtual {v13, v5}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    if-eqz p7, :cond_2

    .line 94
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5, v14}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 95
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v6, v5, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    cmpl-float v6, p3, v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-ltz v6, :cond_1

    .line 96
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v6, :cond_0

    .line 97
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5, v14}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const v7, 0x3dcccccd    # 0.1f

    :cond_0
    move/from16 v21, v7

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v17, v8

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    goto :goto_0

    :cond_1
    move/from16 v17, v7

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v8

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    .line 99
    :goto_0
    new-instance v5, Lcom/smartisanos/smengine/oa;

    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6, v14}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 100
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v16, 0x3

    move-object v15, v5

    .line 101
    invoke-virtual/range {v15 .. v24}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 102
    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 103
    new-instance v3, Lcom/smartisanos/launcher/view/a/z;

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/a/z;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 104
    invoke-virtual {v2, v1, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 105
    :cond_2
    invoke-virtual {v2, v1, v13}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->By:Lcom/smartisanos/smengine/g;

    return-object p1
.end method


# virtual methods
.method public Aa(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/X;->Jy:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Lcom/smartisanos/launcher/view/b/M;F)Lcom/smartisanos/smengine/g;
    .locals 12

    .line 146
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x18

    aget-object v3, v2, v3

    if-nez v3, :cond_0

    const/16 v3, 0x19

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    .line 148
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 149
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Jm()V

    .line 151
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v1, v2, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    .line 152
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->dl()Lcom/smartisanos/launcher/view/a/ca;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/ca;->T(Z)V

    .line 153
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v1, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/d;->Rg()Lcom/smartisanos/smengine/ha;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 154
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v1, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/d;->Qg()Lcom/smartisanos/smengine/fa;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 155
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v1, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/d;->Pg()Lcom/smartisanos/smengine/V;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setCollideListener(Lcom/smartisanos/smengine/V;)V

    .line 156
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 157
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->fl()V

    .line 158
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v1

    .line 159
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v3

    .line 160
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/smartisanos/launcher/view/b/fa;->p(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 161
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Hr()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Eq()V

    goto :goto_1

    .line 163
    :cond_2
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 164
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### targetScreenIndex = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_3
    const v1, 0x3e99999a    # 0.3f

    .line 165
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    new-instance v6, Lcom/smartisanos/launcher/view/a/w;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/view/a/w;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    .line 166
    invoke-virtual {v3, v4, v1, v2, v6}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v5, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 168
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const v3, 0x8000

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 169
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 170
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 171
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/smartisanos/launcher/theme/X;->ju:Z

    if-nez v1, :cond_4

    goto :goto_3

    .line 172
    :cond_4
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v1, :cond_8

    .line 173
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Xn()Lcom/smartisanos/smengine/g;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 174
    invoke-virtual {v0, v5, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 175
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/ga;->Mi()V

    .line 177
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v1

    .line 178
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 179
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 180
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 181
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->Yn()V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 182
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Fr()V

    .line 183
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 184
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/ga;->Mi()V

    :cond_9
    :goto_3
    const/4 v9, 0x0

    .line 185
    new-instance v10, Lcom/smartisanos/launcher/view/a/x;

    invoke-direct {v10, p0}, Lcom/smartisanos/launcher/view/a/x;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v6 .. v11}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/b/M;FZLcom/smartisanos/smengine/a;Z)Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-object v0
.end method

.method public a(Lcom/smartisanos/launcher/view/b/M;FZLcom/smartisanos/smengine/a;Z)Lcom/smartisanos/smengine/g;
    .locals 25

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 85
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "########### cellReleaseBackToPageAnim ################"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/smartisanos/launcher/view/a/g;->wH:Z

    .line 87
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 88
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v1

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 89
    iget-object v1, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v9}, Lcom/smartisanos/launcher/view/a/g;->Ta(Z)V

    .line 90
    iget-object v1, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v2, v1, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->aH:I

    invoke-static {v2, v1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v5

    .line 91
    iget-object v1, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v2, v1, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iget v3, v1, Lcom/smartisanos/launcher/view/a/g;->aH:I

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 92
    iget-object v1, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 94
    iget-object v2, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Oq()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/j;

    move-object/from16 v11, p1

    goto :goto_0

    :cond_1
    move-object/from16 v11, p1

    .line 96
    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v2

    .line 97
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v3

    rem-int/2addr v2, v3

    .line 98
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v5

    .line 99
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Nq()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/j;

    goto :goto_0

    :cond_2
    move-object/from16 v11, p1

    .line 100
    iget-object v1, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 101
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 102
    aget-object v0, v0, v5

    :goto_0
    move-object v4, v0

    .line 103
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    .line 104
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    iget-object v2, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v0, v2, v8}, Lcom/smartisanos/launcher/animations/z;->b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;F)V

    .line 105
    new-instance v6, Lcom/smartisanos/smengine/oa;

    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v6, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 106
    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 107
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v13, 0x0

    .line 108
    iget v14, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v15, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v1, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v4, Lcom/smartisanos/smengine/a/j;->z:F

    move/from16 v19, v12

    move-object v12, v6

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-virtual/range {v12 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 109
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 111
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 112
    :cond_3
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v1

    invoke-direct {v7, v0, v8, v1}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/smengine/g;FZ)V

    .line 114
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Vg()V

    .line 115
    iget-object v12, v7, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    new-instance v13, Lcom/smartisanos/launcher/view/a/j;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move v14, v3

    move-object/from16 v3, p1

    move-object v15, v6

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/a/j;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/a;Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/a/j;IZ)V

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 116
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    :cond_5
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    iget-object v1, v7, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    const v2, 0x3e8f5c29    # 0.28f

    invoke-virtual {v0, v1, v2, v2}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;FF)V

    .line 119
    :cond_6
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v15}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 120
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_a

    .line 121
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    const/16 v2, 0x18

    if-eqz v0, :cond_7

    .line 122
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iget-object v3, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-ne v0, v3, :cond_7

    .line 123
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 124
    new-instance v2, Lcom/smartisanos/smengine/oa;

    invoke-direct {v2, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 125
    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 126
    invoke-virtual {v2, v14}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v16, 0x3

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v15, v2

    .line 127
    invoke-virtual/range {v15 .. v24}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 128
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    .line 129
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v0

    const/16 v3, 0x19

    if-eqz v0, :cond_8

    .line 130
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 131
    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 132
    new-instance v2, Lcom/smartisanos/smengine/oa;

    invoke-direct {v2, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 133
    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 134
    invoke-virtual {v2, v14}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    move-object v15, v2

    .line 135
    invoke-virtual/range {v15 .. v24}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 136
    new-instance v3, Lcom/smartisanos/launcher/view/a/k;

    invoke-direct {v3, v7, v0}, Lcom/smartisanos/launcher/view/a/k;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 137
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    .line 138
    :cond_8
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 139
    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 140
    :cond_9
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 141
    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 142
    :cond_a
    :goto_1
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/SceneNode;->setInteractionState(I)V

    .line 143
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    .line 144
    iget-object v0, v7, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    return-object v0

    .line 145
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " pageView can\'t null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ZF)Lcom/smartisanos/smengine/g;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/pa;->destroy()V

    .line 188
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p1

    iput-object v0, p1, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/launcher/view/a/pa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateParent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v2, v2, Lcom/smartisanos/launcher/view/a/g;->_G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v2, v2, Lcom/smartisanos/launcher/view/a/g;->aH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/pa;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v0, p1, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    .line 190
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/pa;->create()V

    .line 191
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 192
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 193
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/a/pa;->G(F)Lcom/smartisanos/smengine/g;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public a(FFFFFFFFFFFFFLcom/smartisanos/smengine/g;IF)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p13

    move-object/from16 v2, p14

    move/from16 v3, p15

    move/from16 v4, p16

    .line 204
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v6, 0x0

    aget-object v7, v5, v6

    if-eqz v7, :cond_0

    .line 205
    new-instance v7, Lcom/smartisanos/smengine/oa;

    aget-object v5, v5, v6

    invoke-direct {v7, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 206
    invoke-virtual {v7, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 207
    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v9, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v8, v7

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v13, p4

    move/from16 v14, p5

    .line 208
    invoke-virtual/range {v8 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 209
    invoke-virtual {v7, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 210
    new-instance v5, Lcom/smartisanos/launcher/view/a/B;

    invoke-direct {v5, v0}, Lcom/smartisanos/launcher/view/a/B;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 211
    invoke-virtual {v2, v1, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 212
    new-instance v5, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v7, v7, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v7, v6

    invoke-direct {v5, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 213
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v9, 0x0

    move-object v8, v5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    .line 214
    invoke-virtual/range {v8 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 215
    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 216
    new-instance v7, Lcom/smartisanos/launcher/view/a/D;

    invoke-direct {v7, v0}, Lcom/smartisanos/launcher/view/a/D;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 217
    invoke-virtual {v2, v1, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 218
    :cond_0
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v7, 0x1b

    aget-object v5, v5, v7

    if-eqz v5, :cond_1

    .line 219
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->mt()F

    move-result v5

    .line 220
    new-instance v15, Lcom/smartisanos/smengine/oa;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v8, v8, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v8, v8, v7

    invoke-direct {v15, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 221
    invoke-virtual {v15, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 222
    invoke-virtual {v15, v6}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v9, 0x1

    mul-float v10, p1, v5

    mul-float v11, p2, v5

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float v13, p4, v5

    mul-float v14, p5, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v8, v15

    move-object v6, v15

    move v15, v5

    .line 223
    invoke-virtual/range {v8 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 224
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 225
    new-instance v5, Lcom/smartisanos/launcher/view/a/E;

    invoke-direct {v5, v0}, Lcom/smartisanos/launcher/view/a/E;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 226
    invoke-virtual {v2, v1, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 227
    new-instance v5, Lcom/smartisanos/smengine/oa;

    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v6, v6, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 228
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v9, 0x0

    move-object v8, v5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    .line 229
    invoke-virtual/range {v8 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 230
    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 231
    new-instance v3, Lcom/smartisanos/launcher/view/a/F;

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/a/F;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 232
    invoke-virtual {v2, v1, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 247
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 248
    new-instance p1, Lcom/smartisanos/launcher/view/a/P;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/a/P;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 249
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p0

    .line 250
    invoke-virtual {p6, p5, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/g;FZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 48
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Ky:Lcom/smartisanos/smengine/n;

    if-eqz v3, :cond_0

    .line 49
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v3

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Ky:Lcom/smartisanos/smengine/n;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v3, 0x0

    .line 50
    iput-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Ky:Lcom/smartisanos/smengine/n;

    .line 51
    :cond_0
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v3

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v6

    if-ne v3, v6, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 52
    :goto_0
    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0xe

    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    if-eqz p3, :cond_2

    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    instance-of v6, v6, Lcom/smartisanos/launcher/view/b/a;

    if-nez v6, :cond_3

    .line 53
    :cond_2
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 54
    new-instance v4, Lcom/smartisanos/smengine/oa;

    invoke-direct {v4, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 55
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 56
    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 57
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 58
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 59
    iget v14, v2, Lcom/smartisanos/smengine/a/k;->z:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v4

    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 60
    new-instance v2, Lcom/smartisanos/launcher/view/a/i;

    invoke-direct {v2, v0, v3}, Lcom/smartisanos/launcher/view/a/i;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 61
    invoke-virtual {v1, v7, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto/16 :goto_5

    .line 62
    :cond_3
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 63
    iget-object v9, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6

    if-nez v3, :cond_5

    .line 64
    iget-object v10, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->isCancelForSetPress()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 66
    new-instance v10, Lcom/smartisanos/smengine/oa;

    invoke-direct {v10, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 67
    invoke-virtual {v10, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 68
    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v12, 0x3

    .line 69
    iget v13, v6, Lcom/smartisanos/smengine/a/k;->x:F

    iget v14, v6, Lcom/smartisanos/smengine/a/k;->y:F

    iget v15, v6, Lcom/smartisanos/smengine/a/k;->z:F

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object v11, v10

    invoke-virtual/range {v11 .. v20}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 70
    invoke-virtual {v1, v7, v10}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_2

    .line 71
    :cond_5
    :goto_1
    invoke-virtual {v4, v9, v9, v9, v9}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 72
    :cond_6
    :goto_2
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Mc;

    if-eqz v4, :cond_9

    .line 73
    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v10, :cond_9

    if-nez v3, :cond_8

    .line 74
    iget-object v10, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->isCancelForSetPress()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_3

    .line 75
    :cond_7
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 76
    new-instance v9, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 77
    invoke-virtual {v9, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 78
    invoke-virtual {v9, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v12, 0x3

    .line 79
    iget v13, v6, Lcom/smartisanos/smengine/a/k;->x:F

    iget v14, v6, Lcom/smartisanos/smengine/a/k;->y:F

    iget v15, v6, Lcom/smartisanos/smengine/a/k;->z:F

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object v11, v9

    invoke-virtual/range {v11 .. v20}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 80
    invoke-virtual {v1, v7, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_4

    .line 81
    :cond_8
    :goto_3
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v1

    invoke-virtual {v1, v9, v9, v9, v9}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_9
    :goto_4
    if-nez v3, :cond_a

    .line 82
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->isCancelForSetPress()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 83
    :cond_a
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 84
    :cond_b
    :goto_5
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v5}, Lcom/smartisanos/launcher/view/a/g;->b(FZ)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/g;Ljava/util/ArrayList;)V
    .locals 26

    move-object/from16 v9, p0

    .line 233
    iget-object v0, v9, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 235
    :cond_0
    new-instance v15, Lcom/smartisanos/smengine/g;

    move-object/from16 v23, v15

    invoke-direct {v15}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 236
    iget-object v0, v9, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v2, v1, v12

    sget v3, Lcom/smartisanos/launcher/view/a/X;->Ny:F

    mul-float/2addr v2, v3

    mul-float v3, v1, v12

    .line 237
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 238
    iget-object v0, v9, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    const v8, 0x3e99999a    # 0.3f

    move-object/from16 v0, p0

    move-object v5, v15

    .line 239
    invoke-virtual/range {v0 .. v8}, Lcom/smartisanos/launcher/view/a/X;->a(ZFFFLcom/smartisanos/smengine/g;IZF)V

    .line 240
    iget-object v0, v9, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_2_2:I

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_2_2:I

    add-int v5, v3, v4

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget v7, Lcom/smartisanos/launcher/view/a/X;->Ny:F

    mul-float/2addr v5, v7

    sub-float v16, v2, v5

    .line 241
    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_2_2:I

    add-int v8, v3, v5

    int-to-float v8, v8

    div-float/2addr v8, v6

    mul-float/2addr v8, v7

    add-float/2addr v8, v1

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_icon_center_offset_2_2:F

    add-float v17, v8, v0

    add-int/2addr v4, v3

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float v19, v2, v4

    add-int/2addr v5, v3

    int-to-float v2, v5

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    add-float v20, v1, v0

    int-to-float v0, v3

    mul-float/2addr v0, v12

    mul-float/2addr v0, v7

    move v11, v0

    move v10, v0

    int-to-float v0, v3

    mul-float v14, v0, v12

    move v13, v14

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    move-object v1, v15

    move v15, v0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0xe

    const v25, 0x3e99999a    # 0.3f

    move-object v0, v9

    move-object/from16 v9, p0

    .line 242
    invoke-virtual/range {v9 .. v25}, Lcom/smartisanos/launcher/view/a/X;->a(FFFFFFFFFFFFFLcom/smartisanos/smengine/g;IF)V

    .line 243
    new-instance v2, Lcom/smartisanos/launcher/view/a/M;

    move-object/from16 v3, p2

    invoke-direct {v2, v0, v3}, Lcom/smartisanos/launcher/view/a/M;-><init>(Lcom/smartisanos/launcher/view/a/X;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    const/4 v0, 0x0

    move-object/from16 v2, p1

    .line 244
    invoke-virtual {v2, v0, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/g;ZFFZFFZFF)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v2

    if-nez v2, :cond_d

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 6
    iput-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    :cond_1
    const/16 v2, 0x40

    .line 7
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/X;->Aa(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 8
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "???? Why showAppNameAndFlagAnimation running???"

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v2, v5}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 10
    :cond_2
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    .line 11
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Mc;

    const/high16 v8, 0x100000

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0xe

    const/4 v11, 0x0

    if-eqz v4, :cond_5

    .line 12
    iget-object v12, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz p2, :cond_5

    .line 13
    new-instance v15, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v12

    invoke-direct {v15, v12}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 14
    invoke-virtual {v15, v10}, Lcom/smartisanos/smengine/c;->Ja(I)V

    move/from16 v12, p3

    .line 15
    invoke-virtual {v15, v12}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 16
    sget-boolean v12, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v12

    if-eqz v12, :cond_3

    const v12, 0x3ee66666    # 0.45f

    goto :goto_0

    :cond_3
    move v12, v9

    .line 17
    :goto_0
    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v13, :cond_4

    iget-object v13, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    instance-of v13, v13, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v13, :cond_4

    iget-object v13, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 18
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v13

    if-ne v6, v13, :cond_4

    move/from16 v17, v11

    goto :goto_1

    :cond_4
    move/from16 v17, v12

    :goto_1
    const/4 v13, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v15

    move/from16 v14, v17

    move-object v7, v15

    move/from16 v15, v17

    move/from16 v16, v17

    .line 19
    invoke-virtual/range {v12 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 20
    new-instance v12, Lcom/smartisanos/launcher/view/a/S;

    invoke-direct {v12, v0, v4}, Lcom/smartisanos/launcher/view/a/S;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/launcher/view/Mc;)V

    invoke-virtual {v7, v12}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 21
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    move/from16 v12, p4

    invoke-virtual {v4, v12, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move v4, v6

    goto :goto_2

    :cond_5
    move v4, v5

    .line 22
    :goto_2
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v12, 0x3

    invoke-virtual {v7, v12}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    if-eqz v7, :cond_8

    if-eqz p5, :cond_8

    .line 23
    new-instance v4, Lcom/smartisanos/smengine/oa;

    invoke-direct {v4, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 24
    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/c;->Ja(I)V

    move/from16 v12, p6

    .line 25
    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 26
    sget-boolean v12, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v12

    if-eqz v12, :cond_6

    const v12, 0x3ee66666    # 0.45f

    goto :goto_3

    :cond_6
    move v12, v9

    .line 27
    :goto_3
    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v13, :cond_7

    iget-object v13, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    instance-of v13, v13, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v13, :cond_7

    iget-object v13, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 28
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v13

    if-ne v6, v13, :cond_7

    move/from16 v17, v11

    goto :goto_4

    :cond_7
    move/from16 v17, v12

    :goto_4
    const/4 v13, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v4

    move/from16 v14, v17

    move/from16 v15, v17

    move/from16 v16, v17

    .line 29
    invoke-virtual/range {v12 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 30
    new-instance v12, Lcom/smartisanos/launcher/view/a/T;

    invoke-direct {v12, v0, v7}, Lcom/smartisanos/launcher/view/a/T;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 31
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    move/from16 v12, p7

    invoke-virtual {v7, v12, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move v4, v6

    .line 32
    :cond_8
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v12, 0x5

    invoke-virtual {v7, v12}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 33
    iget-object v12, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v13, 0x200

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz p8, :cond_b

    .line 34
    new-instance v4, Lcom/smartisanos/smengine/oa;

    invoke-direct {v4, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 35
    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/c;->Ja(I)V

    move/from16 v10, p9

    .line 36
    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 37
    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v8

    if-eqz v8, :cond_9

    const v22, 0x3ee66666    # 0.45f

    goto :goto_5

    :cond_9
    move/from16 v22, v9

    .line 38
    :goto_5
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_a

    iget-object v8, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    instance-of v8, v8, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v8, :cond_a

    iget-object v8, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 39
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v8

    if-ne v6, v8, :cond_a

    move/from16 v17, v11

    goto :goto_6

    :cond_a
    move/from16 v17, v22

    :goto_6
    const/4 v13, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v4

    move/from16 v14, v17

    move/from16 v15, v17

    move/from16 v16, v17

    .line 40
    invoke-virtual/range {v12 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 41
    new-instance v8, Lcom/smartisanos/launcher/view/a/U;

    invoke-direct {v8, v0, v7}, Lcom/smartisanos/launcher/view/a/U;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 42
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    move/from16 v8, p10

    invoke-virtual {v7, v8, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move v4, v6

    :cond_b
    if-eqz v4, :cond_c

    .line 43
    invoke-virtual {v0, v2, v6}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 44
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/a/V;

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/a/V;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 45
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v11, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_7

    .line 46
    :cond_c
    invoke-virtual {v0, v2, v5}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 47
    iput-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    :cond_d
    :goto_7
    return-void
.end method

.method public a(ZFFFLcom/smartisanos/smengine/g;IZF)V
    .locals 8

    move-object v0, p0

    .line 194
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p8

    .line 195
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/a/X;->a(ZFFFLcom/smartisanos/smengine/g;IF)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/smartisanos/launcher/view/a/X;->b(ZFFFLcom/smartisanos/smengine/g;IZF)V

    :goto_0
    return-void
.end method

.method public b(Lcom/smartisanos/smengine/g;FF)V
    .locals 11

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v6, p3

    move v9, p3

    .line 63
    invoke-virtual/range {v0 .. v10}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/smengine/g;ZFFZFFZFF)V

    return-void
.end method

.method public b(Lcom/smartisanos/smengine/g;Ljava/util/ArrayList;)V
    .locals 12

    .line 106
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/launcher/view/a/ka;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/smartisanos/launcher/view/a/ka;->tI:Z

    .line 107
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/a/la;->nz:Z

    .line 108
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_2

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v1, v2

    sget v4, Lcom/smartisanos/launcher/view/a/X;->Ny:F

    mul-float v5, v3, v4

    mul-float v6, v1, v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    const v11, 0x3e99999a    # 0.3f

    move-object v3, p0

    move-object v8, v0

    .line 115
    invoke-virtual/range {v3 .. v11}, Lcom/smartisanos/launcher/view/a/X;->a(ZFFFLcom/smartisanos/smengine/g;IZF)V

    .line 116
    new-instance v1, Lcom/smartisanos/launcher/view/a/O;

    invoke-direct {v1, p0, p2}, Lcom/smartisanos/launcher/view/a/O;-><init>(Lcom/smartisanos/launcher/view/a/X;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    const/4 p0, 0x0

    .line 117
    invoke-virtual {p1, p0, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public b(Lcom/smartisanos/smengine/g;ZFFZFFZFF)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v2

    if-nez v2, :cond_13

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 6
    iput-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    :cond_1
    const/16 v2, 0x40

    .line 7
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/X;->Aa(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 8
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "???? Why showAppNameAndFlagAnimation running???"

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v2, v5}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 10
    :cond_2
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    .line 11
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Mc;

    const v8, 0x3ee66666    # 0.45f

    const/high16 v9, 0x100000

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0xe

    const/4 v12, 0x0

    if-eqz v4, :cond_6

    .line 12
    iget-object v13, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz p2, :cond_6

    .line 13
    new-instance v15, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v13

    invoke-direct {v15, v13}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 14
    invoke-virtual {v15, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    move/from16 v13, p3

    .line 15
    invoke-virtual {v15, v13}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 16
    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move v13, v8

    goto :goto_0

    :cond_3
    move v13, v10

    .line 17
    :goto_0
    sget-boolean v14, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v14, :cond_4

    iget-object v14, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v14}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v14

    instance-of v14, v14, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v14, :cond_4

    iget-object v14, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 18
    invoke-virtual {v14}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v14

    if-ne v6, v14, :cond_4

    move v13, v12

    .line 19
    :cond_4
    sget-boolean v14, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v14, :cond_5

    iget-object v14, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 20
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v14

    if-eqz v14, :cond_5

    iget-object v14, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 21
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v14

    if-ne v6, v14, :cond_5

    const v22, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_5
    move/from16 v22, v13

    :goto_1
    const/4 v14, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v15

    move-object v7, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v22

    move/from16 v20, v22

    move/from16 v21, v22

    .line 22
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 23
    new-instance v13, Lcom/smartisanos/launcher/view/a/r;

    invoke-direct {v13, v0, v4}, Lcom/smartisanos/launcher/view/a/r;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/launcher/view/Mc;)V

    invoke-virtual {v7, v13}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 24
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    move/from16 v13, p4

    invoke-virtual {v4, v13, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move v4, v6

    goto :goto_2

    :cond_6
    move v4, v5

    .line 25
    :goto_2
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v13, 0x3

    invoke-virtual {v7, v13}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    if-eqz v7, :cond_b

    if-eqz p5, :cond_b

    .line 26
    new-instance v4, Lcom/smartisanos/smengine/oa;

    invoke-direct {v4, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 27
    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    move/from16 v13, p6

    .line 28
    invoke-virtual {v4, v13}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 29
    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v13, :cond_7

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v13

    if-eqz v13, :cond_7

    move v13, v8

    goto :goto_3

    :cond_7
    move v13, v10

    .line 30
    :goto_3
    sget-boolean v14, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v14, :cond_8

    iget-object v14, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v14}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v14

    instance-of v14, v14, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v14, :cond_8

    iget-object v14, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 31
    invoke-virtual {v14}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v14

    if-ne v6, v14, :cond_8

    move v13, v12

    .line 32
    :cond_8
    sget-boolean v14, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v14, :cond_9

    iget-object v14, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 33
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v14

    if-eqz v14, :cond_9

    iget-object v14, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 34
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v14

    if-ne v6, v14, :cond_9

    const v22, 0x3dcccccd    # 0.1f

    goto :goto_4

    :cond_9
    move/from16 v22, v13

    :goto_4
    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v4

    move/from16 v19, v22

    move/from16 v20, v22

    move/from16 v21, v22

    .line 35
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 36
    iget-object v13, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v13, v13, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v13, v13, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-nez v13, :cond_a

    .line 37
    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 38
    :cond_a
    iget-object v13, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v13, v7}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 39
    iget-object v13, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 40
    new-instance v13, Lcom/smartisanos/launcher/view/a/C;

    invoke-direct {v13, v0, v7}, Lcom/smartisanos/launcher/view/a/C;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v4, v13}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 41
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    move/from16 v13, p7

    invoke-virtual {v7, v13, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move v4, v6

    .line 42
    :cond_b
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v13, 0x5

    invoke-virtual {v7, v13}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    if-eqz v7, :cond_11

    if-eqz p8, :cond_11

    .line 43
    iget-object v13, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 44
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v13

    iget v13, v13, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v13, :cond_c

    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v13, :cond_d

    :cond_c
    iget-object v13, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v14, 0x200

    .line 45
    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v13

    if-eqz v13, :cond_11

    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v13, :cond_11

    .line 46
    :cond_d
    new-instance v4, Lcom/smartisanos/smengine/oa;

    invoke-direct {v4, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 47
    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/c;->Ja(I)V

    move/from16 v11, p9

    .line 48
    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 49
    sget-boolean v11, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v11, :cond_e

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_5

    :cond_e
    move v8, v10

    .line 50
    :goto_5
    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v9, :cond_f

    iget-object v9, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    instance-of v9, v9, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v9, :cond_f

    iget-object v9, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 51
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v9

    if-ne v6, v9, :cond_f

    move v8, v12

    .line 52
    :cond_f
    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v9, :cond_10

    iget-object v9, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 53
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v9

    if-eqz v9, :cond_10

    iget-object v9, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 54
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v9

    if-ne v6, v9, :cond_10

    const v32, 0x3dcccccd    # 0.1f

    goto :goto_6

    :cond_10
    move/from16 v32, v8

    :goto_6
    const/16 v24, 0x3

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v4

    move/from16 v29, v32

    move/from16 v30, v32

    move/from16 v31, v32

    .line 55
    invoke-virtual/range {v23 .. v32}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 56
    new-instance v8, Lcom/smartisanos/launcher/view/a/N;

    invoke-direct {v8, v0, v7, v4}, Lcom/smartisanos/launcher/view/a/N;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/oa;)V

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 57
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    move/from16 v8, p10

    invoke-virtual {v7, v8, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move v4, v6

    :cond_11
    if-eqz v4, :cond_12

    .line 58
    invoke-virtual {v0, v2, v6}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 59
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/a/Q;

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/a/Q;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 60
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_7

    .line 61
    :cond_12
    invoke-virtual {v0, v2, v5}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 62
    iput-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Iy:Lcom/smartisanos/smengine/g;

    :cond_13
    :goto_7
    return-void
.end method

.method public c(Lcom/smartisanos/smengine/g;F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 16
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 17
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v4, 0x0

    const/16 v5, 0x40

    invoke-virtual {v3, v5, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 18
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v5, 0x80

    invoke-virtual {v3, v5, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 19
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/ga;->Hi()V

    .line 20
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v6, 0x0

    const/16 v7, 0x100

    const/16 v8, 0xe

    const/4 v9, 0x1

    if-eqz v3, :cond_9

    .line 21
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v7, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 22
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v5, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 23
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v4

    check-cast v5, Lcom/smartisanos/smengine/F;

    if-eqz v5, :cond_8

    .line 24
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v3

    if-eq v9, v3, :cond_8

    const/16 v3, 0x1b

    if-eqz v1, :cond_6

    .line 25
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7, v4}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 26
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const v10, 0x8000

    invoke-virtual {v7, v10, v9}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 27
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/smartisanos/launcher/view/a/ga;->ma(Z)V

    .line 28
    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/Z;->Ai()V

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/F;

    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_3

    .line 34
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v9}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v5, 0x200

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 38
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 39
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_2
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 41
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_3
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_5

    .line 43
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 44
    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 45
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v10, 0x3

    const v11, 0x3ee66666    # 0.45f

    const v12, 0x3ee66666    # 0.45f

    const v13, 0x3ee66666    # 0.45f

    const v14, 0x3ee66666    # 0.45f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v9, v3

    .line 46
    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 47
    invoke-virtual {v1, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    if-nez v4, :cond_4

    .line 48
    new-instance v5, Lcom/smartisanos/launcher/view/a/t;

    invoke-direct {v5, v0}, Lcom/smartisanos/launcher/view/a/t;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 50
    invoke-virtual {v5, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 51
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/F;

    if-eqz v2, :cond_7

    .line 52
    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 53
    :cond_7
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 54
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_1

    .line 55
    :cond_8
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_1

    .line 56
    :cond_9
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v7, v9}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 57
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v8

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 58
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    if-eqz v1, :cond_a

    .line 59
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v8

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v4, 0xd

    .line 60
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 61
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v3

    .line 62
    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 63
    new-instance v2, Lcom/smartisanos/launcher/view/a/u;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/a/u;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 64
    invoke-virtual {v1, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    .line 65
    :cond_a
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 66
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v7, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 67
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 68
    :goto_1
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public c(Lcom/smartisanos/smengine/g;FF)V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x16

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 4
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-direct {v11, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    invoke-virtual {v11, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v0, 0xe

    .line 6
    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v1, v11

    .line 7
    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 8
    new-instance v1, Lcom/smartisanos/launcher/view/a/p;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/a/p;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v11, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 9
    invoke-virtual {p1, p3, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-direct {v11, p0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 12
    invoke-virtual {v11, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 13
    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v1, v11

    .line 14
    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 15
    invoke-virtual {p1, p3, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->By:Lcom/smartisanos/smengine/g;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Cy:Lcom/smartisanos/launcher/animations/G;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/G;->clear()V

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Cy:Lcom/smartisanos/launcher/animations/G;

    .line 9
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Dy:Lcom/smartisanos/smengine/g;

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    .line 11
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    .line 12
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    .line 13
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    return-void
.end method

.method public d(Laurelienribon/tweenengine/h;)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Ua;

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "TextureTexCoordLimitMaterial"

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 9
    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 13
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 14
    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/Ua;->f(Laurelienribon/tweenengine/h;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Ua;

    .line 17
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->xm()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-gtz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 20
    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 22
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 23
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 24
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 25
    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/Ua;->f(Laurelienribon/tweenengine/h;)V

    :cond_2
    return-void
.end method

.method public d(Lcom/smartisanos/smengine/g;)V
    .locals 24

    move-object/from16 v0, p0

    .line 41
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v1, 0x0

    .line 43
    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    .line 44
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x8000000

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 45
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/db;->fh()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    .line 46
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Nl()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    iput-object v4, v2, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    .line 47
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    .line 48
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 49
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/FolderInfo;->mf()I

    move-result v2

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-ge v2, v8, :cond_4

    .line 50
    iget-object v8, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v10, v8, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_2_2:I

    int-to-float v12, v11

    mul-float/2addr v12, v6

    iget v13, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float/2addr v12, v13

    int-to-float v14, v11

    mul-float/2addr v14, v6

    div-float/2addr v14, v13

    if-ne v2, v3, :cond_1

    .line 51
    iget-object v2, v8, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_2_2:I

    add-int/2addr v8, v11

    int-to-float v8, v8

    div-float/2addr v8, v5

    add-float/2addr v3, v8

    .line 52
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_2_2:I

    add-int/2addr v11, v8

    int-to-float v8, v11

    div-float/2addr v8, v5

    add-float/2addr v2, v8

    iget v5, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_icon_center_offset_2_2:F

    :goto_0
    add-float/2addr v2, v5

    move v5, v4

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 53
    iget-object v2, v8, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_2_2:I

    add-int/2addr v8, v11

    int-to-float v8, v8

    div-float/2addr v8, v5

    sub-float/2addr v3, v8

    .line 54
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_2_2:I

    add-int/2addr v11, v8

    int-to-float v8, v11

    div-float/2addr v8, v5

    sub-float/2addr v2, v8

    iget v5, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_icon_center_offset_2_2:F

    goto :goto_0

    :cond_2
    if-ne v2, v9, :cond_3

    .line 55
    iget-object v2, v8, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_2_2:I

    add-int/2addr v8, v11

    int-to-float v8, v8

    div-float/2addr v8, v5

    add-float/2addr v3, v8

    .line 56
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_2_2:I

    add-int/2addr v11, v8

    int-to-float v8, v11

    div-float/2addr v8, v5

    sub-float/2addr v2, v8

    iget v5, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_icon_center_offset_2_2:F

    goto :goto_0

    :cond_3
    move v5, v4

    move v2, v7

    move v3, v2

    goto :goto_1

    .line 57
    :cond_4
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v8, v5, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_3_3:I

    int-to-float v11, v10

    mul-float/2addr v11, v6

    iget v12, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float/2addr v11, v12

    int-to-float v13, v10

    mul-float/2addr v13, v6

    div-float v14, v13, v12

    const/16 v12, 0x9

    if-lt v2, v12, :cond_5

    move v5, v3

    move v2, v7

    move v3, v2

    move v12, v11

    goto :goto_1

    .line 58
    :cond_5
    div-int/lit8 v12, v2, 0x3

    .line 59
    rem-int/2addr v2, v9

    .line 60
    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    iget v9, v5, Lcom/smartisanos/smengine/a/j;->x:F

    sub-int/2addr v2, v3

    iget v13, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_3_3:I

    add-int/2addr v13, v10

    mul-int/2addr v2, v13

    int-to-float v2, v2

    add-float/2addr v2, v9

    .line 61
    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    sub-int/2addr v12, v3

    iget v3, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_3_3:I

    add-int/2addr v10, v3

    mul-int/2addr v12, v10

    int-to-float v3, v12

    sub-float/2addr v5, v3

    iget v3, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_icon_center_offset_3_3:F

    add-float/2addr v3, v5

    move v5, v4

    move v12, v11

    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    goto :goto_1

    .line 62
    :cond_6
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v2, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_2_2:I

    int-to-float v9, v8

    mul-float/2addr v9, v6

    iget v10, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float v12, v9, v10

    int-to-float v9, v8

    mul-float/2addr v9, v6

    div-float v14, v9, v10

    .line 63
    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    iget v9, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_2_2:I

    add-int/2addr v10, v8

    int-to-float v10, v10

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    .line 64
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_2_2:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    div-float/2addr v8, v5

    add-float/2addr v2, v8

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_icon_center_offset_2_2:F

    add-float/2addr v2, v3

    move v5, v4

    move v3, v9

    .line 65
    :goto_1
    new-instance v8, Lcom/smartisanos/smengine/g;

    invoke-direct {v8}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 66
    new-instance v9, Lcom/smartisanos/smengine/oa;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 67
    invoke-virtual {v9, v4}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 68
    iget-object v10, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v10

    .line 69
    invoke-virtual {v10}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v10

    const/16 v16, 0x1

    .line 70
    iget v11, v10, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v10, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v19, 0x3f800000    # 1.0f

    iget v13, v0, Lcom/smartisanos/launcher/view/a/X;->icon_scale:F

    div-float v20, v12, v13

    div-float v21, v14, v13

    const/high16 v22, 0x3f800000    # 1.0f

    move-object v15, v9

    move/from16 v17, v11

    move/from16 v18, v10

    invoke-virtual/range {v15 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const v10, 0x3e4cccce    # 0.20000002f

    .line 71
    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 72
    new-instance v15, Lcom/smartisanos/smengine/oa;

    iget-object v11, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v15, v11}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 73
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 74
    iget-object v12, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 75
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 76
    invoke-virtual {v1, v12}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 77
    iget v1, v12, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v1, v3

    iput v1, v12, Lcom/smartisanos/smengine/a/j;->x:F

    .line 78
    iget v1, v12, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v1, v2

    iput v1, v12, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v11}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v13

    invoke-virtual {v11}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v14

    invoke-virtual {v11}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v2

    .line 80
    invoke-virtual {v12}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v16

    invoke-virtual {v12}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v17

    const/16 v18, 0x0

    move-object v11, v15

    move v12, v1

    move-object v1, v15

    move v15, v2

    .line 81
    invoke-virtual/range {v11 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 82
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 83
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocalTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/h;->Bt()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 84
    new-instance v3, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v3}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 85
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v7, v7, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/16 v12, 0x13

    invoke-virtual {v3, v2, v11, v12, v10}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 86
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v4

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v2

    invoke-virtual {v8, v7, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    if-eqz v5, :cond_7

    .line 87
    new-instance v2, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v2}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 88
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v6, v6, v6, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v5, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v5, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v2, v3, v5, v12, v10}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 89
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v4

    invoke-static {v3, v2}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 91
    invoke-virtual {v8, v7, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 92
    :cond_7
    invoke-virtual {v8, v7, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 93
    invoke-virtual {v8, v7, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move-object/from16 v1, p1

    .line 94
    invoke-virtual {v1, v7, v8}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 95
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    return-void
.end method

.method public d(Lcom/smartisanos/smengine/g;F)V
    .locals 12

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smartisanos/smengine/oa;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/oa;->kill()V

    .line 29
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/oa;

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    .line 30
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 31
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    const/16 v1, 0xe

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 32
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object p2

    .line 33
    iget-object v1, p2, Lcom/smartisanos/smengine/d/f;->qY:Lcom/smartisanos/smengine/a/k;

    .line 34
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 35
    iget v7, v1, Lcom/smartisanos/smengine/a/k;->w:F

    .line 36
    invoke-virtual {p2}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 37
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 38
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    new-instance v1, Lcom/smartisanos/launcher/view/a/v;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/launcher/view/a/v;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    if-nez p1, :cond_1

    .line 39
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/oa;->start()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 40
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Ey:Lcom/smartisanos/smengine/oa;

    invoke-virtual {p1, p2, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Lcom/smartisanos/smengine/g;FF)V
    .locals 11

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 2
    invoke-virtual/range {v0 .. v10}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/smengine/g;ZFFZFFZFF)V

    return-void
.end method

.method public da(Z)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 4
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "convertCellStatus, add to page view"

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 7
    iput-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/l;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/l;->Wg()Lcom/smartisanos/smengine/g;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 13
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 14
    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/a/j;->w(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 15
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v5, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v4, v5, v6, p1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, p1, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget-object v6, p1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v5, v7

    .line 18
    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p1, v5, v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 21
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/SceneNode;->setInteractionState(I)V

    .line 22
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 24
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 25
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, p1, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/d;->Rg()Lcom/smartisanos/smengine/ha;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 26
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, p1, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/d;->Qg()Lcom/smartisanos/smengine/fa;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, p1, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/d;->Pg()Lcom/smartisanos/smengine/V;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/SceneNode;->setCollideListener(Lcom/smartisanos/smengine/V;)V

    .line 28
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/V;->w(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result p1

    .line 29
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 30
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v4, v5, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    .line 31
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    .line 32
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const v5, 0x8000

    invoke-virtual {v4, v5, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 33
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 34
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->dp()V

    .line 35
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->cp()V

    if-eqz p1, :cond_4

    .line 36
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->gp()V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->yZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2, v4, p1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 41
    :cond_4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Ko()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 42
    iget-object v1, p1, Lcom/smartisanos/launcher/view/a/g;->FH:Lcom/smartisanos/launcher/view/l;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2, p1}, Lcom/smartisanos/launcher/view/l;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;)V

    .line 43
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->start()V

    .line 44
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/animations/r;->h(Lcom/smartisanos/launcher/view/a/g;)V

    .line 45
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/smartisanos/smengine/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/smengine/l;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/Sc;->g(Lcom/smartisanos/smengine/l;)I

    .line 48
    invoke-virtual {p1, v3}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_1

    .line 49
    :cond_6
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "convertCellStatus, add to dock view"

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 50
    :cond_7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    if-eqz p1, :cond_8

    .line 51
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 52
    iput-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    .line 53
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/db;->dh()V

    .line 55
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->om()V

    .line 56
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/animations/r;->g(Lcom/smartisanos/launcher/view/a/g;)V

    .line 57
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 58
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 59
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, p1, Lcom/smartisanos/launcher/view/a/g;->FH:Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/d;->Rg()Lcom/smartisanos/smengine/ha;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 60
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, p1, Lcom/smartisanos/launcher/view/a/g;->FH:Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/d;->Qg()Lcom/smartisanos/smengine/fa;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 61
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/SceneNode;->setCollideListener(Lcom/smartisanos/smengine/V;)V

    .line 62
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 63
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 64
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    .line 65
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :goto_1
    return-void
.end method

.method public e(Lcom/smartisanos/smengine/g;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_0
    return-void
.end method

.method public e(Lcom/smartisanos/smengine/g;F)V
    .locals 12

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 5
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-direct {v11, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 6
    invoke-virtual {v11, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 p2, 0xe

    .line 7
    invoke-virtual {v11, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v1, v11

    .line 8
    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 p1, 0x1000

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    return-void
.end method

.method public e(Lcom/smartisanos/smengine/g;FF)V
    .locals 11

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1
    invoke-virtual/range {v0 .. v10}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/smengine/g;ZFFZFFZFF)V

    return-void
.end method

.method public f(Lcom/smartisanos/smengine/g;F)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v4, 0x0

    const/16 v5, 0x80

    const/16 v6, 0x100

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_c

    .line 3
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v6, v8}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 4
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v5, v8}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 5
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v8}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/F;

    const/16 v5, 0x1b

    const v6, 0x3ee66666    # 0.45f

    if-eqz v3, :cond_9

    .line 6
    iget-object v10, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v10

    if-eq v9, v10, :cond_9

    if-eqz v1, :cond_6

    .line 7
    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 8
    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const v10, 0x8000

    invoke-virtual {v6, v10, v9}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 9
    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/launcher/view/a/ga;->ma(Z)V

    .line 10
    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/Z;->Ai()V

    .line 11
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/F;

    if-eqz v3, :cond_0

    .line 14
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_3

    .line 16
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v9}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_1
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v5, 0x200

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 20
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 21
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_2
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 23
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_3
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_5

    .line 25
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 26
    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 27
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3ee66666    # 0.45f

    const v16, 0x3ee66666    # 0.45f

    const v17, 0x3ee66666    # 0.45f

    const v18, 0x3ee66666    # 0.45f

    move-object v9, v3

    .line 28
    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 29
    invoke-virtual {v1, v4, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    if-nez v8, :cond_4

    .line 30
    new-instance v5, Lcom/smartisanos/launcher/view/a/q;

    invoke-direct {v5, v0}, Lcom/smartisanos/launcher/view/a/q;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 31
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 32
    :cond_6
    invoke-virtual {v3, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 33
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_7

    .line 34
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v9}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v1, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 35
    :cond_7
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_8

    .line 36
    invoke-virtual {v1, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 37
    :cond_8
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto/16 :goto_1

    .line 38
    :cond_9
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-nez v2, :cond_b

    if-nez v1, :cond_b

    .line 39
    invoke-virtual {v3, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 40
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_a

    .line 41
    invoke-virtual {v1, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 42
    :cond_a
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_1

    .line 43
    :cond_b
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_1

    .line 44
    :cond_c
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v6, v9}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 45
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v10, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v10, v10, v7

    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 46
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    if-eqz v1, :cond_d

    .line 47
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v7

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 48
    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 49
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v10, v3

    .line 50
    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 51
    new-instance v2, Lcom/smartisanos/launcher/view/a/s;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/a/s;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 52
    invoke-virtual {v1, v4, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    .line 53
    :cond_d
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v6, v8}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 54
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 55
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 56
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v5, v9}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 57
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :goto_1
    return-void
.end method

.method public f(Lcom/smartisanos/smengine/g;FF)V
    .locals 11

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v6, p3

    move v9, p3

    .line 1
    invoke-virtual/range {v0 .. v10}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/smengine/g;ZFFZFFZFF)V

    return-void
.end method

.method public g(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Lcom/smartisanos/launcher/view/a/X;->Jy:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/launcher/view/a/X;->Jy:I

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Lcom/smartisanos/launcher/view/a/X;->Jy:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/launcher/view/a/X;->Jy:I

    :goto_0
    return-void
.end method

.method public g(Lcom/smartisanos/smengine/g;FF)V
    .locals 12

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 5
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-direct {v11, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 6
    invoke-virtual {v11, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v0, 0xe

    .line 7
    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v1, v11

    .line 8
    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 9
    invoke-virtual {p1, p3, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-direct {v11, p0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 12
    invoke-virtual {v11, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 13
    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v1, v11

    .line 14
    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 15
    invoke-virtual {p1, p3, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_0
    return-void
.end method

.method public getAnimation(I)Lcom/smartisanos/smengine/g;
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->zy:Lcom/smartisanos/smengine/g;

    return-object p0

    :cond_0
    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    return-object p0

    :cond_1
    const/16 v0, 0x800

    if-ne v0, p1, :cond_2

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public mi()Lcom/smartisanos/smengine/g;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/aa;->q(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 5
    :cond_1
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### cell newImageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->By:Lcom/smartisanos/smengine/g;

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v3}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 8
    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->By:Lcom/smartisanos/smengine/g;

    .line 9
    :cond_3
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->By:Lcom/smartisanos/smengine/g;

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-nez v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 13
    new-instance v13, Lcom/smartisanos/smengine/oa;

    invoke-direct {v13, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v1, 0x3e99999a    # 0.3f

    .line 14
    invoke-virtual {v13, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v1, 0xe

    .line 15
    invoke-virtual {v13, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object v3, v13

    .line 16
    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 17
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/X;->By:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/a/m;

    invoke-direct {v3, p0, v2, v0}, Lcom/smartisanos/launcher/view/a/m;-><init>(Lcom/smartisanos/launcher/view/a/X;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->By:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v13}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->By:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method public oi()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    .line 2
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    const v3, 0x3e8f5c29    # 0.28f

    invoke-virtual {v1, v2, v3, v3}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/smengine/g;FF)V

    .line 5
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v2, 0x3e4ccccd    # 0.2f

    .line 6
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 7
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 8
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 9
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 10
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 11
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 12
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v12, 0x0

    if-eqz v7, :cond_1

    .line 13
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4, v12, v12}, Lcom/smartisanos/smengine/SceneNode;->setDragPoint(FF)V

    .line 14
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v6, v4, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v4

    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v7, v6, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    iget v6, v6, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    invoke-virtual {v4, v7, v6}, Lcom/smartisanos/launcher/view/d;->g(FF)Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 16
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

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f866666    # 1.05f

    invoke-virtual {v9, v10, v12, v8, v11}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v8

    .line 18
    iget v7, v7, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float v9, v7, v8

    div-float/2addr v9, v7

    sub-float v10, v7, v8

    div-float/2addr v10, v7

    .line 19
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    iget v11, v4, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v11, v9

    iget v9, v4, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v9, v10

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr v4, v8

    invoke-direct {v7, v11, v9, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 20
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v4

    .line 22
    invoke-virtual {v4, v7, v6}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    :goto_0
    const/4 v7, 0x0

    .line 23
    iget v8, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v5, Lcom/smartisanos/smengine/a/j;->z:F

    iget v11, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v6, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v4, v1

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v13

    move v11, v14

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 24
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v12, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 25
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 26
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 27
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 28
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object v13, v1

    .line 29
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 30
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v12, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 31
    :cond_2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 32
    new-instance v4, Lcom/smartisanos/smengine/oa;

    invoke-direct {v4, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 33
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 34
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object v13, v4

    .line 35
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 36
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 37
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/smengine/g;FZ)V

    .line 38
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    new-instance v4, Lcom/smartisanos/launcher/view/a/W;

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/view/a/W;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 39
    sget-object v1, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v12, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 40
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_5

    .line 41
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v4, 0x19

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v4

    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-ne v4, v5, :cond_4

    const/4 v0, 0x0

    .line 44
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_1

    .line 45
    :cond_4
    new-instance v13, Lcom/smartisanos/smengine/oa;

    invoke-direct {v13, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 46
    invoke-virtual {v13, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 47
    invoke-virtual {v13, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v13

    .line 48
    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 49
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v12, v13}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 50
    new-instance v2, Lcom/smartisanos/launcher/view/a/h;

    invoke-direct {v2, v0, v1}, Lcom/smartisanos/launcher/view/a/h;-><init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v13, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public pi()V
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, 0x1000

    .line 1
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/X;->Aa(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 4
    iput-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v1

    const/16 v3, 0x10

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_4

    .line 6
    :cond_2
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v1, v1, Lcom/smartisanos/launcher/view/a/g;->vH:Z

    if-nez v1, :cond_4

    .line 7
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 8
    :cond_4
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 10
    iput-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    .line 11
    :cond_5
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    .line 12
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xa

    aget-object v4, v1, v2

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    const/16 v9, 0xe

    if-eqz v4, :cond_6

    .line 13
    new-instance v4, Lcom/smartisanos/smengine/oa;

    aget-object v1, v1, v2

    invoke-direct {v4, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 14
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    .line 15
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float v15, v10, v5

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float v16, v1, v5

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v10, v4

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 16
    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 17
    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 18
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 19
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v4, v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v11, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v10, v1

    .line 20
    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 21
    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 22
    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 23
    new-instance v2, Lcom/smartisanos/launcher/view/a/I;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/a/I;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 24
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v7, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 25
    :cond_6
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v6

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v2, :cond_7

    .line 26
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float v11, v1, v10

    div-float/2addr v1, v10

    invoke-direct {v2, v11, v1, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 27
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    iget v11, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v0, Lcom/smartisanos/launcher/view/a/X;->icon_scale:F

    mul-float/2addr v11, v12

    iget v13, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v13, v12

    invoke-direct {v1, v11, v13, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 28
    new-instance v11, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v11}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 29
    invoke-virtual {v11, v1, v2, v9, v8}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 30
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v6

    invoke-static {v1, v11}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 32
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v7, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 33
    :cond_7
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    if-eqz v1, :cond_8

    .line 34
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->mt()F

    move-result v1

    iget-object v11, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v11, v11, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float/2addr v11, v10

    mul-float/2addr v1, v11

    .line 35
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v11, v1, v1, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 36
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    iget v13, v0, Lcom/smartisanos/launcher/view/a/X;->icon_scale:F

    mul-float v14, v1, v13

    mul-float/2addr v1, v13

    invoke-direct {v12, v14, v1, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 37
    new-instance v1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 38
    invoke-virtual {v1, v12, v11, v9, v8}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 39
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v4, v2

    invoke-static {v2, v1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 41
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v7, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 42
    :cond_8
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v1, v3

    if-eqz v2, :cond_9

    .line 43
    new-instance v2, Lcom/smartisanos/smengine/oa;

    aget-object v1, v1, v3

    invoke-direct {v2, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 44
    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 45
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/a/aa;->p(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    .line 46
    iget v4, v1, Lcom/smartisanos/smengine/a/i;->x:F

    div-float v16, v4, v10

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    div-float v17, v1, v10

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v11, v2

    invoke-virtual/range {v11 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 47
    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 48
    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 49
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 50
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v10, v1

    .line 51
    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 52
    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 53
    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 54
    new-instance v2, Lcom/smartisanos/launcher/view/a/J;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/a/J;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 55
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v7, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 56
    :cond_9
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x18

    aget-object v3, v1, v2

    if-eqz v3, :cond_a

    .line 57
    new-instance v3, Lcom/smartisanos/smengine/oa;

    aget-object v1, v1, v2

    invoke-direct {v3, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 58
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    .line 59
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float v15, v4, v5

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float v16, v1, v5

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v10, v3

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 60
    invoke-virtual {v3, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 61
    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 62
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 63
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v3, v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v11, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v10, v1

    .line 64
    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 65
    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 66
    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 67
    new-instance v2, Lcom/smartisanos/launcher/view/a/K;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/a/K;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 68
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v7, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 69
    :cond_a
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/a/L;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/a/L;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 70
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 71
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### draggedCellExitFolderBoundingRect"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public qi()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    const/16 v1, 0x1000

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 6
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0xa

    aget-object v4, v1, v3

    const v5, 0x3e19999a    # 0.15f

    if-eqz v4, :cond_1

    .line 7
    new-instance v4, Lcom/smartisanos/smengine/oa;

    aget-object v1, v1, v3

    invoke-direct {v4, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 8
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v7, 0x1

    .line 9
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v9, v6, v8

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v1, v8

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v6, v4

    move v8, v9

    move v9, v1

    invoke-virtual/range {v6 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/16 v1, 0xf

    .line 10
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 11
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 12
    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    iget v7, v0, Lcom/smartisanos/launcher/view/a/X;->Ly:F

    invoke-virtual {v6, v7, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 13
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v6, v6, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v6, v3

    invoke-direct {v4, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v9, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v4

    .line 14
    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 15
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 16
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 17
    new-instance v1, Lcom/smartisanos/launcher/view/a/G;

    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/view/a/G;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 18
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    iget v3, v0, Lcom/smartisanos/launcher/view/a/X;->Ly:F

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 19
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v2

    const/16 v4, 0xe

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    .line 20
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float v8, v1, v6

    div-float/2addr v1, v6

    invoke-direct {v3, v8, v1, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 21
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    iget v8, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v0, Lcom/smartisanos/launcher/view/a/X;->icon_scale:F

    mul-float/2addr v8, v9

    iget v10, v3, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v10, v9

    invoke-direct {v1, v8, v10, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 22
    new-instance v8, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v8}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 23
    invoke-virtual {v8, v3, v1, v4, v5}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 24
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v2

    invoke-static {v1, v8}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 26
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    iget v8, v0, Lcom/smartisanos/launcher/view/a/X;->Ly:F

    invoke-virtual {v3, v8, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 27
    :cond_2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x1b

    aget-object v1, v1, v3

    if-eqz v1, :cond_3

    .line 28
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->mt()F

    move-result v1

    iget-object v8, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v8, v8, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float/2addr v8, v6

    mul-float/2addr v1, v8

    .line 29
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6, v1, v1, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 30
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    iget v8, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v0, Lcom/smartisanos/launcher/view/a/X;->icon_scale:F

    mul-float/2addr v8, v9

    iget v10, v6, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v10, v9

    invoke-direct {v1, v8, v10, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 31
    new-instance v7, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v7}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 32
    invoke-virtual {v7, v6, v1, v4, v5}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 33
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    invoke-static {v1, v7}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 35
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    iget v3, v0, Lcom/smartisanos/launcher/view/a/X;->Ly:F

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 36
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/a/H;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/a/H;-><init>(Lcom/smartisanos/launcher/view/a/X;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 37
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 38
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->wm()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_4
    return-void
.end method

.method public ri()Lcom/smartisanos/launcher/animations/G;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Cy:Lcom/smartisanos/launcher/animations/G;

    return-object p0
.end method

.method public si()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Dy:Lcom/smartisanos/smengine/g;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Dy:Lcom/smartisanos/smengine/g;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Dy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Kj()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Dy:Lcom/smartisanos/smengine/g;

    const v1, 0x3dcccccd    # 0.1f

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->isCancelForSetPress()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/smengine/g;FZ)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Dy:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public ti()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/Z;->xi()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Dy:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/X;->e(Lcom/smartisanos/smengine/g;)V

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v3

    const v4, 0x3d4ccccd    # 0.05f

    const/16 v5, 0x64

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/a;

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 11
    new-instance v0, Lcom/smartisanos/launcher/view/a/n;

    invoke-direct {v0, p0, v5}, Lcom/smartisanos/launcher/view/a/n;-><init>(Lcom/smartisanos/launcher/view/a/X;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Ky:Lcom/smartisanos/smengine/n;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Ky:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 17
    :cond_5
    new-instance v0, Lcom/smartisanos/launcher/view/a/o;

    invoke-direct {v0, p0, v5}, Lcom/smartisanos/launcher/view/a/o;-><init>(Lcom/smartisanos/launcher/view/a/X;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Ky:Lcom/smartisanos/smengine/n;

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Ky:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/activeicon/a;

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/a;->rq()V

    .line 21
    :cond_6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const v0, 0x3f7d70a4    # 0.99f

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->b(FZ)V

    :cond_7
    :goto_2
    return-void
.end method

.method public za(I)V
    .locals 1

    const/16 v0, 0x80

    if-ne v0, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Dy:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/X;->e(Lcom/smartisanos/smengine/g;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->By:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/X;->e(Lcom/smartisanos/smengine/g;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->yy:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/X;->e(Lcom/smartisanos/smengine/g;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-ne v0, p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/X;->Ay:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/X;->e(Lcom/smartisanos/smengine/g;)V

    :cond_3
    :goto_0
    return-void
.end method
