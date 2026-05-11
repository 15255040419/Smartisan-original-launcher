.class public Lcom/smartisanos/launcher/a/b/i;
.super Ljava/lang/Object;
.source "HandleIconSort.java"


# static fields
.field private static Tk:Lcom/smartisanos/launcher/a/b/i;

.field public static Uk:Lcom/smartisanos/launcher/a/b/j;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public volatile Dk:Lcom/smartisanos/launcher/a/b/j;

.field public Ek:I

.field private Fk:Lcom/smartisanos/launcher/animations/ma;

.field private Gk:Z

.field private Hk:Z

.field private Ik:Z

.field private Jk:Z

.field private Kk:Lcom/smartisanos/launcher/a/b/j;

.field public Lk:Ljava/util/List;

.field public Mk:I

.field private Nk:Ljava/util/List;

.field private Ok:Ljava/util/Map;

.field private Pk:Ljava/util/Map;

.field private Qk:I

.field private Rk:I

.field private Sk:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/b/i;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/a/b/i;->Tk:Lcom/smartisanos/launcher/a/b/i;

    .line 3
    sput-object v0, Lcom/smartisanos/launcher/a/b/i;->Uk:Lcom/smartisanos/launcher/a/b/j;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Dk:Lcom/smartisanos/launcher/a/b/j;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/smartisanos/launcher/a/b/i;->Ek:I

    .line 4
    new-instance v2, Lcom/smartisanos/launcher/animations/ma;

    invoke-direct {v2}, Lcom/smartisanos/launcher/animations/ma;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/a/b/i;->Fk:Lcom/smartisanos/launcher/animations/ma;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/smartisanos/launcher/a/b/i;->Gk:Z

    .line 6
    iput-boolean v2, p0, Lcom/smartisanos/launcher/a/b/i;->Hk:Z

    .line 7
    iput-boolean v2, p0, Lcom/smartisanos/launcher/a/b/i;->Ik:Z

    .line 8
    iput-boolean v2, p0, Lcom/smartisanos/launcher/a/b/i;->Jk:Z

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Kk:Lcom/smartisanos/launcher/a/b/j;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/a/b/i;->Lk:Ljava/util/List;

    .line 11
    iput v1, p0, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    .line 12
    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Nk:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Ok:Ljava/util/Map;

    .line 14
    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Pk:Ljava/util/Map;

    .line 15
    iput v1, p0, Lcom/smartisanos/launcher/a/b/i;->Qk:I

    .line 16
    iput v1, p0, Lcom/smartisanos/launcher/a/b/i;->Rk:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Sk:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleIconSort created, type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    iput p1, p0, Lcom/smartisanos/launcher/a/b/i;->Ek:I

    return-void
.end method

.method private Mc(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/a/b/h;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/launcher/a/b/h;-><init>(Lcom/smartisanos/launcher/a/b/i;II)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method private Nc(I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    sget-object v2, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildPage ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/smartisanos/launcher/a/b/i;->Kk:Lcom/smartisanos/launcher/a/b/j;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/a/b/j;->rd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, v0, Lcom/smartisanos/launcher/a/b/i;->Kk:Lcom/smartisanos/launcher/a/b/j;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/a/b/j;->rd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/Q;

    .line 4
    iget-object v4, v0, Lcom/smartisanos/launcher/a/b/i;->Kk:Lcom/smartisanos/launcher/a/b/j;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/a/b/j;->qd()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    iget-object v5, v0, Lcom/smartisanos/launcher/a/b/i;->Pk:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v5, :cond_1a

    .line 6
    iget-object v6, v0, Lcom/smartisanos/launcher/a/b/i;->Sk:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    sget-object v2, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildPage abandonBuildPageIndexes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/launcher/a/b/i;->Mc(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v7

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result v7

    .line 11
    move-object v8, v5

    check-cast v8, Lcom/smartisanos/launcher/view/b/ka;

    .line 12
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/ka;->uo()Lcom/smartisanos/smengine/N;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 13
    invoke-virtual {v8}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v7, :cond_16

    .line 14
    invoke-virtual {v6, v11}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v13

    .line 15
    iget v14, v13, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v14, v14

    .line 16
    iget v13, v13, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v13, v13

    const-string v15, "cellCamera"

    move/from16 v17, v13

    if-eqz v4, :cond_8

    .line 17
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_8

    .line 18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_8

    .line 19
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    move/from16 v19, v11

    .line 20
    iget-wide v10, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 21
    iget v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 22
    invoke-direct {v0, v10, v11}, Lcom/smartisanos/launcher/a/b/i;->z(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v20

    if-nez v20, :cond_6

    .line 23
    invoke-static {v10, v11}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    .line 24
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/ItemInfo;->Qe()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 25
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v10, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_fore"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 26
    new-instance v12, Lcom/smartisanos/launcher/view/a/ba;

    invoke-direct {v12}, Lcom/smartisanos/launcher/view/a/ba;-><init>()V

    const-string v13, "RenderWithBatch"

    move-object/from16 v21, v4

    const/4 v4, 0x1

    .line 27
    invoke-virtual {v12, v13, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const-string v13, "RenderUsePageBatch"

    .line 28
    invoke-virtual {v12, v13, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const-string v13, "itemInfo"

    .line 29
    invoke-virtual {v12, v13, v10}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "PageCell"

    .line 30
    invoke-virtual {v12, v10, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    .line 31
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v4

    const-string v10, "singlePageMode"

    invoke-virtual {v12, v10, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v4

    const-string v10, "multiPageMode"

    invoke-virtual {v12, v10, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 33
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v4

    const-string v10, "KeyCurrentPageMode"

    invoke-virtual {v12, v10, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 34
    new-instance v4, Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v4, v11, v12}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    .line 35
    invoke-virtual {v4, v8}, Lcom/smartisanos/launcher/view/a/g;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 36
    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/view/a/g;->Ma(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v10

    invoke-virtual {v10, v15}, Lcom/smartisanos/smengine/k;->Da(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 38
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->create()V

    move/from16 v11, v17

    const/4 v12, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v21, v4

    const-wide/16 v11, -0x1

    .line 39
    invoke-direct {v0, v11, v12}, Lcom/smartisanos/launcher/a/b/i;->z(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v4

    if-nez v4, :cond_4

    move/from16 v11, v17

    .line 40
    invoke-virtual {v5, v14, v11, v8, v9}, Lcom/smartisanos/launcher/view/b/M;->a(IILcom/smartisanos/smengine/N;Ljava/lang/String;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v4

    .line 41
    sget-object v12, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const-string v13, "##### create new Emptye cell"

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    move/from16 v11, v17

    const/4 v12, 0x1

    .line 42
    :goto_3
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/launcher/data/ItemInfo;)V

    const/4 v13, 0x1

    .line 43
    invoke-virtual {v4, v13}, Lcom/smartisanos/launcher/view/a/g;->fb(Z)V

    .line 44
    invoke-virtual {v4, v13}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 45
    iget v10, v10, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v10, :cond_5

    .line 46
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/a/g;->qb(I)V

    :cond_5
    :goto_4
    move v10, v12

    goto :goto_5

    :cond_6
    move-object/from16 v21, v4

    move/from16 v11, v17

    move-object/from16 v4, v20

    const/4 v10, 0x1

    .line 47
    :goto_5
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v12

    iput v3, v12, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 48
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    move/from16 v12, v19

    iput v12, v3, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 49
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_6

    .line 50
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildPage. cell = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v21, v4

    move v12, v11

    move/from16 v11, v17

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_6
    if-nez v4, :cond_a

    const-wide/16 v3, -0x1

    .line 51
    invoke-direct {v0, v3, v4}, Lcom/smartisanos/launcher/a/b/i;->z(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v10, 0x1

    goto :goto_7

    .line 52
    :cond_9
    invoke-virtual {v5, v14, v11, v8, v9}, Lcom/smartisanos/launcher/view/b/M;->a(IILcom/smartisanos/smengine/N;Ljava/lang/String;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v4

    goto :goto_7

    :cond_a
    move-object v13, v4

    :goto_7
    if-nez v10, :cond_c

    .line 53
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_8

    :cond_b
    move/from16 v17, v7

    goto :goto_b

    :cond_c
    :goto_8
    const/4 v3, -0x1

    if-eq v14, v3, :cond_e

    if-eq v11, v3, :cond_e

    .line 54
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    if-eq v14, v3, :cond_d

    const/4 v10, 0x1

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    .line 55
    :goto_9
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    if-eq v11, v3, :cond_f

    const/4 v10, 0x1

    goto :goto_a

    :cond_e
    const/4 v10, 0x0

    .line 56
    :cond_f
    :goto_a
    invoke-virtual {v4, v14, v11}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 57
    invoke-virtual {v4, v14}, Lcom/smartisanos/launcher/view/a/g;->ob(I)V

    .line 58
    invoke-virtual {v4, v11}, Lcom/smartisanos/launcher/view/a/g;->nb(I)V

    .line 59
    invoke-virtual {v4, v8}, Lcom/smartisanos/launcher/view/a/g;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 60
    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/view/a/g;->Ma(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 62
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 63
    aget-object v3, v3, v12

    .line 64
    iget v13, v3, Lcom/smartisanos/smengine/a/j;->x:F

    move/from16 v17, v7

    iget v7, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v4, v13, v7, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    if-eqz v10, :cond_10

    .line 65
    invoke-static {v14, v11}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 68
    :cond_10
    :goto_b
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Mn()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 69
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Jn()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/a/g;->bb(Z)V

    .line 70
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/smartisanos/smengine/k;->Da(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 71
    invoke-virtual {v4, v8}, Lcom/smartisanos/launcher/view/a/g;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 72
    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/view/a/g;->Ma(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->create()V

    .line 74
    :cond_11
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_14

    if-eqz v5, :cond_12

    .line 75
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_12

    const/16 v16, 0x1

    goto :goto_c

    :cond_12
    const/16 v16, 0x0

    :goto_c
    const/16 v3, 0xa

    .line 76
    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/F;

    if-eqz v3, :cond_14

    if-eqz v16, :cond_13

    const v7, 0x3dcccccd    # 0.1f

    .line 77
    invoke-virtual {v3, v7, v7, v7, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_d

    :cond_13
    const/high16 v7, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {v3, v7, v7, v7, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 79
    :cond_14
    :goto_d
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->disableDisplayUpdate()V

    .line 80
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_15

    add-int/lit8 v11, v12, 0x1

    move/from16 v7, v17

    move-object/from16 v4, v21

    goto/16 :goto_2

    .line 81
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cell don\'t have parent !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_16
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 83
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->getPageNums(I)I

    move-result v3

    .line 84
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v4

    if-lt v1, v3, :cond_18

    if-eqz v2, :cond_18

    .line 85
    iget v3, v2, Lcom/smartisanos/launcher/data/Q;->status:I

    if-eqz v3, :cond_18

    const/4 v6, 0x2

    if-ne v3, v6, :cond_17

    const/4 v7, 0x0

    .line 86
    invoke-virtual {v5, v6, v7, v7, v7}, Lcom/smartisanos/launcher/view/b/M;->b(IZZZ)Lcom/smartisanos/smengine/g;

    const/4 v6, 0x1

    .line 87
    invoke-virtual {v4, v6, v6}, Lcom/smartisanos/launcher/view/tc;->f(ZZ)V

    goto :goto_e

    :cond_17
    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_e
    if-ne v3, v6, :cond_18

    .line 88
    invoke-virtual {v5, v6, v7, v7, v7}, Lcom/smartisanos/launcher/view/b/M;->b(IZZZ)Lcom/smartisanos/smengine/g;

    .line 89
    invoke-virtual {v4, v6, v6}, Lcom/smartisanos/launcher/view/tc;->e(ZZ)V

    :cond_18
    if-eqz v2, :cond_19

    .line 90
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_19
    const-string v2, ""

    .line 91
    :goto_f
    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/tc;->setText(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->no()V

    .line 93
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 94
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->updateWorldBoundingVolume()V

    .line 95
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/launcher/a/b/i;->Mc(I)V

    return-void

    .line 96
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find page by page index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total page count "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/smartisanos/launcher/a/b/i;->Rk:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static Z(I)Lcom/smartisanos/launcher/a/b/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/b/i;->Tk:Lcom/smartisanos/launcher/a/b/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/a/b/i;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/a/b/i;-><init>(I)V

    sput-object v0, Lcom/smartisanos/launcher/a/b/i;->Tk:Lcom/smartisanos/launcher/a/b/i;

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/a/b/i;->Tk:Lcom/smartisanos/launcher/a/b/i;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HandleIconSort instance err"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/a/b/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/a/b/i;->Qk:I

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/a/b/i;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/a/b/i;->Qk:I

    return p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/a/b/i;Lcom/smartisanos/launcher/a/b/j;)Lcom/smartisanos/launcher/a/b/j;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/a/b/i;->Kk:Lcom/smartisanos/launcher/a/b/j;

    return-object p1
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 p0, 0x0

    const/4 v0, -0x1

    .line 12
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    .line 13
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x2

    .line 14
    :try_start_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move v1, v0

    goto :goto_0

    :catch_2
    move-exception p1

    move p0, v0

    move v1, p0

    .line 15
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    if-ne p0, v0, :cond_0

    .line 16
    sget-object p0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "error sort type !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    if-ne v1, v0, :cond_1

    .line 17
    sget-object p0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "error multi mode !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 18
    sget-object p0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "error itemMap is null !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_2
    invoke-static {p0, p1, v1}, Lcom/smartisanos/launcher/a/b/f;->a(ILjava/util/Map;I)Lcom/smartisanos/launcher/a/b/j;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 20
    new-instance p1, Lcom/smartisanos/launcher/a/b/g;

    const/16 v0, 0x64

    invoke-direct {p1, v0, p0}, Lcom/smartisanos/launcher/a/b/g;-><init>(ILcom/smartisanos/launcher/a/b/j;)V

    const/4 p0, 0x0

    .line 21
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_2

    .line 22
    :cond_3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string p1, "sortResult error. not handleMsgSortAnimBegin"

    if-nez p0, :cond_5

    .line 23
    sget-object p0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 24
    :goto_2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "db data sort begin"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 25
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static aa(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lcom/smartisanos/launcher/ob;->confirm_sort_by_category_dialog_title_1:I

    goto :goto_0

    .line 2
    :cond_1
    sget p0, Lcom/smartisanos/launcher/ob;->confirm_sort_by_usage_dialog_title_1:I

    goto :goto_0

    .line 3
    :cond_2
    sget p0, Lcom/smartisanos/launcher/ob;->confirm_sort_by_install_dialog_title_1:I

    goto :goto_0

    .line 4
    :cond_3
    sget p0, Lcom/smartisanos/launcher/ob;->confirm_sort_by_color_dialog_title_1:I

    :goto_0
    const/4 v0, 0x0

    if-lez p0, :cond_4

    .line 5
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method static synthetic access$400()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/a/b/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/a/b/i;->Rk:I

    return p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/a/b/i;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/a/b/i;->Nc(I)V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/a/b/i;)Lcom/smartisanos/launcher/a/b/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/i;->Kk:Lcom/smartisanos/launcher/a/b/j;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/a/b/i;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/i;->Pk:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/a/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/a/b/i;->hw()V

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/a/b/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/b/i;->Tk:Lcom/smartisanos/launcher/a/b/i;

    return-object v0
.end method

.method private hw()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Sk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/a/b/i;->Qk:I

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/a/b/i;->Rk:I

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Nk:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Nk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iput-object v1, p0, Lcom/smartisanos/launcher/a/b/i;->Nk:Ljava/util/List;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Ok:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 12
    iget-object v3, p0, Lcom/smartisanos/launcher/a/b/i;->Ok:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Ok:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 15
    iput-object v1, p0, Lcom/smartisanos/launcher/a/b/i;->Ok:Ljava/util/Map;

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Pk:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 17
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18
    iput-object v1, p0, Lcom/smartisanos/launcher/a/b/i;->Pk:Ljava/util/Map;

    :cond_5
    return-void
.end method

.method private z(J)Lcom/smartisanos/launcher/view/a/g;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Ok:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/i;->Ok:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    return-object p0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/a/b/i;->Nk:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/i;->Nk:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(ILcom/smartisanos/launcher/a/b/j;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/b/i;->Gk:Z

    if-eqz p2, :cond_0

    .line 5
    iput-object p2, p0, Lcom/smartisanos/launcher/a/b/i;->Kk:Lcom/smartisanos/launcher/a/b/j;

    .line 6
    sget-object p2, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "handleMsgSortAnimBegin set sortResult !"

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/b/i;->Hk:Z

    .line 8
    :cond_1
    iget-boolean p1, p0, Lcom/smartisanos/launcher/a/b/i;->Gk:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/smartisanos/launcher/a/b/i;->Hk:Z

    if-nez p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean p2, p0, Lcom/smartisanos/launcher/a/b/i;->Gk:Z

    .line 10
    iput-boolean p2, p0, Lcom/smartisanos/launcher/a/b/i;->Hk:Z

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/a/b/i;->od()V

    return v0

    :cond_3
    :goto_0
    return p2
.end method

.method public ba(I)Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_SORT_ANIM_END type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/b/i;->Jk:Z

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/b/i;->Ik:Z

    .line 4
    :cond_2
    iget-boolean p1, p0, Lcom/smartisanos/launcher/a/b/i;->Jk:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/smartisanos/launcher/a/b/i;->Ik:Z

    if-nez p1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iput-boolean v1, p0, Lcom/smartisanos/launcher/a/b/i;->Jk:Z

    .line 6
    iput-boolean v1, p0, Lcom/smartisanos/launcher/a/b/i;->Ik:Z

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 10
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set display for page index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 11
    :cond_5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 13
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_0

    .line 14
    :cond_6
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "prepareFinishIconSort !"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/a/b/i;->md()V

    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public clear()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "HandleIconSort clear !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/a/b/i;->Ek:I

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/smartisanos/launcher/a/b/i;->Tk:Lcom/smartisanos/launcher/a/b/i;

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/a/b/i;->hw()V

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/b/i;->Gk:Z

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/b/i;->Hk:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/b/i;->Ik:Z

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/b/i;->Jk:Z

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Lk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Kk:Lcom/smartisanos/launcher/a/b/j;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/a/b/j;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/i;->Kk:Lcom/smartisanos/launcher/a/b/j;

    return-void
.end method

.method public jd()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/smartisanos/launcher/a/b/i;->Dk:Lcom/smartisanos/launcher/a/b/j;

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/a/b/i;->a(ILcom/smartisanos/launcher/a/b/j;)Z

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/a/b/i;->nd()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->nc()Ljava/util/HashMap;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/a/b/i;->nd()V

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget p0, p0, Lcom/smartisanos/launcher/a/b/i;->Ek:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->jaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public kd()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/i;->Fk:Lcom/smartisanos/launcher/animations/ma;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/ma;->kd()V

    return-void
.end method

.method public ld()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/a/b/i;->init()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/a/b/i;->jd()V

    return-void
.end method

.method public md()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/i;->Fk:Lcom/smartisanos/launcher/animations/ma;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/ma;->md()V

    return-void
.end method

.method public nd()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/i;->Fk:Lcom/smartisanos/launcher/animations/ma;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/ma;->nd()V

    return-void
.end method

.method public od()V
    .locals 13

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "updateSortView begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/a/b/i;->Kk:Lcom/smartisanos/launcher/a/b/j;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/a/b/j;->rd()Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v1, :cond_0

    .line 7
    invoke-interface {v2, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/a/b/i;->hw()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/a/b/i;->Nk:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/a/b/i;->Ok:Ljava/util/Map;

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/a/b/i;->Pk:Ljava/util/Map;

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v1

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 14
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result v3

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result v5

    .line 16
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v6, :cond_1

    .line 17
    sget v3, Lcom/smartisanos/launcher/data/Constants;->LARGE_SCREEN_MAX_PAGE_COUNT:I

    mul-int/2addr v3, v5

    .line 18
    :cond_1
    div-int/2addr v3, v5

    .line 19
    div-int v5, v2, v3

    .line 20
    rem-int/2addr v2, v3

    if-eqz v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    mul-int v2, v5, v3

    .line 21
    iput v2, p0, Lcom/smartisanos/launcher/a/b/i;->Rk:I

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v1, v3

    if-le v5, v1, :cond_3

    sub-int v2, v5, v1

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_3

    .line 23
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/smartisanos/launcher/view/b/fa;->Ub(I)Ljava/util/List;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 24
    :cond_3
    iget v2, p0, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    const/16 v6, 0x64

    if-ne v2, v6, :cond_4

    .line 25
    sget-object v2, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "updateSortView isRevert true"

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 26
    :cond_4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_9

    .line 28
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    .line 29
    iget v9, v8, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    if-ge v9, v3, :cond_6

    .line 30
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v9

    if-nez v9, :cond_5

    iget v9, v8, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    if-nez v9, :cond_6

    .line 31
    :cond_5
    iget-object v9, p0, Lcom/smartisanos/launcher/a/b/i;->Sk:Ljava/util/List;

    iget v10, v8, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v9, Lcom/smartisanos/launcher/a/b/i;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "abandon collect cell for invisible page at index ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_3

    .line 33
    :cond_6
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 34
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 35
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/a/g;

    .line 36
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 37
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 38
    iget-object v10, p0, Lcom/smartisanos/launcher/a/b/i;->Ok:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v11

    iget-wide v11, v11, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 39
    :cond_7
    iget-object v10, p0, Lcom/smartisanos/launcher/a/b/i;->Nk:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    if-ge v5, v1, :cond_a

    :goto_4
    if-le v1, v5, :cond_a

    add-int/lit8 v2, v1, -0x1

    .line 40
    invoke-virtual {v0, v2, v4}, Lcom/smartisanos/launcher/view/b/fa;->p(IZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 41
    :cond_a
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v4

    :goto_5
    if-ge v2, v1, :cond_e

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 44
    iput v2, v5, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    if-lt v2, v3, :cond_d

    .line 45
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 46
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_b

    .line 47
    invoke-virtual {v5, v4, v4, v4, v7}, Lcom/smartisanos/launcher/view/b/M;->b(IZZZ)Lcom/smartisanos/smengine/g;

    .line 48
    :cond_b
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v8

    if-ne v6, v7, :cond_c

    .line 49
    invoke-virtual {v8, v4, v7}, Lcom/smartisanos/launcher/view/tc;->e(ZZ)V

    :cond_c
    const/4 v9, 0x2

    if-ne v6, v9, :cond_d

    .line 50
    invoke-virtual {v8, v4, v7}, Lcom/smartisanos/launcher/view/tc;->f(ZZ)V

    .line 51
    :cond_d
    iget-object v6, p0, Lcom/smartisanos/launcher/a/b/i;->Pk:Ljava/util/Map;

    iget v7, v5, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 52
    :cond_e
    iput v4, p0, Lcom/smartisanos/launcher/a/b/i;->Qk:I

    .line 53
    iget v0, p0, Lcom/smartisanos/launcher/a/b/i;->Qk:I

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/a/b/i;->Nc(I)V

    return-void
.end method
