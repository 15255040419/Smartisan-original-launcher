.class public Lcom/smartisanos/launcher/view/Ec;
.super Lcom/smartisanos/smengine/SceneNode;
.source "SettingButton.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private eO:Lcom/smartisanos/smengine/F;

.field private fO:Lcom/smartisanos/smengine/F;

.field private gO:Lcom/smartisanos/smengine/F;

.field private hO:Lcom/smartisanos/smengine/F;

.field public iO:Z

.field private jO:F

.field private kO:Lcom/smartisanos/smengine/g;

.field private lO:Lcom/smartisanos/smengine/F;

.field private mO:Z

.field private nO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Ec;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ec;->iO:Z

    const v0, 0x3f19999a    # 0.6f

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/view/Ec;->jO:F

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ec;->mO:Z

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ec;->nO:Z

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ec;->Ug()V

    return-void
.end method

.method private Ug()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/wc;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/wc;-><init>(Lcom/smartisanos/launcher/view/Ec;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ec;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ec;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(Lcom/smartisanos/smengine/g;Z)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 15
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    const v3, 0x3e99999a    # 0.3f

    if-eqz v2, :cond_1

    .line 16
    sget-object v4, Lcom/smartisanos/smengine/a/k;->ZERO:Lcom/smartisanos/smengine/a/k;

    .line 17
    sget-object v5, Lcom/smartisanos/smengine/a/k;->VV:Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 18
    :cond_1
    sget-object v4, Lcom/smartisanos/smengine/a/k;->VV:Lcom/smartisanos/smengine/a/k;

    .line 19
    sget-object v5, Lcom/smartisanos/smengine/a/k;->ZERO:Lcom/smartisanos/smengine/a/k;

    .line 20
    :goto_0
    new-instance v15, Lcom/smartisanos/smengine/oa;

    invoke-direct {v15, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 21
    invoke-virtual {v15, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v14, 0xe

    .line 22
    invoke-virtual {v15, v14}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v7, 0x3

    .line 23
    iget v8, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v11, v4, Lcom/smartisanos/smengine/a/k;->w:F

    iget v12, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v13, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v3, v5, Lcom/smartisanos/smengine/a/k;->w:F

    move/from16 v16, v6

    move-object v6, v15

    move/from16 v14, v16

    move-object/from16 v16, v4

    move-object v4, v15

    move v15, v3

    invoke-virtual/range {v6 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 24
    new-instance v3, Lcom/smartisanos/launcher/view/zc;

    invoke-direct {v3, v0, v2}, Lcom/smartisanos/launcher/view/zc;-><init>(Lcom/smartisanos/launcher/view/Ec;Z)V

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {v1, v0, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    .line 28
    :cond_2
    iget-object v4, v3, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v3, v3, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 31
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/smengine/SceneNode;

    .line 32
    new-instance v7, Lcom/smartisanos/smengine/oa;

    invoke-direct {v7, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v6, 0x3e99999a    # 0.3f

    .line 33
    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v8, 0xe

    .line 34
    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v18, 0x3

    .line 35
    iget v9, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v10, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v11, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v12, v5, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v13, v16

    iget v14, v13, Lcom/smartisanos/smengine/a/k;->x:F

    iget v15, v13, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, v13, Lcom/smartisanos/smengine/a/k;->z:F

    iget v8, v13, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v17, v7

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v6

    move/from16 v26, v8

    invoke-virtual/range {v17 .. v26}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 36
    invoke-virtual {v1, v0, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Ec;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ec;->nO:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Ec;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Ec;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Ec;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ec;->wc(Z)V

    return-void
.end method

.method private j(Lcom/smartisanos/smengine/g;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v2, 0x3e99999a    # 0.3f

    .line 3
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 4
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v4, 0x2

    .line 5
    new-instance v5, Ljava/lang/Float;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    new-instance v7, Ljava/lang/Float;

    const v8, -0x4079f56e

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v1, v4, v5, v7}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    move-object/from16 v4, p1

    .line 6
    invoke-virtual {v4, v6, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 7
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-direct {v1, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 9
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 10
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v13, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v14, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v15, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v2, v2, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v7, v1

    move/from16 v16, v2

    invoke-virtual/range {v7 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 11
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v6, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 12
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 13
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v4, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v5, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v7, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v2, v2, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v1, v4, v5, v7, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 14
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 15
    new-instance v2, Lcom/smartisanos/launcher/view/Bc;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/Bc;-><init>(Lcom/smartisanos/launcher/view/Ec;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const v2, 0x3e4ccccd    # 0.2f

    .line 16
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 17
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v9, 0x3

    .line 18
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v10, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v11, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v12, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v13, v2, Lcom/smartisanos/smengine/a/k;->w:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v1

    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 19
    iget-object v0, v0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v6, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method private k(Lcom/smartisanos/smengine/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ec;->a(Lcom/smartisanos/smengine/g;Z)V

    return-void
.end method

.method private l(Lcom/smartisanos/smengine/g;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const v1, 0x3e99999a    # 0.3f

    .line 2
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 4
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v4, 0x2

    .line 5
    new-instance v5, Ljava/lang/Float;

    const v6, -0x4079f56e

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    new-instance v6, Ljava/lang/Float;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    move-object/from16 v4, p1

    .line 6
    invoke-virtual {v4, v7, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 7
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 8
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 9
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v9, 0x3

    .line 10
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v10, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v11, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v12, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v13, v1, Lcom/smartisanos/smengine/a/k;->w:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 11
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 12
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v4, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v5, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v2, v2, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v1, v4, v5, v6, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 14
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 15
    new-instance v2, Lcom/smartisanos/launcher/view/Ac;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/Ac;-><init>(Lcom/smartisanos/launcher/view/Ec;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const v2, 0x3e4ccccd    # 0.2f

    .line 16
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 17
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v9, 0x3

    .line 18
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v10, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v11, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v12, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v13, v2, Lcom/smartisanos/smengine/a/k;->w:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v1

    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 19
    iget-object v0, v0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v7, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_1
    return-void
.end method

.method private m(Lcom/smartisanos/smengine/g;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/Ec;->a(Lcom/smartisanos/smengine/g;Z)V

    return-void
.end method

.method private wc(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ec;->mO:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Ec;->mO:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 12
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ec;->ep()V

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method private wz()V
    .locals 18

    const-string v0, "setting_button/editBtn_bg.png"

    .line 1
    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "setting_button/editBtn_gear.png"

    .line 2
    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "setting_button/editBtn_inShadow.png"

    .line 3
    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    # Let's get Eb.getInstance()
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    if-nez v3, :cond_get_v

    goto :cond_fallback

    :cond_get_v
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    if-nez v3, :cond_get_mode

    goto :cond_fallback

    :cond_get_mode
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    if-nez v3, :cond_get_size

    goto :cond_fallback

    :cond_get_size
    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    # Now we call our new Java helper to compose down bitmap (pressed = true)
    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->composeSettingButtonTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_get_down_ok

    goto :cond_fallback

    :cond_get_down_ok
    # Now call our new Java helper to compose up bitmap (pressed = false)
    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5, v3}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->composeSettingButtonTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_get_up_ok

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :cond_fallback

    :cond_get_up_ok
    # If both are ok, we register them as textures!
    new-instance v5, Lcom/smartisanos/smengine/Da;

    invoke-direct {v5, v4}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v4, v4, v4}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v7

    const-string v8, "***settingbuttondown***"

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v5}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    # For up:
    new-instance v5, Lcom/smartisanos/smengine/Da;

    invoke-direct {v5, v3}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    invoke-virtual {v5, v6, v4, v4, v4}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v3

    const-string v6, "***settingbuttonup***"

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v5}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    # Recycle original resources
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_fallback
    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 7
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v8, 0x1

    .line 9
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 13
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v10, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v0, v13, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 15
    div-int/lit8 v13, v3, 0x2

    int-to-float v14, v13

    invoke-virtual {v6, v14, v14}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v14, 0x42700000    # 60.0f

    .line 16
    invoke-virtual {v6, v14}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v14, v3

    .line 17
    div-int/lit8 v14, v14, 0x2

    .line 18
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 20
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move/from16 v16, v11

    .line 21
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v10, v10, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    move/from16 v17, v8

    div-int/lit8 v8, v4, 0x2

    invoke-direct {v10, v14, v14, v13, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v1, v11, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 22
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    const/4 v8, 0x0

    .line 23
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 24
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 25
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 26
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v8, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v2, v13, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 27
    new-instance v6, Lcom/smartisanos/smengine/Da;

    invoke-direct {v6, v5}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x1

    .line 28
    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    const/4 v7, 0x4

    .line 29
    invoke-virtual {v6, v7, v5, v5, v5}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    .line 30
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v8

    const-string v10, "***settingbuttondown***"

    .line 31
    invoke-virtual {v8, v10}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8, v10, v6}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 33
    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 35
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 36
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 37
    new-instance v6, Landroid/graphics/Rect;

    move/from16 v8, v16

    const/4 v10, 0x0

    invoke-direct {v6, v10, v10, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v0, v6, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    new-instance v6, Landroid/graphics/Rect;

    move/from16 v8, v17

    invoke-direct {v6, v10, v10, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1, v6, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 39
    new-instance v4, Lcom/smartisanos/smengine/Da;

    invoke-direct {v4, v3}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    .line 40
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    .line 41
    invoke-virtual {v4, v7, v3, v3, v3}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    .line 42
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v5

    const-string v6, "***settingbuttonup***"

    .line 43
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v5, v6, v4}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 45
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 48
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private xz()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    const/4 v2, 0x1

    const-string v3, "settingButtonRect"

    const/4 v4, 0x0

    .line 4
    invoke-static {v3, v1, v0, v4, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 5
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 7
    new-instance v3, Lcom/smartisanos/smengine/Ca;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v2, v2}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    const-string v1, "***settingbuttonup***"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v0

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    iget v0, v0, Lcom/smartisanos/launcher/view/kb;->jw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method private z(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v2, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Bi()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ec;->wz()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public Db(Z)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Ec;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "SettingButton, handleTap"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Am()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/view/Ec;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "handleTap error by current mode is SINGLE_PAGE_MODE"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_4

    .line 5
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/view/Ec;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "handle animation now !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 6
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    .line 9
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    .line 10
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Ec;->iO:Z

    const v4, 0x3f19999a    # 0.6f

    const v5, 0x3e99999a    # 0.3f

    const/16 v6, 0x4000

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_6

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 12
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/smartisanos/launcher/view/Ec;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "buttonAlreadyDown true !"

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 13
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 14
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v6, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->Paa:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    invoke-virtual {p0, v6, v3}, Lcom/smartisanos/launcher/view/Ec;->a(Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;Ljava/util/ArrayList;)V

    .line 18
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    const v9, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v6, v9}, Lcom/smartisanos/launcher/view/Eb;->b(Lcom/smartisanos/smengine/g;F)V

    .line 19
    invoke-direct {p0, v8}, Lcom/smartisanos/launcher/view/Ec;->wc(Z)V

    .line 20
    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->qZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v2, v6, v5, v3}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 21
    sget-object v2, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->DZ:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->b(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/g;F)V

    .line 22
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/xc;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/xc;-><init>(Lcom/smartisanos/launcher/view/Ec;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 23
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->fi()V

    goto :goto_0

    .line 24
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/Da;->vc()V

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 26
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/smartisanos/launcher/view/Ec;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "buttonAlreadyDown false !"

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 27
    :cond_7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 28
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 29
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    iget v6, p0, Lcom/smartisanos/launcher/view/Ec;->jO:F

    invoke-virtual {v0, v3, v6, v7}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/smengine/g;FI)V

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-direct {p0, v8}, Lcom/smartisanos/launcher/view/Ec;->wc(Z)V

    .line 33
    sget-object v6, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->Oaa:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    invoke-virtual {p0, v6, v3}, Lcom/smartisanos/launcher/view/Ec;->a(Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;Ljava/util/ArrayList;)V

    .line 34
    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/view/V;->ub(Z)V

    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;I)V

    .line 36
    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->pZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v2, v6, v5, v3}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 37
    sget-object v2, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->CZ:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->b(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/g;F)V

    .line 38
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/yc;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/yc;-><init>(Lcom/smartisanos/launcher/view/Ec;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 39
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zg()V

    .line 40
    :goto_0
    new-instance v0, Lcom/smartisanos/smengine/A;

    invoke-direct {v0}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 41
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/Ec;->iO:Z

    const v3, 0x3e8f5c29    # 0.28f

    if-eqz v2, :cond_8

    .line 42
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 43
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_9

    .line 44
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v4, v3, v3}, Lcom/smartisanos/launcher/view/b/fa;->j(Lcom/smartisanos/smengine/g;FF)V

    goto :goto_1

    .line 45
    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 46
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_9

    .line 47
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v4, v3, v3}, Lcom/smartisanos/launcher/view/b/fa;->h(Lcom/smartisanos/smengine/g;FF)V

    .line 48
    :cond_9
    :goto_1
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v1

    const-string v2, "settingButtonStatus"

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 50
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    if-eqz p1, :cond_a

    .line 51
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_a
    return-void
.end method

.method public _p()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ec;->kO:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;Ljava/util/ArrayList;)V
    .locals 3

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/view/Dc;->oy:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/smartisanos/launcher/view/Ec;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "SETTING_BUTTON_UP begin"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v2

    .line 7
    :goto_0
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ec;->m(Lcom/smartisanos/smengine/g;)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ec;->l(Lcom/smartisanos/smengine/g;)V

    goto :goto_2

    .line 10
    :cond_3
    :try_start_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/smengine/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object p1, v2

    .line 11
    :goto_1
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_4

    sget-object p2, Lcom/smartisanos/launcher/view/Ec;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "SETTING_BUTTON_DOWN begin"

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 12
    :cond_4
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p2, :cond_5

    .line 13
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ec;->k(Lcom/smartisanos/smengine/g;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Ec;->j(Lcom/smartisanos/smengine/g;)V

    :goto_2
    return-void
.end method

.method public aq()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    :cond_0
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->Di()I

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Ec;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### mMultiSelectNode.mSelectedCellList > 0 remove 1, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Ec;->Db(Z)V

    :cond_2
    return-void
.end method

.method public create()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ec;->wz()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Ec;->xz()V

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v1

    .line 5
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    float-to-int v2, v2

    const-string v3, "setting_button/editBtn_bg.png"

    .line 6
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v5, v5, v6, v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    .line 7
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    const-string v8, "TextureModularColorMaterial"

    invoke-static {v8}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 9
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 10
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 11
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 12
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v11, v10}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 13
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 14
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v3

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    iget v12, v3, Lcom/smartisanos/launcher/view/kb;->jw:I

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const-string v4, "setting_button/editBtn_pressed_bg.png"

    .line 18
    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5, v5, v6, v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v12

    iput-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    .line 19
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 20
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 21
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 22
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 23
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 24
    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 25
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 26
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-static {v8}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 27
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    iget v12, v3, Lcom/smartisanos/launcher/view/kb;->kw:I

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const-string v4, "setting_button/editBtn_gear.png"

    .line 28
    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5, v5, v6, v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v12

    iput-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    .line 29
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-static {v8}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 30
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 31
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 32
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 33
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 34
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 35
    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 36
    iget-object v12, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 37
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    iget v12, v3, Lcom/smartisanos/launcher/view/kb;->lw:I

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const-string v4, "setting_button/editBtn_inShadow.png"

    .line 38
    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5, v5, v6, v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    .line 39
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 40
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 41
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 42
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 43
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 44
    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-static {v8}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 47
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 48
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    iget v3, v3, Lcom/smartisanos/launcher/view/kb;->mw:I

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    neg-int v0, v2

    .line 49
    div-int/2addr v0, v9

    int-to-float v0, v0

    div-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual {p0, v0, v0, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 50
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 51
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ec;->ep()V

    .line 52
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    .line 54
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    div-float/2addr v0, v1

    .line 55
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v0, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 56
    iget v0, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, v0, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    :cond_0
    return-void
.end method

.method public ep()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ec;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ec;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ec;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ec;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ec;->z(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method public f(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/a/k;-><init>(Lcom/smartisanos/smengine/a/k;)V

    .line 2
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, p1}, Lcom/smartisanos/smengine/a/k;-><init>(Lcom/smartisanos/smengine/a/k;)V

    .line 3
    sget-object p1, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/a/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    .line 6
    :goto_0
    new-instance p1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {p1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 7
    invoke-virtual {p1, v1, v0, p3, p4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 8
    new-instance p2, Lcom/smartisanos/launcher/view/Cc;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/view/Cc;-><init>(Lcom/smartisanos/launcher/view/Ec;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p0

    .line 10
    invoke-virtual {p6, p5, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ec;->_p()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc

    if-eq v0, v2, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ms()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/Ec;->wc(Z)V

    return v1

    .line 5
    :cond_2
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ec;->wc(Z)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    sget-object p1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/a/k;->z:F

    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    return v1

    .line 8
    :cond_3
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/Ec;->Db(Z)V

    return v1

    .line 9
    :cond_4
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/Ec;->wc(Z)V

    return v1
.end method

.method public setColor(FFFF)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Ec;->nO:Z

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Ec;->wc(Z)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 7
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Ec;->nO:Z

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Ec;->wc(Z)V

    .line 9
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    return-void
.end method

.method public updateLayer()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateLayer()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ec;->lO:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    .line 5
    iget v2, v0, Lcom/smartisanos/launcher/view/kb;->jw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ec;->eO:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_1

    .line 7
    iget v2, v0, Lcom/smartisanos/launcher/view/kb;->jw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ec;->fO:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_2

    .line 9
    iget v2, v0, Lcom/smartisanos/launcher/view/kb;->kw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Ec;->gO:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_3

    .line 11
    iget v2, v0, Lcom/smartisanos/launcher/view/kb;->lw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 12
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ec;->hO:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_4

    .line 13
    iget v0, v0, Lcom/smartisanos/launcher/view/kb;->mw:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_4
    return-void
.end method
