.class public Lcom/smartisanos/launcher/animations/U;
.super Lcom/smartisanos/launcher/animations/V;
.source "DockViewAnimation.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Pm:Lcom/smartisanos/smengine/a/k;

.field private Qm:Lcom/smartisanos/smengine/a/k;

.field private Rm:Lcom/smartisanos/smengine/g;

.field private mView:Lcom/smartisanos/launcher/view/V;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/U;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/V;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/V;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/U;->Pm:Lcom/smartisanos/smengine/a/k;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/U;->Qm:Lcom/smartisanos/smengine/a/k;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/U;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(FLjava/util/List;)V
    .locals 16

    move-object/from16 v7, p0

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 32
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "CELL_BROADED begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    .line 33
    :try_start_0
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    goto :goto_0

    :catch_0
    move-object v9, v0

    :goto_0
    if-nez v9, :cond_2

    .line 34
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "CELL_BROADED timeLine is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CELL_BROADED lose time line !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_2
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v10

    .line 37
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 38
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v12, v0, v0, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 39
    new-instance v13, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v13, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    if-lez v11, :cond_5

    move v14, v8

    :goto_1
    if-ge v14, v11, :cond_5

    .line 40
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/smartisanos/launcher/view/a/g;

    .line 41
    invoke-virtual {v15, v8}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/l;->Xg()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "getNarrowed true !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 43
    :cond_3
    invoke-virtual {v15, v8}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/l;->U(Z)V

    const/4 v2, 0x1

    const/16 v4, 0xe

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v3, p1

    move-object v5, v12

    move-object v6, v13

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/smartisanos/launcher/animations/L;

    invoke-direct {v1, v7, v15}, Lcom/smartisanos/launcher/animations/L;-><init>(Lcom/smartisanos/launcher/animations/U;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v9, v1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 47
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_4

    .line 48
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v9, v1, v1}, Lcom/smartisanos/launcher/view/a/X;->e(Lcom/smartisanos/smengine/g;FF)V

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private b(FLjava/util/List;)V
    .locals 22

    move-object/from16 v0, p2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v1

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "CELL_NARROWED begin !"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_2

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "CELL_NARROWED timeLine is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CELL_NARROWED lose time line !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v4, 0x1

    .line 6
    :try_start_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 7
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_3

    .line 8
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move v5, v2

    .line 9
    :goto_1
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    const v0, 0x3ca3d70a    # 0.02f

    move-object/from16 v13, p0

    goto :goto_3

    :cond_4
    move-object/from16 v13, p0

    move/from16 v0, p1

    .line 10
    :goto_3
    iget-object v6, v13, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v14

    .line 11
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_a

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v6

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    .line 13
    iget v12, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    .line 14
    invoke-static {v6}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v6

    const/high16 v7, 0x3fa00000    # 1.25f

    mul-float v11, v6, v7

    .line 15
    new-instance v10, Lcom/smartisanos/smengine/a/j;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v10, v6, v6, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 16
    new-instance v9, Lcom/smartisanos/smengine/a/j;

    const v7, 0x3f4ccccd    # 0.8f

    invoke-direct {v9, v7, v7, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 17
    new-instance v8, Lcom/smartisanos/smengine/g;

    invoke-direct {v8}, Lcom/smartisanos/smengine/g;-><init>()V

    move v7, v2

    :goto_4
    if-ge v7, v15, :cond_9

    .line 18
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v10

    move-object/from16 v10, v16

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v18, p1

    move-object/from16 v17, v1

    move v10, v2

    move/from16 v16, v7

    move-object v1, v9

    move v2, v11

    move/from16 v20, v12

    move-object/from16 v21, v8

    move v8, v4

    move-object/from16 v4, v21

    goto/16 :goto_5

    :cond_5
    neg-float v6, v12

    const/high16 v16, 0x40000000    # 2.0f

    div-float v6, v6, v16

    neg-float v4, v11

    div-float v2, v12, v16

    move-object/from16 v17, v1

    div-float v1, v11, v16

    .line 20
    invoke-virtual {v10, v6, v4, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 21
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/4 v1, 0x0

    .line 22
    invoke-virtual {v10, v1}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/l;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/l;->U(Z)V

    const/4 v1, 0x1

    const/16 v2, 0xe

    const/4 v4, 0x0

    move-object/from16 v6, p0

    move/from16 v16, v7

    move-object v7, v10

    move-object v4, v8

    move v8, v1

    move-object v1, v9

    move v9, v0

    move-object/from16 v18, p1

    move-object/from16 v19, v10

    move v10, v2

    move v2, v11

    move-object/from16 v11, v18

    move/from16 v20, v12

    move-object v12, v1

    .line 23
    invoke-virtual/range {v6 .. v12}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v6

    const/4 v7, 0x0

    .line 24
    invoke-virtual {v4, v7, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 25
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v6, :cond_7

    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v6, :cond_7

    if-eqz v5, :cond_6

    move-object/from16 v6, v19

    const/4 v8, 0x1

    .line 26
    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Mc;

    if-eqz v9, :cond_8

    .line 27
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v10

    invoke-virtual {v10, v7, v7, v7, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/16 v7, 0x10

    const/4 v10, 0x0

    .line 28
    invoke-virtual {v6, v7, v10}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 29
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 30
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_5

    :cond_6
    move-object/from16 v6, v19

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 31
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v6

    const v9, 0x3dcccccd    # 0.1f

    invoke-virtual {v6, v3, v9, v7}, Lcom/smartisanos/launcher/view/a/X;->d(Lcom/smartisanos/smengine/g;FF)V

    goto :goto_5

    :cond_7
    const/4 v8, 0x1

    :cond_8
    const/4 v10, 0x0

    :goto_5
    add-int/lit8 v7, v16, 0x1

    move-object v9, v1

    move v11, v2

    move v2, v10

    move-object/from16 v1, v17

    move-object/from16 v10, v18

    move/from16 v12, v20

    move/from16 v21, v8

    move-object v8, v4

    move/from16 v4, v21

    goto/16 :goto_4

    :cond_9
    move-object v4, v8

    const/4 v7, 0x0

    .line 32
    invoke-virtual {v3, v7, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_a
    return-void
.end method

.method private c(FLjava/util/List;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    move-object v9, v2

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    .line 2
    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 4
    :goto_1
    iget-object v2, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->gp()V

    .line 5
    new-instance v10, Lcom/smartisanos/smengine/g;

    invoke-direct {v10}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 6
    iget-object v2, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/smartisanos/launcher/view/V;->g(ZI)[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 7
    iget-object v2, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v11

    move v12, v1

    :goto_2
    const-string v13, "]"

    const/4 v14, 0x0

    if-ge v12, v11, :cond_1

    .line 8
    iget-object v1, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1, v12}, Lcom/smartisanos/launcher/view/V;->Db(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v15

    .line 9
    invoke-virtual {v15}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 10
    aget-object v7, v0, v12

    const/4 v3, 0x0

    const/16 v5, 0xf

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v4, p1

    move-object/from16 p2, v7

    .line 11
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 12
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cell ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], move to x ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "], y ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-virtual {v10, v14, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 14
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 15
    iget-object v0, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 17
    iget-object v1, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Uo()Lcom/smartisanos/smengine/a/j;

    move-result-object v11

    const/4 v3, 0x0

    const/16 v5, 0xf

    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v4, p1

    move-object v7, v11

    .line 18
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 19
    invoke-virtual {v10, v14, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 20
    sget-object v1, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DOCK_CELL_RELAYOUT  setting move from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], to ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 21
    :cond_2
    invoke-virtual {v9, v14, v10}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DOCK_CELL_RELAYOUT lose time line !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(FLjava/util/List;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 5
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    iget v1, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v7, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v2, v0

    iget v0, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v8, v1, v2, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object v2, p0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/animations/M;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/animations/M;-><init>(Lcom/smartisanos/launcher/animations/U;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/4 p0, 0x0

    .line 8
    invoke-virtual {p2, p0, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DOCK_FALL lose time line !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private e(FLjava/util/List;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 4
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    iget v1, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v8, v1, v0, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object v2, p0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/animations/N;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/animations/N;-><init>(Lcom/smartisanos/launcher/animations/U;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/4 p0, 0x0

    .line 7
    invoke-virtual {p2, p0, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DOCK_UP lose time line !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private f(FLjava/util/List;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    .line 4
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 5
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v0, v0, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/V;->XJ:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x3

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, v8

    move v3, p1

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 9
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 10
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    iget v0, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v5, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    iget v2, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v6, v0, v1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v8

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 13
    invoke-virtual {v8}, Lcom/smartisanos/smengine/F;->getWidth()F

    move-result v0

    .line 14
    invoke-virtual {v8}, Lcom/smartisanos/smengine/F;->getHeight()F

    move-result v1

    .line 15
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    div-float v4, v1, v2

    invoke-direct {v5, v3, v4, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const v3, 0x3f75c28f    # 0.96f

    mul-float/2addr v0, v3

    mul-float/2addr v1, v3

    .line 16
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    invoke-direct {v6, v0, v1, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v2, 0x1

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, v8

    move v3, p1

    .line 17
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/animations/I;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/I;-><init>(Lcom/smartisanos/launcher/animations/U;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method private g(FLjava/util/List;)V
    .locals 23

    move-object/from16 v7, p0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    .line 1
    :try_start_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    .line 2
    new-instance v10, Lcom/smartisanos/smengine/a/k;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11, v11, v11}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 3
    new-instance v12, Lcom/smartisanos/smengine/a/k;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v12, v0, v0, v0, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/high16 v13, 0x3e800000    # 0.25f

    .line 4
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v6

    .line 5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v4, 0x1

    if-lez v5, :cond_4

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    move v13, v8

    :goto_1
    if-ge v13, v5, :cond_4

    .line 7
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 8
    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    const/16 v16, 0x2

    .line 9
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    const v0, 0x3ee66666    # 0.45f

    invoke-direct {v3, v0, v0, v0, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    move-object/from16 v0, p0

    move-object/from16 v17, v3

    move/from16 v3, p1

    move v14, v4

    move/from16 v4, v16

    move v8, v5

    move-object/from16 v5, v17

    move-object v15, v6

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 10
    invoke-virtual {v9, v11, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_2

    :cond_0
    move v14, v4

    move v8, v5

    move-object v15, v6

    :goto_2
    add-int/lit8 v13, v13, 0x1

    move v5, v8

    move v4, v14

    move-object v6, v15

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move v14, v4

    move v8, v5

    move-object v15, v6

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v8, :cond_5

    .line 11
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/smartisanos/launcher/view/a/g;

    .line 12
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    sub-int v5, v8, v0

    sub-int/2addr v5, v14

    int-to-float v1, v5

    .line 13
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v3, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v2, v3, :cond_2

    int-to-float v1, v0

    :cond_2
    const v0, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v0

    .line 14
    invoke-virtual {v6, v14}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 15
    iget-object v2, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float v5, v1, v2

    .line 16
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v18

    .line 17
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object v1, v6

    move v3, v13

    move-object/from16 v20, v4

    move/from16 v4, v19

    move v13, v5

    move-object/from16 v5, v18

    move-object v14, v6

    move-object/from16 v6, v20

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 19
    invoke-virtual {v9, v13, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    const/4 v6, 0x0

    .line 20
    invoke-virtual {v14, v6}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object v5, v10

    move/from16 v16, v6

    move-object v6, v12

    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/smartisanos/launcher/animations/Q;

    invoke-direct {v1, v7, v14}, Lcom/smartisanos/launcher/animations/Q;-><init>(Lcom/smartisanos/launcher/animations/U;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 23
    invoke-virtual {v9, v13, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_4

    :cond_3
    move/from16 v16, v6

    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/high16 v13, 0x3e800000    # 0.25f

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    move v8, v5

    .line 24
    :cond_5
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v11, v0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    .line 25
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Wo()[Lcom/smartisanos/smengine/a/j;

    move-result-object v13

    .line 26
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Uo()Lcom/smartisanos/smengine/a/j;

    move-result-object v14

    .line 27
    array-length v15, v11

    .line 28
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->ep()V

    add-int/lit8 v0, v15, -0x1

    move v6, v0

    :goto_5
    if-ltz v6, :cond_8

    sub-int v0, v15, v6

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 29
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v1, v2, :cond_6

    int-to-float v0, v6

    :cond_6
    move v1, v0

    const v0, 0x3d23d70a    # 0.04f

    mul-float v5, v1, v0

    .line 30
    aget-object v4, v11, v6

    .line 31
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_7

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 33
    :cond_7
    aget-object v16, v13, v6

    const/4 v2, 0x0

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object v1, v4

    const/high16 v20, 0x3e800000    # 0.25f

    move/from16 v3, v20

    move-object/from16 v21, v4

    move/from16 v4, v19

    move/from16 v22, v5

    move-object/from16 v5, v16

    move/from16 v16, v6

    move-object v6, v14

    .line 34
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    move/from16 v6, v22

    .line 35
    invoke-virtual {v9, v6, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move-object/from16 v1, v21

    .line 36
    invoke-virtual {v1, v12}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    move-object v5, v12

    move-object/from16 v19, v11

    move v11, v6

    move-object v6, v10

    .line 37
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 38
    invoke-virtual {v9, v11, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v6, v16, -0x1

    move-object/from16 v11, v19

    goto :goto_5

    .line 39
    :cond_8
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v1

    .line 40
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_9

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 42
    :cond_9
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 43
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Uo()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 44
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/a/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v3, p1

    .line 45
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 46
    iget-object v1, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v1, v1

    add-int/2addr v1, v8

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v2

    .line 47
    invoke-virtual {v9, v1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_a
    return-void
.end method

.method private h(FLjava/util/List;)V
    .locals 21

    move-object/from16 v7, p0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    .line 1
    :try_start_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    .line 2
    new-instance v10, Lcom/smartisanos/smengine/a/k;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11, v11, v11}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 3
    new-instance v12, Lcom/smartisanos/smengine/a/k;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v13, v13, v13}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/high16 v14, 0x3e800000    # 0.25f

    const/high16 v15, 0x3e800000    # 0.25f

    const v6, 0x3d23d70a    # 0.04f

    .line 4
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v5

    .line 5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v3, v8

    :goto_1
    if-ge v3, v4, :cond_1

    .line 6
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    const/4 v0, 0x1

    .line 9
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 10
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v0, v0

    int-to-float v0, v0

    mul-float v1, v0, v6

    .line 11
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v16

    .line 12
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    const/16 v17, 0x0

    const/16 v18, 0x2

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move v13, v1

    move-object v1, v2

    move-object v11, v2

    move/from16 v2, v17

    move/from16 v17, v3

    move v3, v14

    move/from16 v20, v4

    move/from16 v4, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move v14, v6

    move-object/from16 v6, v19

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 14
    invoke-virtual {v9, v13, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 15
    invoke-virtual {v11, v8}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object v5, v10

    move-object v6, v12

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/smartisanos/launcher/animations/S;

    invoke-direct {v1, v7, v11}, Lcom/smartisanos/launcher/animations/S;-><init>(Lcom/smartisanos/launcher/animations/U;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 18
    invoke-virtual {v9, v13, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_0
    add-int/lit8 v3, v17, 0x1

    move v6, v14

    move-object/from16 v5, v18

    move/from16 v4, v20

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3e800000    # 0.25f

    goto :goto_1

    :cond_1
    move v14, v6

    .line 19
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v11, v0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    .line 20
    array-length v13, v11

    .line 21
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Wo()[Lcom/smartisanos/smengine/a/j;

    move-result-object v16

    .line 22
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/view/V;->Gb(I)[Lcom/smartisanos/smengine/a/j;

    move-result-object v17

    .line 23
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->ep()V

    move v6, v8

    :goto_2
    if-ge v6, v13, :cond_2

    .line 24
    aget-object v5, v11, v6

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 26
    aget-object v18, v16, v6

    .line 27
    aget-object v19, v17, v6

    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move v3, v15

    move-object v8, v5

    move-object/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, v19

    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v9, v1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 30
    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    const/4 v2, 0x3

    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v5, v12

    move-object v6, v10

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v9, v1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v6, v18, 0x1

    const/4 v8, 0x0

    goto :goto_2

    .line 33
    :cond_2
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v1

    .line 34
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    const v8, 0x3e4ccccd    # 0.2f

    .line 35
    new-instance v10, Lcom/smartisanos/smengine/a/k;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v10, v0, v0, v0, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 36
    new-instance v11, Lcom/smartisanos/smengine/a/k;

    const/4 v0, 0x0

    invoke-direct {v11, v0, v0, v0, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/4 v2, 0x3

    const/16 v4, 0xe

    const v3, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    move-object v5, v11

    move-object v6, v10

    .line 37
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 38
    invoke-virtual {v9, v14, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 39
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_3

    .line 42
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x3

    const/16 v4, 0xe

    move-object/from16 v0, p0

    move-object v1, v6

    move v3, v8

    move-object v5, v10

    move-object v8, v6

    move-object v6, v11

    .line 43
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/smartisanos/launcher/animations/T;

    invoke-direct {v1, v7, v8}, Lcom/smartisanos/launcher/animations/T;-><init>(Lcom/smartisanos/launcher/animations/U;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 45
    invoke-virtual {v9, v14, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v15, v15, 0x1

    const v8, 0x3e4ccccd    # 0.2f

    goto :goto_3

    :cond_3
    return-void
.end method

.method private i(FLjava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "runIconSortConfirmAnim return by timeLine is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->wZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {p0, v0, p1, v1}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const p2, 0x3e99999a    # 0.3f

    .line 10
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object p2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->vZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {p0, p2, p1, v0}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    return-void
.end method

.method private j(FLjava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v8, p1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    .line 1
    :try_start_0
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_3

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->jZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v2, v8, v1}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 5
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->oZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v2, v8, v1}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 6
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v11

    .line 7
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 8
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 9
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v3, v4

    .line 10
    iget v4, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v4, v2

    .line 11
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_0

    .line 12
    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cell_icon_size:F

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    div-float v3, v2, v1

    div-float v4, v2, v1

    .line 13
    :cond_0
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v12, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 14
    new-instance v13, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v13, v3, v4, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v14, 0x0

    if-lez v11, :cond_1

    .line 15
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v2

    invoke-virtual {v1, v9, v2}, Lcom/smartisanos/launcher/view/V;->g(ZI)[Lcom/smartisanos/smengine/a/j;

    move-result-object v15

    .line 16
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->gp()V

    move v7, v9

    :goto_0
    if-ge v7, v11, :cond_1

    .line 17
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/smartisanos/launcher/view/a/g;

    .line 18
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 19
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v1

    aget-object v17, v15, v1

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v4, p1

    move/from16 v18, v7

    move-object/from16 v7, v17

    .line 20
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 21
    invoke-virtual {v10, v14, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    const/4 v3, 0x1

    move-object/from16 v1, p0

    move-object v6, v12

    move-object v7, v13

    .line 22
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 23
    invoke-virtual {v10, v14, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v7, v18, 0x1

    goto :goto_0

    .line 24
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 25
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 26
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v3, v2

    :goto_1
    if-ge v9, v3, :cond_2

    aget-object v4, v2, v9

    .line 27
    invoke-virtual {v4, v1, v1, v14}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 28
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 29
    :cond_2
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1, v1, v14}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 30
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 31
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1, v1, v14}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 32
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void

    .line 33
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "REDUCE_DOCK_VIEW_SIZE lose time line !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private k(FLjava/util/List;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v3

    goto :goto_0

    :catch_0
    move-object v8, v2

    :goto_0
    const/4 v3, 0x1

    .line 2
    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v0, v2

    :goto_1
    if-eqz v8, :cond_6

    .line 3
    iget-object v2, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v2

    if-eqz v2, :cond_5

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    new-instance v9, Lcom/smartisanos/smengine/g;

    invoke-direct {v9}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 5
    iget-object v2, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->gp()V

    .line 6
    iget-object v2, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v10

    .line 7
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cells size ===> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v2, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v4

    invoke-virtual {v2, v3, v4, v3}, Lcom/smartisanos/launcher/view/V;->a(ZIZ)[Lcom/smartisanos/smengine/a/j;

    move-result-object v11

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    :cond_2
    move-wide v12, v2

    move v14, v1

    .line 10
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v15, 0x0

    if-ge v14, v0, :cond_4

    .line 11
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/smartisanos/launcher/view/a/g;

    .line 12
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v0, v12, v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 14
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v0

    aget-object v6, v11, v0

    const/4 v2, 0x0

    const/16 v4, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v3, p1

    move-object/from16 p2, v6

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 16
    invoke-virtual {v9, v15, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 17
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v8, v15, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 19
    :cond_5
    :goto_3
    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "RELAYOUT_BY_ENTER_OR_EXIT_CELL_AREA nothing to do by cellCount is 0 or 1"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RELAYOUT_BY_ENTER_OR_EXIT_CELL_AREA lose time line !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l(FLjava/util/List;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    if-eqz v0, :cond_e

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 3
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x2

    if-le v6, v8, :cond_1

    .line 7
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    check-cast v0, Lcom/smartisanos/launcher/view/a/g;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move v5, v2

    :goto_0
    move-object v9, v0

    goto :goto_1

    :catch_0
    move-object v4, v1

    :catch_1
    move v5, v2

    :catch_2
    move-object v9, v1

    :goto_1
    move-object v8, v4

    goto :goto_2

    :cond_3
    move-object v8, v1

    move-object v9, v8

    move v5, v2

    :goto_2
    if-eqz v5, :cond_4

    const v0, 0x3ca3d70a    # 0.02f

    move v10, v0

    goto :goto_3

    :cond_4
    move/from16 v10, p1

    :goto_3
    if-eqz v8, :cond_d

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;I)V

    if-eqz v9, :cond_6

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v4

    if-ne v0, v4, :cond_6

    .line 12
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v4, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v0, v4, :cond_6

    .line 14
    :cond_5
    iget-object v1, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/V;->Eb(I)[Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    .line 15
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/launcher/view/V;->g(ZI)[Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    :cond_7
    move-object v11, v1

    .line 16
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->gp()V

    .line 17
    new-instance v12, Lcom/smartisanos/smengine/g;

    invoke-direct {v12}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 18
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v13

    move v14, v2

    :goto_4
    const/4 v15, 0x0

    if-ge v14, v13, :cond_b

    .line 19
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v9, :cond_8

    .line 20
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 21
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 22
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v0

    aget-object v6, v11, v0

    .line 23
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v0

    iput-object v6, v0, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    const/16 v4, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v3, v10

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 25
    invoke-virtual {v12, v15, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_9
    if-eqz v9, :cond_a

    .line 26
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 27
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v1

    aget-object v1, v11, v1

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 28
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->lZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v7, v1, v10, v0}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 32
    :cond_c
    invoke-virtual {v8, v15, v12}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 33
    :cond_d
    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "RELAYOUT_BY_LONG_PRESSED timeLine is null !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RELAYOUT_BY_LONG_PRESSED lose time line !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_e
    :goto_5
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "RELAYOUT_BY_LONG_PRESSED break by params is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private m(FLjava/util/List;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p2

    if-eqz v0, :cond_9

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 3
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    .line 4
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    move-object v1, v0

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    :cond_1
    move-object v9, v1

    move-object v8, v3

    goto :goto_1

    :cond_2
    move-object v8, v1

    move-object v9, v8

    :goto_1
    if-eqz v8, :cond_8

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;I)V

    .line 9
    new-instance v10, Lcom/smartisanos/smengine/g;

    invoke-direct {v10}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 10
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/V;->g(ZI)[Lcom/smartisanos/smengine/a/j;

    move-result-object v11

    .line 11
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->gp()V

    .line 12
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v12

    move v13, v2

    :goto_2
    const/4 v14, 0x0

    if-ge v13, v12, :cond_6

    .line 13
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v9, :cond_4

    .line 14
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v9, :cond_5

    .line 15
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 16
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v0

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v1

    aget-object v1, v11, v1

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    goto :goto_4

    .line 17
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 18
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v0

    aget-object v6, v11, v0

    const/4 v2, 0x0

    const/16 v4, 0xe

    move-object v0, p0

    move/from16 v3, p1

    .line 19
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 20
    invoke-virtual {v10, v14, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->mZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    move/from16 v2, p1

    invoke-virtual {p0, v1, v2, v0}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 25
    :cond_7
    invoke-virtual {v8, v14, v10}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 26
    :cond_8
    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "RELAYOUT_BY_UP timeLine is null !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RELAYOUT_BY_UP lose time line !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_9
    :goto_5
    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "RELAYOUT_BY_UP break by params is null !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method private n(FLjava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v8, p1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    .line 1
    :try_start_0
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_2

    .line 2
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v2

    invoke-virtual {v1, v2, v9}, Lcom/smartisanos/launcher/view/Sc;->n(IZ)V

    .line 3
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->kZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v2, v8, v1}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 7
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->nZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v2, v8, v1}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 8
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 10
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v3, v4

    .line 11
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v1, v2

    .line 12
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 13
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 14
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v13

    const/4 v14, 0x0

    if-lez v13, :cond_0

    .line 15
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v2

    invoke-virtual {v1, v9, v2}, Lcom/smartisanos/launcher/view/V;->g(ZI)[Lcom/smartisanos/smengine/a/j;

    move-result-object v15

    .line 16
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->gp()V

    move v7, v9

    :goto_0
    if-ge v7, v13, :cond_0

    .line 17
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/smartisanos/launcher/view/a/g;

    .line 18
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 19
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v1

    aget-object v17, v15, v1

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v4, p1

    move/from16 v18, v7

    move-object/from16 v7, v17

    .line 20
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 21
    invoke-virtual {v10, v14, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    const/4 v3, 0x1

    move-object/from16 v1, p0

    move-object v6, v11

    move-object v7, v12

    .line 22
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 23
    invoke-virtual {v10, v14, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v7, v18, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 25
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    .line 26
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v3, v2

    :goto_1
    if-ge v9, v3, :cond_1

    aget-object v4, v2, v9

    .line 27
    invoke-virtual {v4, v1, v1, v14}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 28
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 29
    :cond_1
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1, v1, v14}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 30
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 31
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1, v1, v14}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 32
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "REVERT_DOCK_VIEW_SIZE lose time line !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private o(FLjava/util/List;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v0

    .line 4
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Uo()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 6
    iget p1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget p2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, p1, p2, p0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Uo()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    const/4 v8, 0x0

    .line 11
    invoke-virtual {p2, v8, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 14
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v3, v4

    .line 15
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v1, v2

    .line 16
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    .line 17
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    div-float/2addr v2, v4

    .line 18
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    div-float v1, v4, v1

    invoke-direct {v6, v3, v1, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 19
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v2, v2, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    .line 20
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object p0

    .line 21
    invoke-virtual {p2, v8, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SETTING_BTN_MOVE_APPEAR lose time line !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private p(FLjava/util/List;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->To()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    .line 6
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    const/4 v8, 0x0

    .line 7
    invoke-virtual {p2, v8, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 8
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 11
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v3, v4

    .line 12
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v1, v2

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    .line 14
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    div-float/2addr v2, v4

    .line 15
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v2, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 16
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    div-float v2, v4, v3

    div-float v1, v4, v1

    invoke-direct {v7, v2, v1, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v3, 0x1

    const/16 v5, 0xe

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object p0

    .line 18
    invoke-virtual {p2, v8, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SETTING_BTN_MOVE_DISAPPEAR lose time line !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private q(FLjava/util/List;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_4

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    const/4 v8, 0x0

    if-ne v0, v1, :cond_2

    .line 4
    iget-boolean v0, v2, Lcom/smartisanos/launcher/view/Ec;->iO:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Uo()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v1, :cond_1

    .line 7
    iput v8, v0, Lcom/smartisanos/smengine/a/j;->x:F

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->Hb(I)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 9
    :cond_1
    :goto_0
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v1, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 10
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 11
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    return-void

    :cond_3
    const v0, 0x38d1b717    # 1.0E-4f

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    .line 15
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    div-float/2addr v1, v3

    .line 16
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v0, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 17
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v1, v1, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v3, 0x1

    const/16 v5, 0xe

    move-object v1, p0

    move v4, p1

    .line 18
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object p0

    .line 19
    invoke-virtual {p2, v8, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 20
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SETTING_BTN_SCALE_APPEAR lose time line !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private r(FLjava/util/List;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object p0

    .line 6
    new-instance v8, Lcom/smartisanos/smengine/oa;

    invoke-direct {v8, p0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 7
    invoke-virtual {v8, p1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 p0, 0xe

    .line 8
    invoke-virtual {v8, p0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const v6, 0x38d1b717    # 1.0E-4f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, v8

    move v2, v3

    move v5, v6

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 p0, 0x0

    .line 10
    invoke-virtual {p2, p0, v8}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private s(FLjava/util/List;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    .line 5
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    .line 6
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 7
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v6, v1, v1, v1, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/V;->Ib(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/V;->XJ:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x3

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v8

    move v3, p1

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 12
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 13
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    iget v0, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v5, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    iget v2, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v6, v0, v1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v8

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 16
    invoke-virtual {v8}, Lcom/smartisanos/smengine/F;->getWidth()F

    move-result v0

    .line 17
    invoke-virtual {v8}, Lcom/smartisanos/smengine/F;->getHeight()F

    move-result v1

    .line 18
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    div-float v4, v1, v2

    invoke-direct {v6, v3, v4, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const v3, 0x3f75c28f    # 0.96f

    mul-float/2addr v0, v3

    mul-float/2addr v1, v3

    .line 19
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    invoke-direct {v5, v0, v1, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v2, 0x1

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v8

    move v3, p1

    .line 20
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/animations/H;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/H;-><init>(Lcom/smartisanos/launcher/animations/U;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/U;->Rm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method private t(FLjava/util/List;)V
    .locals 23

    move-object/from16 v7, p0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    .line 1
    :try_start_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    .line 2
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->gp()V

    const/high16 v10, 0x3e800000    # 0.25f

    .line 3
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->Hb(I)Lcom/smartisanos/smengine/a/j;

    move-result-object v13

    .line 4
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Vo()Lcom/smartisanos/smengine/a/j;

    move-result-object v14

    .line 5
    new-instance v15, Lcom/smartisanos/smengine/a/k;

    const/4 v6, 0x0

    invoke-direct {v15, v6, v6, v6, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 6
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v0, v0, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 7
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 9
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    move v10, v8

    :goto_1
    if-ge v10, v3, :cond_5

    .line 10
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 11
    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    const/4 v14, 0x2

    .line 12
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const v6, 0x3ee66666    # 0.45f

    invoke-direct {v0, v6, v6, v6, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    move-object v6, v0

    move-object/from16 v0, p0

    move v11, v3

    move/from16 v3, p1

    move-object v8, v4

    move v4, v14

    move-object v14, v5

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 13
    invoke-virtual {v9, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_2

    :cond_0
    move v11, v3

    move-object v8, v4

    move-object v14, v5

    move v12, v6

    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object v4, v8

    move v3, v11

    move v6, v12

    move-object v5, v14

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move v11, v3

    move-object v8, v4

    move v12, v6

    move-object v6, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v11, :cond_4

    .line 14
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 15
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    int-to-float v1, v0

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v2

    .line 16
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v12, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v3, v12, :cond_2

    sub-int v3, v11, v0

    add-int/lit8 v3, v3, -0x1

    int-to-float v0, v3

    mul-float v1, v0, v2

    :cond_2
    move v12, v1

    .line 17
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 18
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v20, v3

    move v3, v10

    move-object v10, v4

    move/from16 v4, v19

    move/from16 v19, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v6

    move-object v6, v14

    .line 19
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/smartisanos/launcher/animations/O;

    invoke-direct {v1, v7, v10}, Lcom/smartisanos/launcher/animations/O;-><init>(Lcom/smartisanos/launcher/animations/U;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 21
    invoke-virtual {v9, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    const/4 v6, 0x0

    .line 22
    invoke-virtual {v10, v6}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    const/16 v4, 0xe

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object/from16 v5, v20

    move v10, v6

    move-object v6, v15

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 24
    invoke-virtual {v9, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_4

    :cond_3
    move v10, v6

    :goto_4
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v6, v20

    const/high16 v10, 0x3e800000    # 0.25f

    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v20, v6

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    move v11, v3

    move-object/from16 v20, v5

    move v10, v8

    .line 25
    :goto_5
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    .line 26
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Wo()[Lcom/smartisanos/smengine/a/j;

    move-result-object v12

    .line 27
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v14

    .line 28
    array-length v6, v8

    .line 29
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->ep()V

    :goto_6
    if-ge v10, v6, :cond_8

    int-to-float v0, v10

    .line 30
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v1, v2, :cond_6

    sub-int v0, v6, v10

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    :cond_6
    const v17, 0x3d23d70a    # 0.04f

    mul-float v0, v0, v17

    int-to-float v1, v11

    mul-float v1, v1, v17

    add-float v5, v0, v1

    .line 31
    aget-object v4, v8, v10

    .line 32
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_7

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 34
    :cond_7
    aget-object v18, v12, v10

    const/4 v2, 0x0

    const/16 v19, 0x2

    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v21, v4

    move/from16 v4, v19

    move/from16 v22, v5

    move-object v5, v14

    move/from16 v19, v6

    move-object/from16 v6, v18

    .line 35
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    move/from16 v6, v22

    .line 36
    invoke-virtual {v9, v6, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    .line 37
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 38
    iget v0, v15, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v15, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v15, Lcom/smartisanos/smengine/a/k;->z:F

    iget v4, v15, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v2, 0x3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    const/high16 v16, 0x3e800000    # 0.25f

    move/from16 v3, v16

    move-object/from16 v18, v5

    move-object v5, v15

    move-object/from16 v20, v8

    move v8, v6

    move-object/from16 v6, v18

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 40
    invoke-virtual {v9, v8, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v20, v18

    goto :goto_6

    .line 41
    :cond_8
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v1

    .line 42
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_9

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 44
    :cond_9
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 45
    invoke-virtual {v5, v13}, Lcom/smartisanos/smengine/a/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object v6, v13

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v9, v1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_a
    return-void
.end method

.method private u(FLjava/util/List;)V
    .locals 22

    move-object/from16 v7, p0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    .line 1
    :try_start_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    .line 2
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->gp()V

    const/high16 v10, 0x3e800000    # 0.25f

    const v12, 0x3d23d70a    # 0.04f

    .line 3
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->Hb(I)Lcom/smartisanos/smengine/a/j;

    .line 4
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Oo()Lcom/smartisanos/smengine/a/j;

    move-result-object v13

    .line 5
    new-instance v14, Lcom/smartisanos/smengine/a/k;

    const/4 v15, 0x0

    invoke-direct {v14, v15, v15, v15, v15}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 6
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v6, v5, v5, v5, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 7
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x1

    if-lez v3, :cond_2

    move v1, v8

    :goto_1
    if-ge v1, v3, :cond_2

    .line 9
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    int-to-float v15, v5

    mul-float/2addr v15, v12

    .line 11
    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v8, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v11, v8, :cond_0

    sub-int v5, v3, v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    mul-float v15, v5, v12

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v8

    iput-object v5, v8, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    const/4 v8, 0x0

    const/4 v11, 0x2

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, v19

    move v2, v8

    move v8, v3

    move v3, v10

    move-object/from16 v21, v4

    move v4, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 p2, v6

    move-object v6, v13

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/smartisanos/launcher/animations/P;

    move-object/from16 v2, v19

    invoke-direct {v1, v7, v2}, Lcom/smartisanos/launcher/animations/P;-><init>(Lcom/smartisanos/launcher/animations/U;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 16
    invoke-virtual {v9, v15, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    const/4 v6, 0x0

    .line 17
    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    const/16 v4, 0xe

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v18, v6

    move-object v6, v14

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 19
    invoke-virtual {v9, v15, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_2

    :cond_1
    move/from16 v18, v6

    :goto_2
    add-int/lit8 v1, v20, 0x1

    move-object/from16 v6, p2

    move v3, v8

    move v5, v11

    move/from16 v8, v18

    move-object/from16 v4, v21

    const/4 v2, 0x1

    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    move v11, v5

    move-object/from16 p2, v6

    move/from16 v18, v8

    move v8, v3

    .line 20
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    .line 21
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Wo()[Lcom/smartisanos/smengine/a/j;

    move-result-object v13

    .line 22
    array-length v15, v10

    .line 23
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->ep()V

    move/from16 v6, v18

    :goto_3
    if-ge v6, v15, :cond_4

    int-to-float v0, v6

    mul-float/2addr v0, v12

    int-to-float v1, v8

    mul-float/2addr v1, v12

    add-float v5, v0, v1

    .line 24
    aget-object v4, v10, v6

    .line 25
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 27
    :cond_3
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v19

    .line 28
    aget-object v20, v13, v6

    const/4 v2, 0x0

    const/16 v21, 0x5

    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v12, v4

    move/from16 v4, v21

    move v11, v5

    move-object/from16 v5, v19

    move/from16 v19, v6

    move-object/from16 v6, v20

    .line 29
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 30
    invoke-virtual {v9, v11, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move-object/from16 v6, p2

    .line 31
    invoke-virtual {v12, v6}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 32
    iget v0, v14, Lcom/smartisanos/smengine/a/k;->x:F

    iget v1, v14, Lcom/smartisanos/smengine/a/k;->y:F

    iget v2, v14, Lcom/smartisanos/smengine/a/k;->z:F

    iget v3, v14, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v2, 0x3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object v1, v12

    const/high16 v12, 0x3e800000    # 0.25f

    move v3, v12

    move-object v5, v14

    move-object/from16 v17, v6

    .line 33
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 34
    invoke-virtual {v9, v11, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v6, v19, 0x1

    move-object/from16 p2, v17

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3d23d70a    # 0.04f

    goto :goto_3

    .line 35
    :cond_4
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v1

    .line 36
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    const v8, 0x3e4ccccd    # 0.2f

    .line 37
    new-instance v10, Lcom/smartisanos/smengine/a/k;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v10, v0, v0, v0, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 38
    new-instance v11, Lcom/smartisanos/smengine/a/k;

    const/4 v0, 0x0

    invoke-direct {v11, v0, v0, v0, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/4 v2, 0x3

    const/16 v4, 0xd

    const v3, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    move-object v5, v10

    move-object v6, v11

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    const v1, 0x3d23d70a    # 0.04f

    .line 40
    invoke-virtual {v9, v1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 41
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v0, v7, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v14, v18

    :goto_4
    if-ge v14, v13, :cond_5

    .line 44
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    const/4 v15, 0x0

    .line 45
    invoke-virtual {v1, v15, v15, v15, v15}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v6, 0x1

    .line 46
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const/4 v2, 0x3

    const/16 v4, 0xd

    move-object/from16 v0, p0

    move v3, v8

    move-object v5, v11

    move/from16 v16, v6

    move-object v6, v10

    .line 47
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    const v1, 0x3d23d70a    # 0.04f

    .line 48
    invoke-virtual {v9, v1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private v(FLjava/util/List;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x1

    .line 2
    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 4
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v9, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v3

    :goto_1
    move v3, v1

    .line 5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v9, v2

    :goto_3
    move-object v0, v4

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "runSwitchSortButtonStatus return by time line is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-object v4, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    aget-object v4, v4, v1

    .line 8
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 9
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/F;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 10
    iget-object v4, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_3

    const/16 v7, 0xe

    .line 11
    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v5, v4

    .line 12
    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v10, :cond_2

    .line 13
    sget v10, Lcom/smartisanos/launcher/data/Constants;->navigation_bar_height:I

    int-to-float v10, v10

    add-float/2addr v5, v10

    :cond_2
    div-float/2addr v4, v6

    move v6, v5

    goto :goto_4

    :cond_3
    const/16 v7, 0xd

    div-float v6, v4, v6

    .line 14
    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v4, v5

    .line 15
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v5, :cond_4

    .line 16
    sget v5, Lcom/smartisanos/launcher/data/Constants;->navigation_bar_height:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    :cond_4
    :goto_4
    move v10, v7

    .line 17
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 18
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 19
    iget-object v11, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v11

    invoke-static {v11}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    invoke-static {v11}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v11

    .line 20
    iget-object v12, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v12

    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v12

    invoke-static {v12}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v12

    .line 21
    invoke-static {v2, v6, v12, v11, v5}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 22
    iget v13, v5, Lcom/smartisanos/smengine/a/j;->y:F

    .line 23
    invoke-static {v2, v4, v12, v11, v7}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 24
    iget v11, v7, Lcom/smartisanos/smengine/a/j;->y:F

    .line 25
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_6

    .line 26
    iget-object v4, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    const v11, 0x3e4ccccd    # 0.2f

    .line 27
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v4, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5

    .line 29
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 30
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    move-object v14, v2

    move-object v13, v3

    goto :goto_5

    .line 31
    :cond_5
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 32
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    move-object v13, v3

    move-object v14, v4

    .line 33
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    move v7, v1

    :goto_6
    if-ge v7, v15, :cond_9

    .line 34
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x3

    move-object/from16 v1, p0

    move v4, v11

    move v5, v10

    move-object v6, v14

    move/from16 v16, v7

    move-object v7, v13

    .line 35
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v9, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_6

    .line 37
    :cond_6
    iget-object v2, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v2

    .line 38
    iget-object v3, v8, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    .line 39
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 40
    array-length v4, v3

    move v5, v1

    :goto_7
    if-ge v5, v4, :cond_7

    .line 41
    aget-object v6, v3, v5

    .line 42
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 43
    :cond_7
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v4, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v3, v4, :cond_8

    .line 44
    invoke-interface {v12, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_8

    .line 45
    :cond_8
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    move v15, v1

    :goto_9
    if-ge v15, v14, :cond_9

    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v2, v15

    const v3, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v3

    add-float v4, v2, v1

    .line 47
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 48
    move-object v2, v1

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 49
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 50
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v6, v3, v13, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 51
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v7, v3, v11, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move v5, v10

    .line 52
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v9, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_9
    return-void
.end method

.method private w(FLjava/util/List;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/smartisanos/smengine/g;

    const/4 v9, 0x1

    .line 2
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "runSwitchSortConfirmButtonStatus return by time line is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    .line 10
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 11
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/F;->getSize(Lcom/smartisanos/smengine/a/j;)V

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v10, :cond_2

    const/16 v5, 0xe

    .line 12
    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    div-float v6, v3, v4

    add-float/2addr v6, v1

    div-float/2addr v3, v4

    add-float/2addr v6, v3

    div-float/2addr v1, v4

    goto :goto_0

    :cond_2
    const/16 v5, 0xd

    div-float v6, v1, v4

    .line 13
    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    :goto_0
    move v11, v5

    .line 14
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 15
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 16
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v5

    .line 17
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v7

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    invoke-static {v7}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v7

    const/4 v12, 0x0

    .line 18
    invoke-static {v12, v6, v7, v5, v3}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 19
    iget v13, v3, Lcom/smartisanos/smengine/a/j;->y:F

    .line 20
    invoke-static {v12, v1, v7, v5, v4}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 21
    iget v14, v4, Lcom/smartisanos/smengine/a/j;->y:F

    .line 22
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 23
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v1, :cond_3

    .line 24
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    move v6, v2

    :goto_1
    if-ge v6, v7, :cond_7

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3da3d70a    # 0.08f

    if-nez v6, :cond_4

    int-to-float v3, v6

    goto :goto_2

    :cond_4
    int-to-float v3, v6

    const/high16 v4, 0x3fc00000    # 1.5f

    add-float/2addr v3, v4

    :goto_2
    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    move/from16 v16, v3

    .line 27
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/smartisanos/smengine/SceneNode;

    .line 28
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 29
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v3, v2, v13, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 30
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v5, v2, v14, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v18, v3

    move/from16 v3, v17

    move-object/from16 p2, v4

    move/from16 v4, v16

    move-object/from16 v17, v5

    const/high16 v9, 0x3f800000    # 1.0f

    move v5, v11

    move/from16 v19, v6

    move-object/from16 v6, v18

    move/from16 v18, v7

    move-object/from16 v7, v17

    .line 31
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 32
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_6

    if-eqz v10, :cond_5

    .line 33
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v12, v12, v12, v12}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 34
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    goto :goto_3

    .line 35
    :cond_5
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 36
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2, v12, v12, v12, v12}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    :goto_3
    move-object v6, v1

    move-object v7, v2

    const/4 v3, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v4, v16

    move v5, v11

    .line 37
    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 38
    :cond_6
    new-instance v2, Lcom/smartisanos/launcher/animations/J;

    move-object/from16 v3, p2

    invoke-direct {v2, v0, v10, v3}, Lcom/smartisanos/launcher/animations/J;-><init>(Lcom/smartisanos/launcher/animations/U;ZLcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 39
    invoke-virtual {v8, v12, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v6, v19, 0x1

    move/from16 v7, v18

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_7
    const/high16 v9, 0x3f800000    # 1.0f

    .line 40
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    xor-int/2addr v1, v10

    if-eqz v1, :cond_8

    .line 41
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v12, v12, v12, v12}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 42
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    goto :goto_4

    .line 43
    :cond_8
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 44
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2, v12, v12, v12, v12}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    :goto_4
    move-object v6, v1

    move-object v7, v2

    .line 45
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v2

    const/4 v3, 0x3

    const v4, 0x3e4ccccd    # 0.2f

    move-object/from16 v1, p0

    move v5, v11

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/animations/V;->a(Lcom/smartisanos/smengine/SceneNode;IFILcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 46
    invoke-virtual {v8, v12, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_9
    return-void

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V
    .locals 3

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/U;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAnimation ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/animations/K;->Km:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 5
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->i(FLjava/util/List;)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->w(FLjava/util/List;)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->v(FLjava/util/List;)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->f(FLjava/util/List;)V

    goto/16 :goto_0

    .line 9
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->s(FLjava/util/List;)V

    goto/16 :goto_0

    .line 10
    :pswitch_5
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->h(FLjava/util/List;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->g(FLjava/util/List;)V

    goto :goto_0

    .line 13
    :pswitch_6
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_2

    .line 14
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->u(FLjava/util/List;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->t(FLjava/util/List;)V

    goto :goto_0

    .line 16
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->k(FLjava/util/List;)V

    goto :goto_0

    .line 17
    :pswitch_8
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/U;->mView:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 18
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->c(FLjava/util/List;)V

    goto :goto_0

    .line 19
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->n(FLjava/util/List;)V

    goto :goto_0

    .line 20
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->j(FLjava/util/List;)V

    goto :goto_0

    .line 21
    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->m(FLjava/util/List;)V

    goto :goto_0

    .line 22
    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->l(FLjava/util/List;)V

    goto :goto_0

    .line 23
    :pswitch_d
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->o(FLjava/util/List;)V

    goto :goto_0

    .line 24
    :pswitch_e
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->p(FLjava/util/List;)V

    goto :goto_0

    .line 25
    :pswitch_f
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->q(FLjava/util/List;)V

    goto :goto_0

    .line 26
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->r(FLjava/util/List;)V

    goto :goto_0

    .line 27
    :pswitch_11
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->e(FLjava/util/List;)V

    goto :goto_0

    .line 28
    :pswitch_12
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->d(FLjava/util/List;)V

    goto :goto_0

    .line 29
    :pswitch_13
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->a(FLjava/util/List;)V

    goto :goto_0

    .line 30
    :pswitch_14
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/animations/U;->b(FLjava/util/List;)V

    :goto_0
    :pswitch_15
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_15
        :pswitch_15
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
