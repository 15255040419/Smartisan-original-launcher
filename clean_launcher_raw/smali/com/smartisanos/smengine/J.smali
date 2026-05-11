.class public Lcom/smartisanos/smengine/J;
.super Ljava/lang/Object;
.source "RenderManager.java"


# static fields
.field private static BF:Ljava/util/ArrayList;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private AF:F

.field private lF:Lcom/smartisanos/smengine/G;

.field private mF:Lcom/smartisanos/smengine/G;

.field private mRUParam:Lcom/smartisanos/smengine/K;

.field private nF:Lcom/smartisanos/smengine/H;

.field private oF:Lcom/smartisanos/smengine/G;

.field private pF:Lcom/smartisanos/smengine/H;

.field private qF:Lcom/smartisanos/smengine/H;

.field private rF:[Lcom/smartisanos/smengine/a/f;

.field private sF:[Lcom/smartisanos/smengine/a/f;

.field private tF:[Lcom/smartisanos/smengine/a/k;

.field private uF:[Lcom/smartisanos/smengine/a/k;

.field private vF:Lcom/smartisanos/smengine/a/f;

.field private wF:Lcom/smartisanos/smengine/Ga;

.field private xF:Z

.field public yF:Lcom/smartisanos/smengine/N;

.field protected zF:Lcom/smartisanos/smengine/N;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/J;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/J;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/J;->BF:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/G;

    invoke-direct {v0}, Lcom/smartisanos/smengine/G;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/J;->lF:Lcom/smartisanos/smengine/G;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/G;

    invoke-direct {v0}, Lcom/smartisanos/smengine/G;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/J;->mF:Lcom/smartisanos/smengine/G;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/H;

    invoke-direct {v0}, Lcom/smartisanos/smengine/H;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/J;->nF:Lcom/smartisanos/smengine/H;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/G;

    invoke-direct {v0}, Lcom/smartisanos/smengine/G;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/J;->oF:Lcom/smartisanos/smengine/G;

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/H;

    invoke-direct {v0}, Lcom/smartisanos/smengine/H;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/J;->pF:Lcom/smartisanos/smengine/H;

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/H;

    invoke-direct {v0}, Lcom/smartisanos/smengine/H;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/J;->qF:Lcom/smartisanos/smengine/H;

    const/16 v0, 0x9

    new-array v1, v0, [Lcom/smartisanos/smengine/a/f;

    .line 8
    iput-object v1, p0, Lcom/smartisanos/smengine/J;->rF:[Lcom/smartisanos/smengine/a/f;

    const/16 v1, 0x10

    new-array v2, v1, [Lcom/smartisanos/smengine/a/f;

    .line 9
    iput-object v2, p0, Lcom/smartisanos/smengine/J;->sF:[Lcom/smartisanos/smengine/a/f;

    new-array v0, v0, [Lcom/smartisanos/smengine/a/k;

    .line 10
    iput-object v0, p0, Lcom/smartisanos/smengine/J;->tF:[Lcom/smartisanos/smengine/a/k;

    new-array v0, v1, [Lcom/smartisanos/smengine/a/k;

    .line 11
    iput-object v0, p0, Lcom/smartisanos/smengine/J;->uF:[Lcom/smartisanos/smengine/a/k;

    .line 12
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/J;->vF:Lcom/smartisanos/smengine/a/f;

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/K;

    invoke-direct {v0}, Lcom/smartisanos/smengine/K;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/J;->mRUParam:Lcom/smartisanos/smengine/K;

    .line 14
    new-instance v0, Lcom/smartisanos/smengine/Ga;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Ga;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/J;->wF:Lcom/smartisanos/smengine/Ga;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/smartisanos/smengine/J;->xF:Z

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/smartisanos/smengine/J;->AF:F

    move v1, v0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/J;->sF:[Lcom/smartisanos/smengine/a/f;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 18
    new-instance v3, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/f;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 19
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/smengine/J;->rF:[Lcom/smartisanos/smengine/a/f;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 20
    new-instance v3, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/f;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 21
    :goto_2
    iget-object v2, p0, Lcom/smartisanos/smengine/J;->uF:[Lcom/smartisanos/smengine/a/k;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 22
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/k;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 23
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/smartisanos/smengine/J;->tF:[Lcom/smartisanos/smengine/a/k;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 24
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/k;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/J;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method


# virtual methods
.method public Fk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/J;->lF:Lcom/smartisanos/smengine/G;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/G;->clear()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/J;->nF:Lcom/smartisanos/smengine/H;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/H;->clear()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/J;->pF:Lcom/smartisanos/smengine/H;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/H;->clear()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/J;->mF:Lcom/smartisanos/smengine/G;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/G;->clear()V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/smengine/J;->qF:Lcom/smartisanos/smengine/H;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/H;->clear()V

    return-void
.end method

.method public Gk()Lcom/smartisanos/smengine/Ga;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/J;->wF:Lcom/smartisanos/smengine/Ga;

    return-object p0
.end method

.method public Hk()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/J;->xF:Z

    return p0
.end method

.method public a(IILcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    if-ltz p1, :cond_7

    const/4 p2, 0x6

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_6

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/J;->qF:Lcom/smartisanos/smengine/H;

    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/H;->i(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 2
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/smengine/J;->mF:Lcom/smartisanos/smengine/G;

    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/G;->i(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 3
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/smengine/J;->pF:Lcom/smartisanos/smengine/H;

    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/H;->i(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 4
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/smengine/J;->oF:Lcom/smartisanos/smengine/G;

    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/G;->i(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 5
    :cond_5
    iget-object p0, p0, Lcom/smartisanos/smengine/J;->nF:Lcom/smartisanos/smengine/H;

    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/H;->i(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 6
    :cond_6
    iget-object p0, p0, Lcom/smartisanos/smengine/J;->lF:Lcom/smartisanos/smengine/G;

    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/G;->i(Lcom/smartisanos/smengine/SceneNode;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public ba(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/J;->xF:Z

    return-void
.end method

.method public r(F)V
    .locals 28

    move-object/from16 v0, p0

    const v1, 0x8d40

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    .line 2
    iget v3, v0, Lcom/smartisanos/smengine/J;->AF:F

    const/4 v4, 0x0

    invoke-static {v3, v3, v3, v4}, Lcom/smartisanos/smengine/P;->glClearColor(FFFF)V

    .line 3
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glClearStencil(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 4
    invoke-static {v3}, Lcom/smartisanos/smengine/P;->glClearDepthf(F)V

    const/16 v5, 0x4500

    .line 5
    invoke-static {v5}, Lcom/smartisanos/smengine/P;->glClear(I)V

    const/16 v6, 0xb44

    .line 6
    invoke-static {v6}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v6

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object v7

    .line 9
    invoke-virtual {v7}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v15

    .line 10
    invoke-virtual {v7}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v7

    .line 11
    iget-object v14, v0, Lcom/smartisanos/smengine/J;->wF:Lcom/smartisanos/smengine/Ga;

    move v8, v2

    :goto_0
    const/16 v13, 0x104

    if-ge v8, v13, :cond_1

    move v9, v2

    .line 12
    :goto_1
    iget-object v10, v0, Lcom/smartisanos/smengine/J;->mF:Lcom/smartisanos/smengine/G;

    iget-object v11, v10, Lcom/smartisanos/smengine/G;->kF:[I

    aget v11, v11, v8

    if-ge v9, v11, :cond_0

    .line 13
    iget-object v10, v10, Lcom/smartisanos/smengine/G;->jF:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    .line 14
    iget-boolean v11, v0, Lcom/smartisanos/smengine/J;->xF:Z

    invoke-virtual {v10, v14, v11}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v2

    :goto_2
    const/16 v16, 0x0

    if-ge v8, v13, :cond_3

    move v9, v2

    .line 15
    :goto_3
    iget-object v10, v0, Lcom/smartisanos/smengine/J;->mF:Lcom/smartisanos/smengine/G;

    iget-object v11, v10, Lcom/smartisanos/smengine/G;->kF:[I

    aget v11, v11, v8

    if-ge v9, v11, :cond_2

    .line 16
    iget-object v10, v10, Lcom/smartisanos/smengine/G;->jF:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    .line 17
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->genMipmap()V

    .line 18
    iget-object v10, v0, Lcom/smartisanos/smengine/J;->mF:Lcom/smartisanos/smengine/G;

    iget-object v10, v10, Lcom/smartisanos/smengine/G;->jF:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v10, v10, v8

    aput-object v16, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const/16 v8, 0x302

    const/16 v9, 0x303

    const/4 v12, 0x1

    .line 19
    invoke-static {v8, v9, v2, v12}, Lcom/smartisanos/smengine/P;->glBlendFuncSeparate(IIII)V

    .line 20
    new-instance v8, Lcom/smartisanos/smengine/Ca;

    invoke-direct {v8, v12, v12, v12, v12}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-static {v8}, Lcom/smartisanos/smengine/Da;->a(Lcom/smartisanos/smengine/Ca;)V

    move v8, v2

    :goto_4
    if-ge v8, v13, :cond_5

    move v9, v2

    .line 21
    :goto_5
    iget-object v10, v0, Lcom/smartisanos/smengine/J;->lF:Lcom/smartisanos/smengine/G;

    iget-object v11, v10, Lcom/smartisanos/smengine/G;->kF:[I

    aget v11, v11, v8

    if-ge v9, v11, :cond_4

    .line 22
    iget-object v10, v10, Lcom/smartisanos/smengine/G;->jF:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    .line 23
    iget-boolean v11, v0, Lcom/smartisanos/smengine/J;->xF:Z

    invoke-virtual {v10, v14, v11}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    move v8, v2

    :goto_6
    if-ge v8, v13, :cond_7

    move v9, v2

    .line 24
    :goto_7
    iget-object v10, v0, Lcom/smartisanos/smengine/J;->lF:Lcom/smartisanos/smengine/G;

    iget-object v11, v10, Lcom/smartisanos/smengine/G;->kF:[I

    aget v11, v11, v8

    if-ge v9, v11, :cond_6

    .line 25
    iget-object v10, v10, Lcom/smartisanos/smengine/G;->jF:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v10, v10, v8

    aget-object v10, v10, v9

    .line 26
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->genMipmap()V

    .line 27
    iget-object v10, v0, Lcom/smartisanos/smengine/J;->lF:Lcom/smartisanos/smengine/G;

    iget-object v10, v10, Lcom/smartisanos/smengine/G;->jF:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v10, v10, v8

    aput-object v16, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 28
    :cond_7
    iget-boolean v8, v0, Lcom/smartisanos/smengine/J;->xF:Z

    const/16 v17, 0xc11

    const-string v11, "com.smartisanos.posteffect.texture"

    if-eqz v8, :cond_a

    .line 29
    iget-object v8, v0, Lcom/smartisanos/smengine/J;->yF:Lcom/smartisanos/smengine/N;

    if-nez v8, :cond_8

    .line 30
    new-instance v10, Lcom/smartisanos/smengine/N;

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v9, "RenderTargetForPostRender"

    move-object v8, v10

    move-object v1, v10

    move v10, v15

    move-object v5, v11

    move v11, v7

    move v3, v12

    move/from16 v12, v18

    move/from16 v13, v19

    move-object/from16 v18, v14

    move/from16 v14, v20

    invoke-direct/range {v8 .. v14}, Lcom/smartisanos/smengine/N;-><init>(Ljava/lang/String;IIZZZ)V

    iput-object v1, v0, Lcom/smartisanos/smengine/J;->yF:Lcom/smartisanos/smengine/N;

    .line 31
    iget-object v1, v0, Lcom/smartisanos/smengine/J;->yF:Lcom/smartisanos/smengine/N;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/N;->Ma(Z)V

    goto :goto_8

    :cond_8
    move-object v5, v11

    move v3, v12

    move-object/from16 v18, v14

    .line 32
    :goto_8
    iget-object v1, v0, Lcom/smartisanos/smengine/J;->yF:Lcom/smartisanos/smengine/N;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/N;->create()V

    .line 33
    iget-object v1, v0, Lcom/smartisanos/smengine/J;->yF:Lcom/smartisanos/smengine/N;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/N;->bind()V

    .line 34
    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    if-nez v1, :cond_9

    .line 35
    new-instance v1, Lcom/smartisanos/smengine/Da;

    iget-object v8, v0, Lcom/smartisanos/smengine/J;->yF:Lcom/smartisanos/smengine/N;

    invoke-direct {v1, v8}, Lcom/smartisanos/smengine/Da;-><init>(Lcom/smartisanos/smengine/N;)V

    .line 36
    invoke-virtual {v6, v5, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 37
    :cond_9
    invoke-static/range {v17 .. v17}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    .line 38
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v1

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v8

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v9

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v10

    invoke-static {v1, v8, v9, v10}, Lcom/smartisanos/smengine/P;->glViewport(IIII)V

    .line 39
    invoke-static {v4, v4, v4, v4}, Lcom/smartisanos/smengine/P;->glClearColor(FFFF)V

    .line 40
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glClearStencil(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glClearDepthf(F)V

    const/16 v1, 0x4500

    .line 42
    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glClear(I)V

    goto :goto_9

    :cond_a
    move-object v5, v11

    move v3, v12

    move-object/from16 v18, v14

    .line 43
    :goto_9
    iget-object v1, v0, Lcom/smartisanos/smengine/J;->nF:Lcom/smartisanos/smengine/H;

    .line 44
    iget-boolean v8, v0, Lcom/smartisanos/smengine/J;->xF:Z

    const/16 v19, 0x103

    const/4 v14, 0x2

    if-nez v8, :cond_12

    move v8, v3

    :goto_a
    if-gt v8, v14, :cond_12

    if-eq v8, v3, :cond_e

    if-eq v8, v14, :cond_b

    const/16 v13, 0x104

    goto :goto_f

    :cond_b
    move v9, v2

    const/16 v13, 0x104

    :goto_b
    if-ge v9, v13, :cond_11

    move v10, v2

    .line 45
    :goto_c
    invoke-static {v1}, Lcom/smartisanos/smengine/H;->a(Lcom/smartisanos/smengine/H;)[[I

    move-result-object v11

    aget-object v11, v11, v8

    aget v11, v11, v9

    if-ge v10, v11, :cond_d

    .line 46
    iget-object v11, v1, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    aget-object v11, v11, v10

    .line 47
    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v12

    if-eqz v12, :cond_c

    .line 48
    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/mymaterial/f;->Jt()V

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_e
    const/16 v13, 0x104

    move/from16 v9, v19

    :goto_d
    if-ltz v9, :cond_11

    move v10, v2

    .line 49
    :goto_e
    invoke-static {v1}, Lcom/smartisanos/smengine/H;->a(Lcom/smartisanos/smengine/H;)[[I

    move-result-object v11

    aget-object v11, v11, v8

    aget v11, v11, v9

    if-ge v10, v11, :cond_10

    .line 50
    iget-object v11, v1, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    aget-object v11, v11, v10

    .line 51
    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 52
    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/mymaterial/f;->Jt()V

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_10
    add-int/lit8 v9, v9, -0x1

    goto :goto_d

    :cond_11
    :goto_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_12
    const/16 v13, 0x104

    move v8, v2

    :goto_10
    const/4 v9, 0x4

    if-ge v8, v9, :cond_1e

    if-eqz v8, :cond_1b

    if-eq v8, v3, :cond_19

    if-eq v8, v14, :cond_17

    const/4 v9, 0x3

    if-eq v8, v9, :cond_14

    :cond_13
    move-object/from16 v4, v18

    goto/16 :goto_1a

    :cond_14
    move v9, v2

    :goto_11
    if-ge v9, v13, :cond_13

    move v10, v2

    .line 53
    :goto_12
    invoke-static {v1}, Lcom/smartisanos/smengine/H;->a(Lcom/smartisanos/smengine/H;)[[I

    move-result-object v11

    aget-object v11, v11, v8

    aget v11, v11, v9

    if-ge v10, v11, :cond_16

    .line 54
    iget-object v11, v1, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    aget-object v11, v11, v10

    if-nez v11, :cond_15

    move-object/from16 v4, v18

    goto :goto_13

    .line 55
    :cond_15
    iget-boolean v12, v0, Lcom/smartisanos/smengine/J;->xF:Z

    move-object/from16 v4, v18

    invoke-virtual {v11, v4, v12}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    .line 56
    iget-object v11, v1, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    aput-object v16, v11, v10

    :goto_13
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v18, v4

    const/4 v4, 0x0

    goto :goto_12

    :cond_16
    move-object/from16 v4, v18

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto :goto_11

    :cond_17
    move-object/from16 v4, v18

    move v9, v2

    :goto_14
    if-ge v9, v13, :cond_1d

    move v10, v2

    .line 57
    :goto_15
    invoke-static {v1}, Lcom/smartisanos/smengine/H;->a(Lcom/smartisanos/smengine/H;)[[I

    move-result-object v11

    aget-object v11, v11, v8

    aget v11, v11, v9

    if-ge v10, v11, :cond_18

    .line 58
    iget-object v11, v1, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    aget-object v11, v11, v10

    .line 59
    iget-boolean v12, v0, Lcom/smartisanos/smengine/J;->xF:Z

    invoke-virtual {v11, v4, v12}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    .line 60
    iget-object v11, v1, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    aput-object v16, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_19
    move-object/from16 v4, v18

    move/from16 v9, v19

    :goto_16
    if-ltz v9, :cond_1d

    move v10, v2

    .line 61
    :goto_17
    invoke-static {v1}, Lcom/smartisanos/smengine/H;->a(Lcom/smartisanos/smengine/H;)[[I

    move-result-object v11

    aget-object v11, v11, v8

    aget v11, v11, v9

    if-ge v10, v11, :cond_1a

    .line 62
    iget-object v11, v1, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    aget-object v11, v11, v10

    .line 63
    iget-boolean v12, v0, Lcom/smartisanos/smengine/J;->xF:Z

    invoke-virtual {v11, v4, v12}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    .line 64
    iget-object v11, v1, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    aput-object v16, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_1a
    add-int/lit8 v9, v9, -0x1

    goto :goto_16

    :cond_1b
    move-object/from16 v4, v18

    move v9, v2

    :goto_18
    if-ge v9, v13, :cond_1d

    move v10, v2

    .line 65
    :goto_19
    invoke-static {v1}, Lcom/smartisanos/smengine/H;->a(Lcom/smartisanos/smengine/H;)[[I

    move-result-object v11

    aget-object v11, v11, v8

    aget v11, v11, v9

    if-ge v10, v11, :cond_1c

    .line 66
    iget-object v11, v1, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    aget-object v11, v11, v10

    .line 67
    iget-boolean v12, v0, Lcom/smartisanos/smengine/J;->xF:Z

    invoke-virtual {v11, v4, v12}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    .line 68
    iget-object v11, v1, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    aput-object v16, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :cond_1d
    :goto_1a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v18, v4

    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_1e
    move-object/from16 v4, v18

    .line 69
    iget-boolean v1, v0, Lcom/smartisanos/smengine/J;->xF:Z

    if-eqz v1, :cond_47

    .line 70
    iget-object v1, v0, Lcom/smartisanos/smengine/J;->yF:Lcom/smartisanos/smengine/N;

    .line 71
    iget-object v12, v0, Lcom/smartisanos/smengine/J;->pF:Lcom/smartisanos/smengine/H;

    move-object v8, v1

    move v1, v2

    .line 72
    :goto_1b
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-gt v1, v9, :cond_47

    .line 73
    invoke-virtual {v8, v2}, Lcom/smartisanos/smengine/N;->La(Z)V

    .line 74
    invoke-virtual {v8}, Lcom/smartisanos/smengine/N;->genMipmap()V

    const v9, 0x8d40

    .line 75
    invoke-static {v9, v2}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    move v9, v3

    :goto_1c
    if-gt v9, v14, :cond_28

    if-eq v9, v3, :cond_23

    if-eq v9, v14, :cond_1f

    goto/16 :goto_21

    :cond_1f
    move v10, v2

    :goto_1d
    if-ge v10, v13, :cond_27

    move v11, v2

    .line 76
    :goto_1e
    invoke-static {v12}, Lcom/smartisanos/smengine/H;->a(Lcom/smartisanos/smengine/H;)[[I

    move-result-object v18

    aget-object v18, v18, v9

    aget v13, v18, v10

    if-ge v11, v13, :cond_22

    .line 77
    iget-object v13, v12, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v13, v13, v9

    aget-object v13, v13, v10

    aget-object v13, v13, v11

    .line 78
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v18

    if-eqz v18, :cond_21

    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/L;->Jk()I

    move-result v14

    if-ne v1, v14, :cond_21

    .line 79
    sget v14, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v14, :cond_20

    invoke-virtual {v13, v2}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_20

    .line 80
    invoke-virtual {v13, v2}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 81
    sget-object v14, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    invoke-virtual {v13, v2, v14}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 82
    :cond_20
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/smengine/mymaterial/f;->Jt()V

    :cond_21
    add-int/lit8 v11, v11, 0x1

    const/16 v13, 0x104

    const/4 v14, 0x2

    goto :goto_1e

    :cond_22
    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x104

    const/4 v14, 0x2

    goto :goto_1d

    :cond_23
    move/from16 v10, v19

    :goto_1f
    if-ltz v10, :cond_27

    move v11, v2

    .line 83
    :goto_20
    invoke-static {v12}, Lcom/smartisanos/smengine/H;->a(Lcom/smartisanos/smengine/H;)[[I

    move-result-object v13

    aget-object v13, v13, v9

    aget v13, v13, v10

    if-ge v11, v13, :cond_26

    .line 84
    iget-object v13, v12, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v13, v13, v9

    aget-object v13, v13, v10

    aget-object v13, v13, v11

    .line 85
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v14

    if-eqz v14, :cond_25

    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/smengine/L;->Jk()I

    move-result v14

    if-ne v1, v14, :cond_25

    .line 86
    sget v14, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v14, :cond_24

    invoke-virtual {v13, v2}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_24

    .line 87
    invoke-virtual {v13, v2}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 88
    sget-object v14, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    invoke-virtual {v13, v2, v14}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 89
    :cond_24
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/smengine/mymaterial/f;->Jt()V

    :cond_25
    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    :cond_26
    add-int/lit8 v10, v10, -0x1

    goto :goto_1f

    :cond_27
    :goto_21
    add-int/lit8 v9, v9, 0x1

    const/16 v13, 0x104

    const/4 v14, 0x2

    goto/16 :goto_1c

    .line 90
    :cond_28
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    const-string v14, "com.smartisanos.posteffect.texture.cache"

    if-lez v9, :cond_2b

    if-gt v1, v9, :cond_2b

    if-lez v1, :cond_2b

    .line 91
    iget-object v8, v0, Lcom/smartisanos/smengine/J;->zF:Lcom/smartisanos/smengine/N;

    .line 92
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    if-ne v14, v9, :cond_29

    .line 93
    iget-object v8, v0, Lcom/smartisanos/smengine/J;->yF:Lcom/smartisanos/smengine/N;

    :cond_29
    if-nez v8, :cond_2a

    .line 94
    new-instance v13, Lcom/smartisanos/smengine/N;

    const/16 v18, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x1

    const-string v9, "RenderTargetForPostRenderCache"

    move-object v8, v13

    move v10, v15

    move v11, v7

    move-object/from16 v26, v12

    move/from16 v12, v18

    move-object v2, v13

    move/from16 v13, v24

    move-object/from16 v27, v14

    move/from16 v14, v25

    invoke-direct/range {v8 .. v14}, Lcom/smartisanos/smengine/N;-><init>(Ljava/lang/String;IIZZZ)V

    .line 95
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/N;->Ma(Z)V

    move-object v8, v2

    goto :goto_22

    :cond_2a
    move-object/from16 v26, v12

    move-object/from16 v27, v14

    .line 96
    :goto_22
    invoke-virtual {v8}, Lcom/smartisanos/smengine/N;->create()V

    .line 97
    invoke-virtual {v8}, Lcom/smartisanos/smengine/N;->bind()V

    .line 98
    invoke-static/range {v17 .. v17}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    .line 99
    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v2

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v9

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v10

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v11

    invoke-static {v2, v9, v10, v11}, Lcom/smartisanos/smengine/P;->glViewport(IIII)V

    const/4 v2, 0x0

    .line 100
    invoke-static {v2, v2, v2, v2}, Lcom/smartisanos/smengine/P;->glClearColor(FFFF)V

    const/4 v2, 0x0

    .line 101
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glClearStencil(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 102
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glClearDepthf(F)V

    const/16 v2, 0x4500

    .line 103
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glClear(I)V

    goto :goto_23

    :cond_2b
    move-object/from16 v26, v12

    move-object/from16 v27, v14

    :goto_23
    move-object v2, v8

    .line 104
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-ne v8, v1, :cond_2c

    if-gtz v8, :cond_2d

    :cond_2c
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-nez v8, :cond_2e

    :cond_2d
    const/4 v8, 0x0

    const v14, 0x8d40

    .line 105
    invoke-static {v14, v8}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    .line 106
    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v9

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v10

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v11

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lcom/smartisanos/smengine/P;->glViewport(IIII)V

    const/4 v9, 0x0

    .line 107
    invoke-static {v9, v9, v9, v9}, Lcom/smartisanos/smengine/P;->glClearColor(FFFF)V

    .line 108
    invoke-static {v8}, Lcom/smartisanos/smengine/P;->glClearStencil(I)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 109
    invoke-static {v8}, Lcom/smartisanos/smengine/P;->glClearDepthf(F)V

    const/16 v8, 0x4500

    .line 110
    invoke-static {v8}, Lcom/smartisanos/smengine/P;->glClear(I)V

    goto :goto_24

    :cond_2e
    const v14, 0x8d40

    :goto_24
    if-nez v1, :cond_31

    .line 111
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v8, :cond_31

    .line 112
    iget-object v8, v0, Lcom/smartisanos/smengine/J;->zF:Lcom/smartisanos/smengine/N;

    if-nez v8, :cond_2f

    .line 113
    new-instance v13, Lcom/smartisanos/smengine/N;

    const/4 v12, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const-string v9, "RenderTargetForPostRenderCache"

    move-object v8, v13

    move v10, v15

    move v11, v7

    move-object v3, v13

    move/from16 v13, v22

    move/from16 v22, v14

    move/from16 v14, v23

    invoke-direct/range {v8 .. v14}, Lcom/smartisanos/smengine/N;-><init>(Ljava/lang/String;IIZZZ)V

    iput-object v3, v0, Lcom/smartisanos/smengine/J;->zF:Lcom/smartisanos/smengine/N;

    .line 114
    iget-object v3, v0, Lcom/smartisanos/smengine/J;->zF:Lcom/smartisanos/smengine/N;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/N;->Ma(Z)V

    goto :goto_25

    :cond_2f
    move/from16 v22, v14

    .line 115
    :goto_25
    iget-object v3, v0, Lcom/smartisanos/smengine/J;->zF:Lcom/smartisanos/smengine/N;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/N;->create()V

    .line 116
    iget-object v3, v0, Lcom/smartisanos/smengine/J;->zF:Lcom/smartisanos/smengine/N;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/N;->bind()V

    move-object/from16 v3, v27

    .line 117
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v8

    if-nez v8, :cond_30

    .line 118
    new-instance v8, Lcom/smartisanos/smengine/Da;

    iget-object v9, v0, Lcom/smartisanos/smengine/J;->zF:Lcom/smartisanos/smengine/N;

    invoke-direct {v8, v9}, Lcom/smartisanos/smengine/Da;-><init>(Lcom/smartisanos/smengine/N;)V

    .line 119
    invoke-virtual {v6, v3, v8}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 120
    :cond_30
    invoke-static/range {v17 .. v17}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    .line 121
    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v8

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v9

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v10

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lcom/smartisanos/smengine/P;->glViewport(IIII)V

    const/4 v8, 0x0

    .line 122
    invoke-static {v8, v8, v8, v8}, Lcom/smartisanos/smengine/P;->glClearColor(FFFF)V

    const/4 v9, 0x0

    .line 123
    invoke-static {v9}, Lcom/smartisanos/smengine/P;->glClearStencil(I)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 124
    invoke-static {v9}, Lcom/smartisanos/smengine/P;->glClearDepthf(F)V

    const/16 v10, 0x4500

    .line 125
    invoke-static {v10}, Lcom/smartisanos/smengine/P;->glClear(I)V

    goto :goto_26

    :cond_31
    move/from16 v22, v14

    move-object/from16 v3, v27

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x4500

    :goto_26
    const/4 v11, 0x1

    :goto_27
    const/4 v12, 0x2

    if-gt v11, v12, :cond_40

    const/4 v13, 0x1

    if-eq v11, v13, :cond_39

    if-eq v11, v12, :cond_33

    :cond_32
    move-object/from16 v9, v26

    goto/16 :goto_2c

    :cond_33
    const/4 v13, 0x0

    :goto_28
    const/16 v14, 0x104

    if-ge v13, v14, :cond_32

    const/4 v8, 0x0

    .line 126
    :goto_29
    invoke-static/range {v26 .. v26}, Lcom/smartisanos/smengine/H;->a(Lcom/smartisanos/smengine/H;)[[I

    move-result-object v21

    aget-object v21, v21, v11

    aget v9, v21, v13

    if-ge v8, v9, :cond_38

    move-object/from16 v9, v26

    .line 127
    iget-object v10, v9, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v10, v10, v11

    aget-object v10, v10, v13

    aget-object v10, v10, v8

    .line 128
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/L;->Jk()I

    move-result v12

    if-ne v1, v12, :cond_37

    const/4 v12, 0x0

    .line 129
    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_34

    .line 130
    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 131
    sget-object v14, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    invoke-virtual {v10, v12, v14}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 132
    :cond_34
    iget-boolean v12, v0, Lcom/smartisanos/smengine/J;->xF:Z

    invoke-virtual {v10, v4, v12}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    .line 133
    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-ne v10, v1, :cond_35

    if-gtz v10, :cond_36

    :cond_35
    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-nez v10, :cond_37

    .line 134
    :cond_36
    iget-object v10, v9, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v10, v10, v11

    aget-object v10, v10, v13

    aput-object v16, v10, v8

    :cond_37
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v26, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x4500

    const/4 v12, 0x2

    const/16 v14, 0x104

    goto :goto_29

    :cond_38
    move-object/from16 v9, v26

    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x4500

    const/4 v12, 0x2

    goto :goto_28

    :cond_39
    move-object/from16 v9, v26

    move/from16 v8, v19

    :goto_2a
    if-ltz v8, :cond_3f

    const/4 v10, 0x0

    .line 135
    :goto_2b
    invoke-static {v9}, Lcom/smartisanos/smengine/H;->a(Lcom/smartisanos/smengine/H;)[[I

    move-result-object v12

    aget-object v12, v12, v11

    aget v12, v12, v8

    if-ge v10, v12, :cond_3e

    .line 136
    iget-object v12, v9, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v12, v12, v11

    aget-object v12, v12, v8

    aget-object v12, v12, v10

    .line 137
    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/smengine/L;->Jk()I

    move-result v13

    if-ne v1, v13, :cond_3d

    const/4 v13, 0x0

    .line 138
    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3a

    .line 139
    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3a

    .line 140
    sget-object v14, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 141
    :cond_3a
    iget-boolean v13, v0, Lcom/smartisanos/smengine/J;->xF:Z

    invoke-virtual {v12, v4, v13}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/Ga;Z)V

    .line 142
    sget v12, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-ne v12, v1, :cond_3b

    if-gtz v12, :cond_3c

    :cond_3b
    sget v12, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-nez v12, :cond_3d

    .line 143
    :cond_3c
    iget-object v12, v9, Lcom/smartisanos/smengine/H;->jF:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v12, v12, v11

    aget-object v12, v12, v8

    aput-object v16, v12, v10

    :cond_3d
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    :cond_3e
    add-int/lit8 v8, v8, -0x1

    goto :goto_2a

    :cond_3f
    :goto_2c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v26, v9

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x4500

    goto/16 :goto_27

    :cond_40
    move-object/from16 v9, v26

    .line 144
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->Jh()Lcom/smartisanos/smengine/F;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/L;->Jk()I

    move-result v8

    .line 145
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Eb;->Jh()Lcom/smartisanos/smengine/F;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v10

    const/4 v11, 0x1

    add-int/2addr v8, v11

    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 146
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v8, :cond_42

    if-gt v1, v8, :cond_42

    if-lez v1, :cond_42

    .line 147
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    if-ne v3, v8, :cond_41

    .line 148
    sput-object v5, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    goto :goto_2d

    .line 149
    :cond_41
    sput-object v3, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    :cond_42
    :goto_2d
    if-nez v1, :cond_43

    .line 150
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v8, :cond_43

    .line 151
    sput-object v3, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    .line 152
    iget-object v2, v0, Lcom/smartisanos/smengine/J;->zF:Lcom/smartisanos/smengine/N;

    :cond_43
    move-object v8, v2

    .line 153
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-ne v2, v1, :cond_44

    if-gtz v2, :cond_45

    :cond_44
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-nez v2, :cond_46

    .line 154
    :cond_45
    sput-object v5, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Jh()Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/L;->Da(I)V

    goto :goto_2e

    :cond_46
    const/4 v3, 0x0

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move-object v12, v9

    move v3, v11

    const/16 v13, 0x104

    const/4 v14, 0x2

    goto/16 :goto_1b

    .line 156
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/J;->Fk()V

    .line 157
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/c/i;->gu()V

    return-void
.end method

.method public s(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/J;->AF:F

    return-void
.end method
