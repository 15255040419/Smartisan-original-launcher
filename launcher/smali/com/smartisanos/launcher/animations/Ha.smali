.class public Lcom/smartisanos/launcher/animations/Ha;
.super Ljava/lang/Object;
.source "MultiSelectSpreadOutAnimation.java"


# instance fields
.field public Dn:Z

.field private Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private Rn:Ljava/util/ArrayList;

.field private dl:Lcom/smartisanos/launcher/view/b/fa;

.field public xn:Ljava/util/ArrayList;

.field private yn:Lcom/smartisanos/smengine/g;

.field private zn:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/b/fa;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ha;->zn:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/Ha;->Dn:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/Ha;->Dn:Z

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ha;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/Ha;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ha;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 8
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/Ha;->xn:Ljava/util/ArrayList;

    .line 9
    iput-object p3, p0, Lcom/smartisanos/launcher/animations/Ha;->Rn:Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1, p4}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/Ha;->Zd()V

    return-void
.end method

.method private Bw()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ha;->xn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ha;->xn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    new-instance v3, Lcom/smartisanos/launcher/animations/Fa;

    invoke-direct {v3, p0, v2}, Lcom/smartisanos/launcher/animations/Fa;-><init>(Lcom/smartisanos/launcher/animations/Ha;Lcom/smartisanos/launcher/view/a/g;)V

    .line 4
    invoke-virtual {v3}, Lcom/smartisanos/launcher/animations/Fa;->Xd()V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ha;->zn:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x3cf5c28f    # 0.03f

    move v2, v0

    move v3, v2

    .line 6
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/Ha;->zn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 7
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/Ha;->zn:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/Fa;

    move v5, v0

    .line 8
    :goto_2
    iget-object v6, v4, Lcom/smartisanos/launcher/animations/Fa;->vn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 9
    iget-object v6, v4, Lcom/smartisanos/launcher/animations/Fa;->vn:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/animations/A;

    .line 10
    iget v7, v6, Lcom/smartisanos/launcher/animations/A;->Dm:F

    int-to-float v8, v3

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    if-eqz v5, :cond_1

    .line 11
    iput v7, v6, Lcom/smartisanos/launcher/animations/A;->Dm:F

    .line 12
    :cond_1
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v7, :cond_2

    .line 13
    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Fa;->a(Lcom/smartisanos/launcher/animations/Fa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/smartisanos/launcher/animations/Ha;->b(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_3

    .line 14
    :cond_2
    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Fa;->a(Lcom/smartisanos/launcher/animations/Fa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/smartisanos/launcher/animations/Ha;->a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/Ha;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ha;->Rn:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    if-eqz v3, :cond_0

    .line 3
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 4
    iget v4, v1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 5
    iget v4, v1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v5, 0x0

    .line 6
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    iget v6, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v4, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v4, v1, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    iget v9, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v4, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v4, v3

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 7
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget v5, v1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 8
    :cond_0
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    if-eqz v3, :cond_1

    .line 9
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 10
    iget v5, v1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 11
    iget v5, v1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v6, 0x1

    .line 12
    iget-object v5, v1, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v5, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v5, v1, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    iget v10, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v5, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v5, v3

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 13
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 14
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget v6, v1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v5, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 15
    :cond_1
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/A;->ym:Lcom/smartisanos/smengine/a/k;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 17
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 18
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 19
    iget v5, v1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 20
    iget v5, v1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v6, 0x3

    .line 21
    iget-object v5, v1, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    iget v7, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v8, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v9, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v10, v5, Lcom/smartisanos/smengine/a/k;->w:F

    iget-object v5, v1, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    iget v11, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v12, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v13, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v14, v5, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v5, v3

    invoke-virtual/range {v5 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 22
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget v6, v1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v5, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 23
    new-instance v3, Lcom/smartisanos/smengine/oa;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 24
    iget v5, v1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 25
    iget v5, v1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v8, 0x3

    .line 26
    iget-object v5, v1, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    iget v9, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v10, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v11, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v12, v5, Lcom/smartisanos/smengine/a/k;->w:F

    iget-object v5, v1, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    iget v13, v5, Lcom/smartisanos/smengine/a/k;->x:F

    iget v14, v5, Lcom/smartisanos/smengine/a/k;->y:F

    iget v15, v5, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, v5, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v7, v3

    move/from16 v16, v5

    invoke-virtual/range {v7 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 27
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget v6, v1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v5, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 28
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 29
    iget v4, v1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 30
    iget v4, v1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 31
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    iget v9, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v10, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v11, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v12, v4, Lcom/smartisanos/smengine/a/k;->w:F

    iget-object v4, v1, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    iget v13, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v14, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v15, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v4, v4, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v7, v3

    move/from16 v16, v4

    invoke-virtual/range {v7 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 32
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    if-eqz v4, :cond_3

    .line 33
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 34
    :cond_3
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget v5, v1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 35
    new-instance v3, Lcom/smartisanos/smengine/oa;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 36
    iget v2, v1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 37
    iget v2, v1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v7, 0x3

    .line 38
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    iget v8, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v11, v2, Lcom/smartisanos/smengine/a/k;->w:F

    iget-object v2, v1, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    iget v12, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v13, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v14, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v15, v2, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v6, v3

    invoke-virtual/range {v6 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 39
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget v1, v1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    .line 40
    :cond_4
    :goto_0
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 41
    iget v2, v1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 42
    iget v2, v1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v5, 0x3

    .line 43
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    iget v6, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v9, v2, Lcom/smartisanos/smengine/a/k;->w:F

    iget-object v2, v1, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    iget v10, v2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v11, v2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v12, v2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v13, v2, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v4, v3

    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 44
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget v1, v1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/Ha;)Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ha;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method private b(Lcom/smartisanos/launcher/animations/A;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 11

    .line 2
    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 4
    iget v1, p1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 5
    iget v1, p1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v2, 0x0

    .line 6
    iget-object v1, p1, Lcom/smartisanos/launcher/animations/A;->um:Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v1, p1, Lcom/smartisanos/launcher/animations/A;->vm:Lcom/smartisanos/smengine/a/j;

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v1, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget v2, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 10
    iget v2, p1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 11
    iget v2, p1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v3, 0x1

    .line 12
    iget-object v2, p1, Lcom/smartisanos/launcher/animations/A;->wm:Lcom/smartisanos/smengine/a/j;

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v2, p1, Lcom/smartisanos/launcher/animations/A;->xm:Lcom/smartisanos/smengine/a/j;

    iget v7, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v2, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    .line 14
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget v3, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->ym:Lcom/smartisanos/smengine/a/k;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/smartisanos/launcher/animations/A;->zm:Lcom/smartisanos/smengine/a/k;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 19
    iget p2, p1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 20
    iget p2, p1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v2, 0x3

    .line 21
    iget-object p2, p1, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    iget v3, p2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, p2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, p2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v6, p2, Lcom/smartisanos/smengine/a/k;->w:F

    iget-object p2, p1, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    iget v7, p2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v8, p2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v9, p2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v10, p2, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 22
    iget-object p2, p1, Lcom/smartisanos/launcher/animations/A;->Hm:Lcom/smartisanos/smengine/a;

    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 24
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget p1, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    .line 25
    :cond_4
    :goto_0
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 26
    iget p2, p1, Lcom/smartisanos/launcher/animations/A;->Em:I

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 27
    iget p2, p1, Lcom/smartisanos/launcher/animations/A;->Cm:F

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v2, 0x3

    .line 28
    iget-object p2, p1, Lcom/smartisanos/launcher/animations/A;->Am:Lcom/smartisanos/smengine/a/k;

    iget v3, p2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, p2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, p2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v6, p2, Lcom/smartisanos/smengine/a/k;->w:F

    iget-object p2, p1, Lcom/smartisanos/launcher/animations/A;->Bm:Lcom/smartisanos/smengine/a/k;

    iget v7, p2, Lcom/smartisanos/smengine/a/k;->x:F

    iget v8, p2, Lcom/smartisanos/smengine/a/k;->y:F

    iget v9, p2, Lcom/smartisanos/smengine/a/k;->z:F

    iget v10, p2, Lcom/smartisanos/smengine/a/k;->w:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 29
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    iget p1, p1, Lcom/smartisanos/launcher/animations/A;->Dm:F

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public Yd()Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method public Zd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/Ha;->Bw()V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ha;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Ha;->xn:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ha;->xn:Ljava/util/ArrayList;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Ha;->Rn:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ha;->Rn:Ljava/util/ArrayList;

    .line 8
    :cond_1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ha;->yn:Lcom/smartisanos/smengine/g;

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/Ha;->zn:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ha;->zn:Ljava/util/ArrayList;

    .line 12
    :cond_2
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ha;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    return-void
.end method
