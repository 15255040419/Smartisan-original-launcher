.class public Lcom/smartisanos/launcher/animations/Ja;
.super Lcom/smartisanos/launcher/animations/V;
.source "PageAnimation.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private mPage:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/Ja;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/Ja;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/V;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ja;->mPage:Lcom/smartisanos/launcher/view/b/M;

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;FLjava/util/ArrayList;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 4
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/animations/Ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAnimation ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/animations/Ia;->Sn:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_a

    .line 6
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 7
    :cond_2
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/smengine/g;

    if-eqz v3, :cond_a

    .line 8
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/g;

    .line 9
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/Ja;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    if-nez v0, :cond_3

    .line 10
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/smartisanos/launcher/animations/Ja;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "error when handleAnimation HIDDEN_PAGE_TITLE, mTitleAreaNode is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11
    :cond_3
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, v0, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 12
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v0, 0xe

    .line 13
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v3

    .line 14
    invoke-virtual/range {v5 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 15
    invoke-virtual {v2, v4, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto/16 :goto_1

    :cond_4
    if-eqz v2, :cond_a

    .line 16
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_1

    .line 17
    :cond_5
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/smengine/g;

    if-eqz v3, :cond_a

    .line 18
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/g;

    .line 19
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/Ja;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v6

    if-nez v6, :cond_6

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/smartisanos/launcher/animations/Ja;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "error handleAnimation SHOW_PAGE_TITLE, mTitleAreaNode is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 21
    :cond_6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x3

    .line 23
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 25
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_4_MODE(I)Z

    move-result v7

    const v8, 0x3d8f5c29    # 0.07f

    if-eqz v7, :cond_7

    int-to-float v2, v5

    const v4, 0x3cf5c28f    # 0.03f

    mul-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float v4, v2, v8

    goto :goto_0

    .line 26
    :cond_7
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_MODE(I)Z

    move-result v2

    if-eqz v2, :cond_8

    int-to-float v2, v5

    const v4, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v2, v5

    add-float/2addr v2, v8

    add-float/2addr v4, v2

    .line 27
    :cond_8
    :goto_0
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/Ja;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 28
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/Ja;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 29
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    div-float/2addr v0, v5

    .line 30
    new-instance v5, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 31
    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v15, 0xf

    .line 32
    invoke-virtual {v5, v15}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 33
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 34
    iget v8, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v7, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    iget v10, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    iget v0, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v6, v8, v9, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 35
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 36
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    iget v11, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 37
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v14

    .line 38
    new-instance v13, Lcom/smartisanos/smengine/a/j;

    iget v7, v14, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v14, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    iget v10, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, v14, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v13, v7, v8, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v8, 0x0

    .line 39
    iget v9, v14, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v14, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v14, Lcom/smartisanos/smengine/a/j;->z:F

    iget v12, v13, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v13, Lcom/smartisanos/smengine/a/j;->y:F

    iget v15, v13, Lcom/smartisanos/smengine/a/j;->z:F

    move/from16 v16, v7

    move-object v7, v5

    move-object/from16 v17, v13

    move/from16 v13, v16

    move-object/from16 v18, v14

    move v14, v15

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 40
    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 41
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_9

    .line 42
    new-instance v5, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/tc;->Tp()Lcom/smartisanos/smengine/F;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 43
    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v1, 0xf

    .line 44
    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 45
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/tc;->Tp()Lcom/smartisanos/smengine/F;

    move-result-object v1

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v9, v2

    sub-float/2addr v8, v9

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v7, v8, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const/4 v8, 0x0

    move-object/from16 v0, v18

    .line 46
    iget v9, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v0, Lcom/smartisanos/smengine/a/j;->z:F

    move-object/from16 v0, v17

    iget v12, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v0, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v7, v5

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 47
    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 48
    :cond_9
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/tc;->updateGeometricState()V

    :cond_a
    :goto_1
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/g;F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ja;->mPage:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/animations/Ja;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "error when execute switchTitleMode, mTitleAreaNode is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/tc;->a(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/g;F)V

    return-void
.end method

.method public c(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ja;->mPage:Lcom/smartisanos/launcher/view/b/M;

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/Ja;->mPage:Lcom/smartisanos/launcher/view/b/M;

    return-void
.end method
