.class Lcom/smartisanos/launcher/animations/c/i;
.super Ljava/lang/Object;
.source "UnlockAnimationXML.java"


# instance fields
.field private aq:Ljava/util/ArrayList;

.field private bq:F

.field private cq:F

.field private dq:F

.field private eq:F

.field private fq:I

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/c/k;

.field private wn:Lcom/smartisanos/smengine/SceneNode;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/c/k;Lcom/smartisanos/smengine/SceneNode;F)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    .line 4
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    .line 5
    invoke-static {p2}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p1}, Lcom/smartisanos/launcher/animations/c/k;->h(Lcom/smartisanos/launcher/animations/c/k;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result p1

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    .line 8
    iput p3, p0, Lcom/smartisanos/launcher/animations/c/i;->eq:F

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/c/i;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/animations/c/i;->dq:F

    return p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/c/i;)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/c/i;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/animations/c/i;->cq:F

    return p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/c/i;)Ljava/util/ArrayList;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public Ae()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/c/k;->b(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v2

    iget v3, v0, Lcom/smartisanos/launcher/animations/c/i;->cq:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v1

    .line 2
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v3, v6, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 4
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 5
    iget v1, v0, Lcom/smartisanos/launcher/animations/c/i;->dq:F

    sub-float v1, v5, v1

    .line 6
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v1, v1, v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    .line 8
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    .line 9
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v6}, Lcom/smartisanos/launcher/animations/c/k;->c(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v7, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v7}, Lcom/smartisanos/launcher/animations/c/k;->c(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/c/k;->c(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v6, v7, v8, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 10
    :goto_0
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 11
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/animations/c/j;

    .line 12
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v6}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v6

    iget v7, v3, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    .line 13
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v7}, Lcom/smartisanos/launcher/animations/c/k;->b(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v7

    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v8

    iget v9, v3, Lcom/smartisanos/launcher/animations/c/j;->gq:F

    invoke-virtual {v7, v5, v4, v8, v9}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v7

    .line 14
    iget v8, v3, Lcom/smartisanos/launcher/animations/c/j;->hq:F

    .line 15
    new-instance v8, Lcom/smartisanos/smengine/oa;

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v8, v9}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 16
    iget v9, v3, Lcom/smartisanos/launcher/animations/c/j;->mInterpolator:I

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v9, 0x6

    .line 17
    invoke-virtual {v8, v9, v2, v7}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 18
    invoke-virtual {v8, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v2, 0x1

    .line 19
    invoke-virtual {v8, v2}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 20
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v2, v9}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 21
    iget v9, v3, Lcom/smartisanos/launcher/animations/c/j;->mInterpolator:I

    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v10, 0x3

    .line 22
    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v9}, Lcom/smartisanos/launcher/animations/c/k;->c(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v9

    iget v11, v9, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v9}, Lcom/smartisanos/launcher/animations/c/k;->c(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v9

    iget v12, v9, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v9}, Lcom/smartisanos/launcher/animations/c/k;->c(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v9

    iget v13, v9, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v14, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    .line 23
    invoke-static {v9}, Lcom/smartisanos/launcher/animations/c/k;->d(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v9

    iget v15, v9, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v9}, Lcom/smartisanos/launcher/animations/c/k;->d(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/c/k;->d(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v16, v9

    move-object v9, v2

    move/from16 v17, v4

    .line 24
    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 25
    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 26
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v9, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v4, v9, v8}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 27
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v8, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v4, v8, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 28
    iget v4, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    add-float/2addr v4, v6

    iput v4, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    .line 29
    iget v4, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    int-to-float v4, v4

    iget v3, v3, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    int-to-float v3, v3

    iget v6, v0, Lcom/smartisanos/launcher/animations/c/i;->eq:F

    add-float/2addr v3, v6

    add-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    .line 30
    new-instance v3, Lcom/smartisanos/launcher/animations/c/d;

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/animations/c/d;-><init>(Lcom/smartisanos/launcher/animations/c/i;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v7

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public Be()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    if-nez v1, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/c/k;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "error. mPC == null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void

    .line 5
    :cond_2
    iget v2, v0, Lcom/smartisanos/launcher/animations/c/i;->dq:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 6
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/c;->sb(Z)V

    .line 7
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/c;

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2, v4}, Lcom/smartisanos/launcher/view/c;->c(ZF)V

    move v1, v3

    .line 8
    :goto_0
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 9
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/c/j;

    .line 10
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v5}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v5

    iget v6, v4, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 11
    new-instance v15, Lcom/smartisanos/smengine/oa;

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v15, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 12
    iget v6, v4, Lcom/smartisanos/launcher/animations/c/j;->mInterpolator:I

    invoke-virtual {v15, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 13
    iget v11, v0, Lcom/smartisanos/launcher/animations/c/i;->dq:F

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v6, v15

    move-object v2, v15

    move/from16 v15, v16

    invoke-virtual/range {v6 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 14
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 15
    new-instance v6, Lcom/smartisanos/launcher/animations/c/c;

    invoke-direct {v6, v0}, Lcom/smartisanos/launcher/animations/c/c;-><init>(Lcom/smartisanos/launcher/animations/c/i;)V

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 16
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v6, v6, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v7, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v6, v7, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 17
    iget v2, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    add-float/2addr v2, v5

    iput v2, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    int-to-float v1, v1

    .line 18
    iget v2, v4, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    int-to-float v2, v2

    iget v4, v0, Lcom/smartisanos/launcher/animations/c/i;->eq:F

    add-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    goto :goto_0

    .line 19
    :cond_3
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->k(Lcom/smartisanos/launcher/animations/c/k;)I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 20
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->k(Lcom/smartisanos/launcher/animations/c/k;)I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 21
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 22
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v3, 0x13

    .line 23
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 24
    invoke-virtual {v2, v3, v4, v4}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 25
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 27
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v0, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v1, v0, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_4
    return-void
.end method

.method public Ce()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/c/k;->b(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v2

    iget v3, v0, Lcom/smartisanos/launcher/animations/c/i;->cq:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v1

    .line 2
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v3, v6, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 4
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 5
    iget v1, v0, Lcom/smartisanos/launcher/animations/c/i;->dq:F

    sub-float v1, v5, v1

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    .line 7
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    .line 8
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    iget-object v7, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v7}, Lcom/smartisanos/launcher/animations/c/k;->e(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v7, v1

    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/c/k;->e(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v8, v1

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v9}, Lcom/smartisanos/launcher/animations/c/k;->e(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v9, v1

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    move v10, v1

    .line 9
    :goto_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x6

    const/4 v7, 0x1

    if-ge v2, v1, :cond_0

    .line 10
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/animations/c/j;

    .line 11
    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v8

    iget v9, v1, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    int-to-float v9, v9

    mul-float v15, v8, v9

    .line 12
    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/c/k;->b(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v9}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v9

    iget v11, v1, Lcom/smartisanos/launcher/animations/c/j;->gq:F

    invoke-virtual {v8, v5, v4, v9, v11}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v14

    .line 13
    iget v8, v1, Lcom/smartisanos/launcher/animations/c/j;->hq:F

    sub-float v16, v5, v8

    .line 14
    new-instance v13, Lcom/smartisanos/smengine/oa;

    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v13, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 15
    iget v8, v1, Lcom/smartisanos/launcher/animations/c/j;->mInterpolator:I

    invoke-virtual {v13, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 16
    invoke-virtual {v13, v6, v3, v14}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 17
    invoke-virtual {v13, v15}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 18
    invoke-virtual {v13, v7}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 19
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 20
    iget v6, v1, Lcom/smartisanos/launcher/animations/c/j;->mInterpolator:I

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v7, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v6, v3

    move v8, v10

    move v9, v10

    move/from16 v12, v16

    move-object v5, v13

    move/from16 v13, v16

    move/from16 v18, v14

    move/from16 v14, v16

    move v4, v15

    move/from16 v15, v17

    .line 21
    invoke-virtual/range {v6 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 22
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 23
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v6, v6, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v7, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v6, v7, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 24
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v5, v5, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v6, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v5, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 25
    iget v3, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    .line 26
    iget v3, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    int-to-float v3, v3

    iget v1, v1, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    int-to-float v1, v1

    iget v4, v0, Lcom/smartisanos/launcher/animations/c/i;->eq:F

    add-float/2addr v1, v4

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v16

    move/from16 v3, v18

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 27
    :cond_0
    iget v1, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->k(Lcom/smartisanos/launcher/animations/c/k;)I

    move-result v2

    const/16 v3, 0x13

    if-ge v1, v2, :cond_1

    .line 28
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/c/k;->k(Lcom/smartisanos/launcher/animations/c/k;)I

    move-result v1

    iget v2, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 29
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 30
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 31
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v4, 0x0

    .line 32
    invoke-virtual {v2, v6, v4, v4}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 33
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 34
    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 35
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v4, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 36
    :cond_1
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    check-cast v2, Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Jo()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 37
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v9, 0x3

    .line 38
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->e(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    iget v10, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    .line 39
    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->e(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    iget v11, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    .line 40
    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->e(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    iget v12, v2, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v8, v1

    .line 41
    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 42
    iget v2, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 43
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 44
    new-instance v2, Lcom/smartisanos/launcher/animations/c/e;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/animations/c/e;-><init>(Lcom/smartisanos/launcher/animations/c/i;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 45
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public De()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/c/k;->b(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v2

    iget v3, v0, Lcom/smartisanos/launcher/animations/c/i;->cq:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v1

    .line 2
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v3, v6, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 4
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 5
    iget v1, v0, Lcom/smartisanos/launcher/animations/c/i;->dq:F

    sub-float v1, v5, v1

    .line 6
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v1, v1, v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    .line 8
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    move v10, v1

    .line 9
    :goto_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x6

    const/4 v7, 0x1

    if-ge v2, v1, :cond_0

    .line 10
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/animations/c/j;

    .line 11
    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v8

    iget v9, v1, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    int-to-float v9, v9

    mul-float v15, v8, v9

    .line 12
    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/c/k;->b(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v9}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v9

    iget v11, v1, Lcom/smartisanos/launcher/animations/c/j;->gq:F

    invoke-virtual {v8, v5, v4, v9, v11}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v14

    .line 13
    iget v8, v1, Lcom/smartisanos/launcher/animations/c/j;->hq:F

    sub-float v16, v5, v8

    .line 14
    new-instance v13, Lcom/smartisanos/smengine/oa;

    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v13, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 15
    iget v8, v1, Lcom/smartisanos/launcher/animations/c/j;->mInterpolator:I

    invoke-virtual {v13, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 16
    invoke-virtual {v13, v6, v3, v14}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 17
    invoke-virtual {v13, v15}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 18
    invoke-virtual {v13, v7}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 19
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 20
    iget v6, v1, Lcom/smartisanos/launcher/animations/c/j;->mInterpolator:I

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v7, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v6, v3

    move v8, v10

    move v9, v10

    move/from16 v12, v16

    move-object v5, v13

    move/from16 v13, v16

    move/from16 v18, v14

    move/from16 v14, v16

    move v4, v15

    move/from16 v15, v17

    .line 21
    invoke-virtual/range {v6 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 22
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 23
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v6, v6, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v7, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v6, v7, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 24
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v5, v5, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v6, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v5, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 25
    iget v3, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    .line 26
    iget v3, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    int-to-float v3, v3

    iget v1, v1, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    int-to-float v1, v1

    iget v4, v0, Lcom/smartisanos/launcher/animations/c/i;->eq:F

    add-float/2addr v1, v4

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v16

    move/from16 v3, v18

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 27
    :cond_0
    iget v1, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->k(Lcom/smartisanos/launcher/animations/c/k;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 28
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/c/k;->k(Lcom/smartisanos/launcher/animations/c/k;)I

    move-result v1

    iget v2, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 29
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 30
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v3, 0x13

    .line 31
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v3, 0x0

    .line 32
    invoke-virtual {v2, v6, v3, v3}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 33
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 34
    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 35
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v0, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v1, v0, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_1
    return-void
.end method

.method public ze()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    if-nez v1, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/c/k;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "error. when screen lock, launcher not receive ACTION_CANCEL touch"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    const v2, 0x8000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 4
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->f(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/k;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/c/k;->f(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/k;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v5}, Lcom/smartisanos/launcher/animations/c/k;->f(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/k;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v6}, Lcom/smartisanos/launcher/animations/c/k;->f(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/k;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/smartisanos/launcher/view/a/ga;->b(FFFF)V

    .line 5
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/c/k;->b(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v2

    iget v4, v0, Lcom/smartisanos/launcher/animations/c/i;->cq:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v5, v2, v4}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v1

    .line 6
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 7
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    iget v7, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v4, v7, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 8
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 9
    iget v1, v0, Lcom/smartisanos/launcher/animations/c/i;->dq:F

    sub-float v1, v6, v1

    .line 10
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/c/k;->g(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v4, v1

    iget-object v7, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v7}, Lcom/smartisanos/launcher/animations/c/k;->g(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v7, v1

    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/c/k;->g(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v8, v1

    invoke-virtual {v2, v4, v7, v8, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 11
    iput v3, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    .line 12
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    move v11, v1

    .line 13
    :goto_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x6

    const/4 v7, 0x1

    if-ge v3, v1, :cond_2

    .line 14
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->aq:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/animations/c/j;

    .line 15
    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v8

    iget v9, v1, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    int-to-float v9, v9

    mul-float v15, v8, v9

    .line 16
    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/c/k;->b(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v9}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v9

    iget v10, v1, Lcom/smartisanos/launcher/animations/c/j;->gq:F

    invoke-virtual {v8, v6, v5, v9, v10}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result v14

    .line 17
    iget v8, v1, Lcom/smartisanos/launcher/animations/c/j;->hq:F

    sub-float v17, v6, v8

    .line 18
    new-instance v13, Lcom/smartisanos/smengine/oa;

    iget-object v8, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v13, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 19
    iget v8, v1, Lcom/smartisanos/launcher/animations/c/j;->mInterpolator:I

    invoke-virtual {v13, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 20
    invoke-virtual {v13, v4, v2, v14}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 21
    invoke-virtual {v13, v15}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 22
    invoke-virtual {v13, v7}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 23
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 24
    iget v4, v1, Lcom/smartisanos/launcher/animations/c/j;->mInterpolator:I

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v8, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v7, v2

    move v9, v11

    move v10, v11

    move-object v4, v13

    move/from16 v13, v17

    move/from16 v18, v14

    move/from16 v14, v17

    move v6, v15

    move/from16 v15, v17

    .line 25
    invoke-virtual/range {v7 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 26
    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 27
    new-instance v7, Lcom/smartisanos/launcher/animations/c/f;

    invoke-direct {v7, v0}, Lcom/smartisanos/launcher/animations/c/f;-><init>(Lcom/smartisanos/launcher/animations/c/i;)V

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 28
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v7, v7, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v8, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v7, v8, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 29
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v7, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v4, v7, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 30
    iget v2, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    add-float/2addr v2, v6

    iput v2, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    .line 31
    iget v2, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    int-to-float v2, v2

    iget v1, v1, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    int-to-float v1, v1

    iget v4, v0, Lcom/smartisanos/launcher/animations/c/i;->eq:F

    add-float/2addr v1, v4

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v17

    move/from16 v2, v18

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 32
    :cond_2
    iget v1, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->k(Lcom/smartisanos/launcher/animations/c/k;)I

    move-result v2

    const/16 v3, 0x13

    if-ge v1, v2, :cond_3

    .line 33
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/c/k;->k(Lcom/smartisanos/launcher/animations/c/k;)I

    move-result v1

    iget v2, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 34
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 35
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v2, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 36
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 37
    invoke-virtual {v2, v4, v5, v5}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 38
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 39
    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/oa;->va(Z)V

    .line 40
    new-instance v1, Lcom/smartisanos/launcher/animations/c/g;

    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/animations/c/g;-><init>(Lcom/smartisanos/launcher/animations/c/i;)V

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 41
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v4, v0, Lcom/smartisanos/launcher/animations/c/i;->bq:F

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 42
    :cond_3
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->wn:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 43
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v9, 0x3

    .line 44
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->g(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    iget v10, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    .line 45
    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->g(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    iget v11, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    .line 46
    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->g(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    iget v12, v2, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v8, v1

    .line 47
    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 48
    iget v2, v0, Lcom/smartisanos/launcher/animations/c/i;->fq:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/c/k;->j(Lcom/smartisanos/launcher/animations/c/k;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 49
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 50
    new-instance v2, Lcom/smartisanos/launcher/animations/c/h;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/animations/c/h;-><init>(Lcom/smartisanos/launcher/animations/c/i;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 51
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v5, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method
