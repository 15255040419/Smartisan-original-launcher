.class public Lcom/smartisanos/launcher/animations/G;
.super Lcom/smartisanos/launcher/animations/V;
.source "CellUninstallAnimation.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Lm:Z

.field private Mm:Lcom/smartisanos/smengine/g;

.field private Nm:Lcom/smartisanos/smengine/g;

.field private Om:Z

.field private Qj:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/G;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/G;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/V;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/G;->Lm:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    .line 5
    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/G;->Om:Z

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/G;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/G;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/G;->Lm:Z

    return p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/G;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    return-object p0
.end method


# virtual methods
.method public C(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/G;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsCancelAction flag ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/G;->Om:Z

    if-eqz p1, :cond_1

    .line 3
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.android.desktop.systemui.statusbar.phone.MY_TRASH_VIEW_CANCEL"

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public Qd()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/G;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "emergencyBrakeWhenCellIsRock begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/animations/G;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "isPageCellInRockStatus to be false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/G;->Lm:Z

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    new-instance v1, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance v3, Lcom/smartisanos/smengine/a/j;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v2, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;F)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v0, p3

    .line 12
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/animations/G;->log:Lcom/smartisanos/launcher/va;

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

    .line 13
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/animations/E;->Jm:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v3, v6, :cond_16

    const/4 v10, 0x2

    if-eq v3, v10, :cond_12

    const/4 v11, 0x3

    if-eq v3, v11, :cond_f

    const/4 v11, 0x4

    if-eq v3, v11, :cond_d

    const/4 v9, 0x5

    if-eq v3, v9, :cond_1

    goto/16 :goto_4

    .line 14
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_c

    .line 15
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 16
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v3

    if-nez v3, :cond_7

    .line 17
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 18
    instance-of v4, v3, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v4, :cond_5

    .line 19
    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 20
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    .line 21
    iget-object v9, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v9

    .line 22
    iget-object v10, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10, v4, v9}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 23
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v4

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v9

    if-ne v4, v9, :cond_4

    .line 25
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v4, :cond_2

    .line 26
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/view/a/g;->Na(Z)V

    .line 27
    :cond_2
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/l;->Xg()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 28
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4, v8, v8, v8}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 29
    :cond_3
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 30
    :cond_4
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/b/M;F)Lcom/smartisanos/smengine/g;

    move-result-object v2

    goto/16 :goto_0

    .line 31
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ERROR,target is not page,dock cell back to unknown Parent!!!!!!!!!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ERROR,cell back to target is not NULL!!!!!!!!!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_7
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_8

    .line 34
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Nm()V

    .line 35
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/a/g;->Na(Z)V

    .line 36
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    iget-object v8, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v8}, Lcom/smartisanos/launcher/view/V;->v(Lcom/smartisanos/launcher/view/a/g;)Z

    .line 37
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->gp()V

    .line 38
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v8

    invoke-virtual {v3, v5, v8}, Lcom/smartisanos/launcher/view/V;->g(ZI)[Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 39
    array-length v5, v3

    if-lez v5, :cond_9

    iget-object v5, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v5

    array-length v8, v3

    if-ge v5, v8, :cond_9

    .line 40
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v4

    aget-object v4, v3, v4

    .line 41
    :cond_9
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 42
    new-instance v5, Lcom/smartisanos/smengine/oa;

    iget-object v8, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v5, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 43
    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v8, 0x19

    .line 44
    invoke-virtual {v5, v8}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v9, 0x0

    .line 45
    iget v10, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v3, Lcom/smartisanos/smengine/a/j;->z:F

    iget v13, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v14, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v15, v4, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v8, v5

    invoke-virtual/range {v8 .. v15}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 46
    invoke-virtual {v5}, Lcom/smartisanos/smengine/oa;->start()V

    .line 47
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Lo()Lcom/smartisanos/smengine/i;

    move-result-object v3

    .line 48
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v3}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v3}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v3}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v4, v5, v8, v9, v3}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 49
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v3

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 50
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/a/g;->Na(Z)V

    .line 51
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->aZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v5, v6, v2, v3}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 55
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->hZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v5, v6, v2, v3}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 56
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v4, v3, v2}, Lcom/smartisanos/launcher/animations/z;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;F)V

    .line 57
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_b

    .line 58
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v2

    const v3, 0x3e8f5c29    # 0.28f

    invoke-virtual {v2, v4, v3, v3}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;FF)V

    :cond_b
    move-object v2, v4

    .line 59
    :goto_0
    new-instance v3, Lcom/smartisanos/launcher/animations/D;

    invoke-direct {v3, v1}, Lcom/smartisanos/launcher/animations/D;-><init>(Lcom/smartisanos/launcher/animations/G;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 60
    invoke-virtual {v0, v7, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto/16 :goto_4

    .line 61
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BACK_TO_PARENT_VIEW need time line !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_d
    iget-object v0, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 63
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    new-instance v3, Ljava/lang/Float;

    const v4, -0x42f105cb

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5, v7, v7, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 64
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v3, v9

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v5, v9

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v3, v5, v8}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 65
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 66
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    if-nez v2, :cond_e

    .line 67
    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v2, v1, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    .line 68
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v3, 0x3d8f5c29    # 0.07f

    .line 69
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v5, 0xc

    .line 70
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v12, 0x0

    .line 71
    iget v8, v0, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float v13, v8, v9

    iget v11, v0, Lcom/smartisanos/smengine/a/j;->y:F

    add-float v14, v11, v9

    iget v15, v0, Lcom/smartisanos/smengine/a/j;->z:F

    add-float v16, v8, v9

    sub-float v17, v11, v9

    move-object v11, v2

    move v8, v15

    move/from16 v18, v8

    invoke-virtual/range {v11 .. v18}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 72
    iget-object v8, v1, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v8, v7, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 73
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v7, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v2, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 74
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 75
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 76
    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    new-instance v8, Ljava/lang/Float;

    const v11, 0x3d0efa35

    invoke-direct {v8, v11}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2, v10, v7, v8}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 77
    iget-object v7, v1, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v7, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 78
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v7, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v2, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 79
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 80
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v13, 0x0

    .line 81
    iget v7, v0, Lcom/smartisanos/smengine/a/j;->x:F

    add-float v14, v7, v9

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float v15, v8, v9

    iget v12, v0, Lcom/smartisanos/smengine/a/j;->z:F

    add-float v17, v7, v9

    add-float v18, v8, v9

    move v7, v12

    move-object v12, v2

    move/from16 v16, v7

    move/from16 v19, v7

    invoke-virtual/range {v12 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 82
    iget-object v7, v1, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v7, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 83
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v7, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v2, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 84
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 85
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 86
    iget v7, v0, Lcom/smartisanos/smengine/a/j;->x:F

    add-float v14, v7, v9

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->y:F

    add-float v15, v8, v9

    iget v12, v0, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float v17, v7, v9

    sub-float v18, v8, v9

    move v7, v12

    move-object v12, v2

    move/from16 v16, v7

    move/from16 v19, v7

    invoke-virtual/range {v12 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 87
    iget-object v7, v1, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    const v8, 0x3e0f5c29    # 0.14f

    invoke-virtual {v7, v8, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 88
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v7, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v2, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 89
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 90
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 91
    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v11}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v10, v5, v4}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 92
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    const v5, 0x3e570a3e    # 0.21000001f

    invoke-virtual {v4, v5, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 93
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 94
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xf

    .line 95
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v11, 0x0

    .line 96
    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float v12, v3, v9

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float v13, v4, v9

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float v15, v3, v9

    add-float v16, v4, v9

    move-object v10, v2

    move v14, v7

    move/from16 v17, v7

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 97
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v5, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 98
    new-instance v2, Lcom/smartisanos/launcher/animations/F;

    invoke-direct {v2, v1, v0}, Lcom/smartisanos/launcher/animations/F;-><init>(Lcom/smartisanos/launcher/animations/G;Lcom/smartisanos/smengine/a/j;)V

    .line 99
    iget-object v0, v1, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 100
    iput-boolean v6, v1, Lcom/smartisanos/launcher/animations/G;->Lm:Z

    .line 101
    iget-object v0, v1, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    goto/16 :goto_4

    .line 102
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error status for cellRockAnimTimeLine is not null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_f
    iget-boolean v3, v1, Lcom/smartisanos/launcher/animations/G;->Lm:Z

    if-eqz v3, :cond_10

    .line 104
    iput-boolean v5, v1, Lcom/smartisanos/launcher/animations/G;->Lm:Z

    .line 105
    :cond_10
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_11

    .line 107
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 108
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    .line 109
    new-instance v5, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v5}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    const/16 v6, 0xd

    .line 110
    invoke-virtual {v5, v3, v4, v6, v2}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 111
    new-instance v2, Lcom/smartisanos/launcher/animations/C;

    invoke-direct {v2, v1}, Lcom/smartisanos/launcher/animations/C;-><init>(Lcom/smartisanos/launcher/animations/G;)V

    invoke-virtual {v5, v2}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 112
    iget-object v1, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v1, v5}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto/16 :goto_4

    .line 113
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FALL_INTO_TRASH animation lose time line"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_12
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_15

    .line 115
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    .line 116
    iget-byte v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v5, :cond_13

    .line 117
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_2

    :cond_13
    if-ne v5, v6, :cond_14

    .line 118
    check-cast v3, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    .line 119
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/QuickLaunchItem;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 120
    :cond_14
    :goto_2
    invoke-static {v4}, Lcom/smartisanos/launcher/a/t;->b(Landroid/os/Bundle;)V

    .line 121
    sget-object v3, Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;->ZY:Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;

    invoke-virtual {v1, v3, v2, v0}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V

    goto/16 :goto_4

    .line 122
    :cond_15
    sget-object v3, Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;->ZY:Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;

    invoke-virtual {v1, v3, v2, v0}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V

    goto/16 :goto_4

    :cond_16
    if-eqz v0, :cond_17

    .line 123
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_18

    .line 124
    :cond_17
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_18

    sget-object v3, Lcom/smartisanos/launcher/animations/G;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "params is null, when execute MOVE_TO_TRASH"

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 125
    :cond_18
    iget-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    if-eqz v3, :cond_19

    .line 126
    invoke-virtual {v3}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 127
    iput-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    .line 128
    :cond_19
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v3

    .line 129
    sget-object v4, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 130
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/smartisanos/launcher/animations/G;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "MOVE_TO_TRASH trash anim is running or not do anim !"

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 131
    :cond_1a
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Sc;->getAnimation()Lcom/smartisanos/launcher/animations/lb;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    if-eqz v4, :cond_1b

    .line 132
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Sc;->getAnimation()Lcom/smartisanos/launcher/animations/lb;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_3

    .line 133
    :cond_1b
    sget-object v4, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->MZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;F)V

    .line 134
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Sc;->getAnimation()Lcom/smartisanos/launcher/animations/lb;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    if-eqz v4, :cond_1c

    .line 135
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Sc;->getAnimation()Lcom/smartisanos/launcher/animations/lb;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 136
    :cond_1c
    :goto_3
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v3, v1, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    .line 137
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 138
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v3, :cond_1d

    if-eqz v0, :cond_1d

    .line 139
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    .line 140
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Bm()V

    .line 141
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Fm()V

    .line 142
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Em()V

    .line 143
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Dm()V

    .line 144
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 145
    :cond_1d
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 146
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    .line 147
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 148
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v6

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    .line 149
    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v6, v5

    .line 150
    new-instance v5, Lcom/smartisanos/smengine/oa;

    invoke-direct {v5, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 151
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v10

    .line 152
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    iget v12, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v3, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v4, v9

    add-float/2addr v13, v4

    div-float/2addr v6, v9

    add-float/2addr v13, v6

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v11, v12, v13, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 153
    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 154
    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v4, 0x0

    .line 155
    iget v12, v10, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v10, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v10, Lcom/smartisanos/smengine/a/j;->z:F

    iget v15, v11, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v11, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v11, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v10, v5

    move v11, v4

    move/from16 v16, v6

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 156
    new-instance v4, Lcom/smartisanos/launcher/animations/B;

    invoke-direct {v4, v1, v0, v2}, Lcom/smartisanos/launcher/animations/B;-><init>(Lcom/smartisanos/launcher/animations/G;Lcom/smartisanos/launcher/view/a/g;F)V

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 157
    iget-object v4, v1, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v7, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 158
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_1e

    .line 159
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4, v8, v8, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/high16 v5, 0x42c80000    # 100.0f

    .line 160
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/smartisanos/launcher/ib;->trash_view_scale:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 161
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v9

    invoke-static {}, Lcom/smartisanos/launcher/ja;->jb()F

    move-result v9

    mul-float/2addr v9, v5

    invoke-static {}, Lcom/smartisanos/launcher/ja;->jb()F

    move-result v10

    mul-float/2addr v5, v10

    invoke-direct {v6, v9, v5, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 162
    new-instance v5, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v5}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 163
    invoke-virtual {v5, v4, v6, v3, v2}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 164
    invoke-static {v0, v5}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 165
    iget-object v2, v1, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 166
    :cond_1e
    iget-object v0, v1, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    :goto_4
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/g;F)V
    .locals 3

    if-eqz p1, :cond_3

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/G;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRock set isPageCellInRockStatus == false, cell "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/G;->Qd()V

    .line 5
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/G;->Om:Z

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object p1, Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;->_Y:Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;

    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/launcher/animations/G;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "isCancelAction is false !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "stop rock need time line !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Kj()V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/G;->Mm:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/G;->Nm:Lcom/smartisanos/smengine/g;

    .line 5
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/G;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method
