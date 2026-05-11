.class public Lcom/smartisanos/launcher/animations/lb;
.super Lcom/smartisanos/launcher/animations/V;
.source "TrashAnimation.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field private static sn:Z

.field private static tn:Z

.field private static un:Z


# instance fields
.field private mView:Lcom/smartisanos/launcher/view/Sc;

.field public rn:Lcom/smartisanos/smengine/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/lb;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/lb;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/animations/lb;->sn:Z

    .line 3
    sput-boolean v0, Lcom/smartisanos/launcher/animations/lb;->tn:Z

    .line 4
    sput-boolean v0, Lcom/smartisanos/launcher/animations/lb;->un:Z

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/Sc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/V;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    return-void
.end method

.method static synthetic D(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/animations/lb;->tn:Z

    return p0
.end method

.method static synthetic E(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/animations/lb;->un:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/lb;)Lcom/smartisanos/launcher/view/Sc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    return-object p0
.end method

.method static synthetic w(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/animations/lb;->sn:Z

    return p0
.end method


# virtual methods
.method public Td()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/animations/lb;->sn:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/smartisanos/launcher/animations/lb;->un:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 2
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v3, "]"

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/animations/lb;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAnimation ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v2, Lcom/smartisanos/launcher/animations/kb;->Co:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v2, v7, :cond_10

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eq v2, v9, :cond_c

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    sget-object v3, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/smartisanos/launcher/animations/lb;->un:Z

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 5
    :cond_2
    :try_start_0
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v10

    :goto_0
    if-nez v1, :cond_3

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/animations/lb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "TRASH_REDUCE break by time line is null !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 7
    :cond_3
    sput-boolean v7, Lcom/smartisanos/launcher/animations/lb;->un:Z

    .line 8
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/smartisanos/launcher/animations/lb;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "TRASH_REDUCE begin"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 9
    :cond_4
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 10
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 11
    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 13
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 14
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v6, :cond_5

    .line 15
    invoke-virtual {v4}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    goto :goto_1

    .line 16
    :cond_5
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    iget v7, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_float_up_height:F

    sub-float/2addr v8, v3

    iget v3, v4, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v6, v7, v8, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    move-object v3, v6

    :goto_1
    const/4 v8, 0x0

    .line 17
    iget v9, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v4, Lcom/smartisanos/smengine/a/j;->z:F

    iget v12, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v3, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v7, v2

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 18
    new-instance v3, Lcom/smartisanos/launcher/animations/jb;

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/animations/jb;-><init>(Lcom/smartisanos/launcher/animations/lb;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 19
    invoke-virtual {v1, v5, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto/16 :goto_6

    .line 20
    :cond_6
    :goto_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/smartisanos/launcher/animations/lb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "trash already revert."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 21
    :cond_7
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    sget-object v2, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/smartisanos/launcher/animations/lb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "trash already enlarge !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 23
    :cond_8
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_9

    .line 24
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/smartisanos/launcher/animations/lb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "trashFloatUpAnim running !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 25
    :cond_9
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    .line 26
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/smartisanos/launcher/animations/lb;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "TRASH_ENLARGE begin"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 27
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 28
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 29
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_b

    .line 30
    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    goto :goto_3

    .line 31
    :cond_b
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_float_up_height:F

    add-float/2addr v7, v1

    iget v1, v2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v3, v4, v7, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    move-object v1, v3

    .line 32
    :goto_3
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v4, 0x3dcccccd    # 0.1f

    .line 33
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 34
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v8, 0x0

    .line 35
    iget v9, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v2, Lcom/smartisanos/smengine/a/j;->z:F

    iget v12, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v1, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v7, v3

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 36
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v5, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 37
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/animations/ib;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/animations/ib;-><init>(Lcom/smartisanos/launcher/animations/lb;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 38
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    goto/16 :goto_6

    .line 39
    :cond_c
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    sget-object v4, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Raa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/smartisanos/launcher/animations/lb;->tn:Z

    if-eqz v2, :cond_d

    goto/16 :goto_5

    .line 40
    :cond_d
    :try_start_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-object v1, v10

    :goto_4
    if-nez v1, :cond_e

    .line 41
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/smartisanos/launcher/animations/lb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "TRASH_FALL break by time line is null !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 42
    :cond_e
    sput-boolean v7, Lcom/smartisanos/launcher/animations/lb;->tn:Z

    .line 43
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    sget-object v3, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Taa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v2, v3, v8}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    .line 44
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    sget-object v3, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Saa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v2, v3, v8}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    .line 45
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 46
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 47
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v7

    invoke-virtual {v4, v7, v8, v8}, Lcom/smartisanos/launcher/view/V;->a(IZZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    const v7, 0x3e99999a    # 0.3f

    .line 48
    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 49
    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v10, 0x0

    .line 50
    iget v14, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v13, v3, Lcom/smartisanos/smengine/a/j;->z:F

    iget v15, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v4, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v9, v2

    move v11, v14

    move/from16 v16, v3

    invoke-virtual/range {v9 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 51
    new-instance v3, Lcom/smartisanos/launcher/animations/hb;

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/animations/hb;-><init>(Lcom/smartisanos/launcher/animations/lb;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 52
    invoke-virtual {v1, v5, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 53
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 54
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Lcom/smartisanos/launcher/view/V;->a(FLcom/smartisanos/smengine/g;)V

    goto/16 :goto_6

    .line 55
    :cond_f
    :goto_5
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_13

    sget-object v1, Lcom/smartisanos/launcher/animations/lb;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trash is not show now, trashFallingAnimationRunning ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/smartisanos/launcher/animations/lb;->tn:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], STATUS.APPEAR ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    sget-object v4, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Raa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .line 56
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 58
    :cond_10
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 59
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    sget-object v3, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Raa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v2

    if-nez v2, :cond_13

    sget-boolean v2, Lcom/smartisanos/launcher/animations/lb;->sn:Z

    if-eqz v2, :cond_11

    goto :goto_6

    .line 60
    :cond_11
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/g;

    .line 61
    sput-boolean v7, Lcom/smartisanos/launcher/animations/lb;->sn:Z

    .line 62
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 63
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_display_height:F

    .line 64
    new-instance v15, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/animations/lb;->mView:Lcom/smartisanos/launcher/view/Sc;

    invoke-direct {v15, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 65
    invoke-virtual {v15, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 66
    invoke-virtual {v15, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 67
    iget v4, v2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 68
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v6, :cond_12

    add-float/2addr v4, v3

    :cond_12
    move v13, v4

    const/4 v8, 0x0

    .line 69
    iget v12, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v2, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v7, v15

    move v9, v12

    move v11, v14

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 70
    new-instance v2, Lcom/smartisanos/launcher/animations/gb;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/animations/gb;-><init>(Lcom/smartisanos/launcher/animations/lb;)V

    invoke-virtual {v15, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 71
    invoke-virtual {v1, v5, v15}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 72
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 73
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->f(Lcom/smartisanos/smengine/g;)V

    :cond_13
    :goto_6
    return-void
.end method
