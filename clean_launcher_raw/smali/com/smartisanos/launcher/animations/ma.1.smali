.class public Lcom/smartisanos/launcher/animations/ma;
.super Lcom/smartisanos/launcher/animations/V;
.source "IconSortAnimation.java"


# static fields
.field private static log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Sm:Ljava/util/ArrayList;

.field private Tm:Lcom/smartisanos/smengine/g;

.field private Um:Ljava/util/ArrayList;

.field private Vm:Ljava/util/ArrayList;

.field private Wm:F

.field private Xm:Lcom/smartisanos/smengine/a/j;

.field private Ym:B

.field private Zm:Lcom/smartisanos/smengine/g;

.field private _m:Lcom/smartisanos/smengine/g;

.field private an:Lcom/smartisanos/smengine/g;

.field private bn:Lcom/smartisanos/smengine/g;

.field private cn:Lcom/smartisanos/smengine/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/ma;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/V;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Um:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    const v0, 0x3dcccccd    # 0.1f

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/animations/ma;->Wm:F

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Xm:Lcom/smartisanos/smengine/a/j;

    const/4 v0, 0x0

    .line 6
    iput-byte v0, p0, Lcom/smartisanos/launcher/animations/ma;->Ym:B

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->_m:Lcom/smartisanos/smengine/g;

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->bn:Lcom/smartisanos/smengine/g;

    .line 11
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->cn:Lcom/smartisanos/smengine/g;

    return-void
.end method

.method private Aw()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 4
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v5

    .line 5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 6
    :goto_1
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    .line 8
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->dm()I

    move-result v6

    .line 9
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->cm()I

    move-result v7

    .line 10
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->getRenderTarget()Lcom/smartisanos/smengine/N;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/smengine/N;->p(II)Lcom/smartisanos/smengine/M;

    move-result-object v5

    .line 11
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Gc;

    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/smengine/M;)V

    .line 12
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Gc;

    move v6, v3

    :goto_2
    if-ge v6, v1, :cond_2

    .line 13
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/a/g;

    .line 14
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->wl()Ljava/lang/String;

    .line 15
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 16
    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 17
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v7

    invoke-virtual {v7, v6, v8}, Lcom/smartisanos/launcher/view/Ia;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 18
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v7

    const-string v9, "flip_anim_side.png"

    invoke-static {v9}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lcom/smartisanos/launcher/view/Ia;->b(ILjava/lang/String;)V

    .line 19
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->cq()Lcom/smartisanos/smengine/F;

    move-result-object v7

    invoke-virtual {v7, v6, v8}, Lcom/smartisanos/launcher/view/Ia;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 20
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v7, v3}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->eq()Lcom/smartisanos/smengine/F;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Lcom/smartisanos/launcher/view/Ia;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 22
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->eq()Lcom/smartisanos/smengine/F;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/smartisanos/launcher/view/Ia;->b(ILjava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 23
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x3cf5c28f    # 0.03f

    goto :goto_3

    :cond_4
    const v2, 0x3c8b4396    # 0.017f

    :goto_3
    move v4, v3

    .line 25
    :goto_4
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 26
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Gc;

    .line 27
    new-instance v6, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v7, 0x3

    .line 28
    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 29
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v7, v9, v8, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/oa;->c(Lcom/smartisanos/smengine/a/j;)V

    const/4 v7, 0x2

    const v10, -0x3fb6f025

    .line 30
    invoke-virtual {v6, v7, v10, v9}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 31
    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 32
    new-instance v7, Lcom/smartisanos/launcher/animations/la;

    invoke-direct {v7, v0, v5}, Lcom/smartisanos/launcher/animations/la;-><init>(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/launcher/view/Gc;)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 33
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    int-to-float v8, v4

    mul-float/2addr v8, v2

    invoke-virtual {v7, v8, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 34
    new-instance v6, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v7, 0xe

    .line 35
    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v10, 0x1

    .line 36
    iget v14, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v15, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v13, v0, Lcom/smartisanos/launcher/animations/ma;->Wm:F

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v9, v6

    move v11, v14

    move v12, v15

    invoke-virtual/range {v9 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const v7, 0x3dcccccd    # 0.1f

    .line 37
    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 38
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 39
    iget-object v9, v0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    const v10, 0x3e19999a    # 0.15f

    add-float/2addr v10, v8

    invoke-virtual {v9, v10, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 40
    new-instance v6, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v5, 0xd

    .line 41
    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v12, 0x1

    .line 42
    iget v5, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v1, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v15, 0x3f800000    # 1.0f

    iget v10, v0, Lcom/smartisanos/launcher/animations/ma;->Wm:F

    move-object v11, v6

    move v13, v5

    move v14, v9

    move/from16 v16, v5

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v11 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 43
    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 44
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 45
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    const v7, 0x3f333333    # 0.7f

    add-float/2addr v7, v8

    invoke-virtual {v5, v7, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/ma;Z)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/ma;->ic(Z)Lcom/smartisanos/smengine/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/ma;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/ma;->zw()V

    return-void
.end method

.method static synthetic access$1500()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/ma;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/ma;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/ma;->hc(Z)V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->Xm:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ma;->cn:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic d(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ma;->bn:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic d(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->Um:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->cn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ma;->_m:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic f(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->bn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic g(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->_m:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic h(Lcom/smartisanos/launcher/animations/ma;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/ma;->xw()V

    return-void
.end method

.method private hc(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    .line 7
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v1

    .line 11
    iget v2, v1, Lcom/smartisanos/launcher/a/b/i;->Ek:I

    .line 12
    sget-object v3, Lcom/smartisanos/launcher/animations/ma;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSortAnimation action ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], sortType ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    iget v1, v1, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    if-eq v1, v4, :cond_2

    const/4 v7, 0x3

    if-eq v1, v7, :cond_2

    const/4 v7, 0x4

    if-eq v1, v7, :cond_2

    const/16 v7, 0x64

    if-eq v1, v7, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->wZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    goto :goto_0

    .line 19
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->vZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 23
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    .line 25
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 26
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 27
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v3

    if-eq v3, v4, :cond_3

    if-ne v3, v6, :cond_4

    .line 28
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v5

    .line 29
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 31
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 32
    :cond_6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    move v1, v5

    .line 33
    :goto_3
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 34
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/ka;

    .line 35
    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/b/ka;->pb(Z)V

    .line 36
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 37
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 38
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/tc;->zb(Z)V

    .line 39
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/animations/ma;->Xm:Lcom/smartisanos/smengine/a/j;

    .line 40
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 41
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 42
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v7, 0x43fa0000    # 500.0f

    add-float/2addr v4, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v4, v7

    .line 43
    iget v7, v3, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v7, v4

    .line 44
    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v3, v4

    .line 45
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/ma;->Xm:Lcom/smartisanos/smengine/a/j;

    iget v9, v8, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v9, v4

    .line 46
    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v8, v4

    .line 47
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v4

    .line 49
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v10

    .line 50
    iget-object v11, v10, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 51
    iget-object v12, v10, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    const/high16 v13, -0x3c060000    # -500.0f

    .line 52
    invoke-virtual {v12, v7, v3, v13}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 53
    invoke-virtual {v4, v12, v11}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 54
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v4

    iget v7, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v4, v7, v3, v13}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 55
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v9, v8, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 56
    invoke-virtual {v10}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 57
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/ka;->updateGeometricState()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 58
    :cond_7
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/ma;->yw()V

    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/animations/fa;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/fa;-><init>(Lcom/smartisanos/launcher/animations/ma;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 60
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    if-eqz p1, :cond_8

    .line 61
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_8
    return-void
.end method

.method static synthetic i(Lcom/smartisanos/launcher/animations/ma;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/smartisanos/launcher/animations/ma;->Ym:B

    return p0
.end method

.method private ic(Z)Lcom/smartisanos/smengine/g;
    .locals 14

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    .line 3
    :goto_0
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 4
    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 6
    new-instance v4, Lcom/smartisanos/smengine/oa;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    mul-float/2addr v5, v0

    .line 7
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 8
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v5, v0

    .line 10
    invoke-virtual {v2, v5, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :goto_1
    move v9, v3

    move v13, v6

    goto :goto_2

    :cond_2
    mul-float/2addr v5, v0

    .line 11
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 12
    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move v13, v3

    move v9, v6

    .line 13
    :goto_2
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    move v6, v9

    move v7, v9

    move v8, v9

    move v10, v13

    move v11, v13

    move v12, v13

    .line 15
    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 16
    :goto_3
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v4, :cond_4

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/smartisanos/launcher/view/Lc;->b(ZF)Lcom/smartisanos/smengine/oa;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/smartisanos/launcher/view/V;->b(ZF)Lcom/smartisanos/smengine/oa;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_4
    const/4 v4, 0x0

    if-nez p1, :cond_7

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/Lc;->rb(Z)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/V;->rb(Z)V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/V;->kb(Z)V

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 23
    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/hc;->rb(Z)V

    :cond_5
    move v5, v4

    .line 24
    :goto_4
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 25
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/b/ka;

    .line 26
    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/view/b/ka;->rb(Z)V

    .line 27
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 28
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/tc;->Tp()Lcom/smartisanos/smengine/F;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 29
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/view/tc;->zb(Z)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 30
    :cond_7
    :goto_5
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 31
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/ka;

    const/4 v6, 0x1

    .line 32
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 33
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 34
    invoke-virtual {v5, p1, v0}, Lcom/smartisanos/launcher/view/b/M;->b(ZF)Lcom/smartisanos/smengine/oa;

    move-result-object v5

    .line 35
    invoke-virtual {v2, v3, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 36
    :cond_8
    new-instance v0, Lcom/smartisanos/launcher/animations/ka;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/animations/ka;-><init>(Lcom/smartisanos/launcher/animations/ma;Z)V

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    return-object v1
.end method

.method static synthetic j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    return-object p0
.end method

.method private xw()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/ma;->hc(Z)V

    return-void
.end method

.method private yw()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/animations/ma;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### current screen "

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v1

    .line 4
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 5
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    :goto_0
    if-ge v6, v4, :cond_1

    .line 7
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v7

    .line 8
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    move v7, v3

    :goto_1
    const/4 v8, 0x0

    if-ge v7, v1, :cond_4

    .line 10
    new-instance v9, Lcom/smartisanos/launcher/view/Gc;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SpecailDrawMultiTimesCube"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Lcom/smartisanos/launcher/view/Gc;-><init>(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->create()V

    .line 12
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v10

    iget v11, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v13, v0, Lcom/smartisanos/launcher/animations/ma;->Wm:F

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 13
    iget v10, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v9, v10, v11, v4}, Lcom/smartisanos/launcher/view/Gc;->a(FFI)V

    .line 14
    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v10, :cond_2

    .line 15
    invoke-virtual {v9, v4}, Lcom/smartisanos/launcher/view/Gc;->Qb(I)V

    .line 16
    :cond_2
    invoke-virtual {v9, v4}, Lcom/smartisanos/launcher/view/Gc;->Pb(I)V

    .line 17
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->dm()I

    move-result v10

    .line 18
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/a/g;->cm()I

    move-result v11

    .line 19
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/a/g;->getRenderTarget()Lcom/smartisanos/smengine/N;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lcom/smartisanos/smengine/N;->p(II)Lcom/smartisanos/smengine/M;

    move-result-object v10

    .line 20
    invoke-virtual {v9, v10, v4}, Lcom/smartisanos/launcher/view/Gc;->a(Lcom/smartisanos/smengine/M;I)V

    move v10, v3

    :goto_2
    if-ge v10, v4, :cond_3

    .line 21
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/a/g;

    .line 22
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/a/g;->wl()Ljava/lang/String;

    move-result-object v12

    .line 23
    new-instance v13, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v13}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 24
    invoke-virtual {v11, v13}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 25
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v11

    invoke-virtual {v11, v10, v13}, Lcom/smartisanos/launcher/view/Ia;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 26
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v11

    const-string v14, "flip_anim_side.png"

    invoke-static {v14}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v10, v14}, Lcom/smartisanos/launcher/view/Ia;->b(ILjava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v11

    iget v11, v11, Lcom/smartisanos/smengine/a/j;->z:F

    .line 28
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x42700000    # 60.0f

    add-float/2addr v14, v15

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float/2addr v14, v11

    .line 29
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->dq()Lcom/smartisanos/smengine/F;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v11

    .line 30
    iget v15, v11, Lcom/smartisanos/smengine/a/j;->x:F

    .line 31
    iget v11, v11, Lcom/smartisanos/smengine/a/j;->y:F

    .line 32
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->dq()Lcom/smartisanos/smengine/F;

    move-result-object v11

    const/high16 v15, -0x3d900000    # -60.0f

    invoke-virtual {v11, v8, v8, v15}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 33
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    iget v15, v13, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v15, v14

    iget v8, v13, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v8, v14

    iget v14, v13, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v11, v15, v8, v14}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 34
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->dq()Lcom/smartisanos/smengine/F;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Lcom/smartisanos/launcher/view/Ia;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 35
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->cq()Lcom/smartisanos/smengine/F;

    move-result-object v8

    invoke-virtual {v8, v10, v13}, Lcom/smartisanos/launcher/view/Ia;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 36
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->cq()Lcom/smartisanos/smengine/F;

    move-result-object v8

    invoke-virtual {v8, v10, v12}, Lcom/smartisanos/launcher/view/Ia;->b(ILjava/lang/String;)V

    .line 37
    iget-object v8, v0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v8, v3}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v8

    .line 38
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->eq()Lcom/smartisanos/smengine/F;

    move-result-object v11

    invoke-virtual {v11, v10, v13}, Lcom/smartisanos/launcher/view/Ia;->b(ILcom/smartisanos/smengine/a/j;)V

    .line 39
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Gc;->eq()Lcom/smartisanos/smengine/F;

    move-result-object v11

    invoke-virtual {v11, v10, v8}, Lcom/smartisanos/launcher/view/Ia;->b(ILjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 40
    :cond_3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 41
    iget-object v8, v0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 43
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x3cf5c28f    # 0.03f

    goto :goto_3

    :cond_5
    const v1, 0x3c8b4396    # 0.017f

    :goto_3
    const v2, 0x3f4ccccd    # 0.8f

    move v4, v3

    .line 44
    :goto_4
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 45
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Gc;

    .line 46
    new-instance v7, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v8, 0x3

    .line 47
    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 48
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9, v10}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/oa;->c(Lcom/smartisanos/smengine/a/j;)V

    const/4 v8, 0x2

    const v9, 0x40490fdb    # (float)Math.PI

    .line 49
    invoke-virtual {v7, v8, v10, v9}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 50
    invoke-virtual {v7, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 51
    new-instance v8, Lcom/smartisanos/launcher/animations/W;

    invoke-direct {v8, v0, v5}, Lcom/smartisanos/launcher/animations/W;-><init>(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/launcher/view/Gc;)V

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 52
    iget-object v8, v0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    int-to-float v9, v4

    mul-float/2addr v9, v1

    invoke-virtual {v8, v9, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 53
    new-instance v7, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v8, 0xf

    .line 54
    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v12, 0x1

    .line 55
    iget v15, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v14, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v13, v0, Lcom/smartisanos/launcher/animations/ma;->Wm:F

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v11, v7

    move/from16 v16, v13

    move v13, v15

    move/from16 v17, v14

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-virtual/range {v11 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const v11, 0x3df5c290    # 0.120000005f

    .line 56
    invoke-virtual {v7, v11}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 57
    invoke-virtual {v7, v3}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 58
    iget-object v12, v0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    add-float v13, v11, v9

    invoke-virtual {v12, v13, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 59
    new-instance v7, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Gc;->bq()Lcom/smartisanos/launcher/view/Fc;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 60
    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v15, 0x1

    .line 61
    iget v5, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v0, Lcom/smartisanos/launcher/animations/ma;->Wm:F

    move-object v14, v7

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v19, v5

    move/from16 v20, v8

    move/from16 v21, v12

    invoke-virtual/range {v14 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 62
    invoke-virtual {v7, v11}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 63
    invoke-virtual {v7, v3}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 64
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    const v8, 0x3f0f5c29    # 0.56f

    add-float/2addr v8, v9

    invoke-virtual {v5, v8, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_6
    return-void
.end method

.method private zw()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v3

    move v4, v1

    .line 4
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Om()V

    .line 6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method


# virtual methods
.method public Rd()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Gc;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Vm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public kd()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-byte v0, p0, Lcom/smartisanos/launcher/animations/ma;->Ym:B

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-byte v2, p0, Lcom/smartisanos/launcher/animations/ma;->Ym:B

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/g;->b(B)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 5
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->_m:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 7
    iget-byte v2, p0, Lcom/smartisanos/launcher/animations/ma;->Ym:B

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/g;->b(B)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->_m:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 9
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->_m:Lcom/smartisanos/smengine/g;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_2

    .line 11
    iget-byte v2, p0, Lcom/smartisanos/launcher/animations/ma;->Ym:B

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/g;->b(B)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 13
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->Tm:Lcom/smartisanos/smengine/g;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_3

    .line 15
    iget-byte v2, p0, Lcom/smartisanos/launcher/animations/ma;->Ym:B

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/g;->b(B)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 17
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->bn:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_4

    .line 19
    iget-byte v2, p0, Lcom/smartisanos/launcher/animations/ma;->Ym:B

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/g;->b(B)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->bn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 21
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->bn:Lcom/smartisanos/smengine/g;

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->cn:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_5

    .line 23
    iget-byte v2, p0, Lcom/smartisanos/launcher/animations/ma;->Ym:B

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/g;->b(B)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->cn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 25
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->cn:Lcom/smartisanos/smengine/g;

    :cond_5
    return-void
.end method

.method public md()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v1

    .line 8
    iget v1, v1, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/16 v4, 0x64

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->vZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v4, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->wZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v4, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    :goto_0
    const/4 v0, 0x0

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->Sm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/ka;

    .line 19
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/b/ka;->pb(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20
    :cond_3
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/ma;->Aw()V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/animations/ja;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/ja;-><init>(Lcom/smartisanos/launcher/animations/ma;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 23
    iget-byte v0, p0, Lcom/smartisanos/launcher/animations/ma;->Ym:B

    if-ne v0, v3, :cond_4

    .line 24
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->an:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_4
    return-void
.end method

.method public nd()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x100000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Mp()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Mp()Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 8
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ga;->Ei()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Kp()V

    goto :goto_2

    .line 10
    :cond_1
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Mp()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Mp()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->Di()I

    goto :goto_1

    .line 13
    :cond_2
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    const v3, 0x3eb851ec    # 0.36f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v1, v4}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 18
    iput-object v4, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    .line 19
    :cond_3
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    .line 20
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/animations/aa;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/aa;-><init>(Lcom/smartisanos/launcher/animations/ma;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 22
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ma;->Zm:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_3

    .line 23
    :cond_4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/16 v1, 0x64

    if-eqz v0, :cond_5

    .line 24
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/ma;->zw()V

    .line 25
    new-instance v0, Lcom/smartisanos/launcher/animations/ca;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/ca;-><init>(Lcom/smartisanos/launcher/animations/ma;I)V

    .line 26
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_3

    .line 27
    :cond_5
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/ma;->zw()V

    .line 28
    new-instance v0, Lcom/smartisanos/launcher/animations/da;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/da;-><init>(Lcom/smartisanos/launcher/animations/ma;I)V

    .line 29
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    :goto_3
    return-void
.end method
