.class public Lcom/smartisanos/launcher/view/l;
.super Lcom/smartisanos/launcher/view/d;
.source "CellStatusForDock.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Mu:Z

.field private Nu:Z

.field public Ou:Lcom/smartisanos/smengine/g;

.field private Pu:Lcom/smartisanos/smengine/g;

.field private Qu:Lcom/smartisanos/smengine/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/l;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/d;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/l;->Mu:Z

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/l;->Nu:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/view/l;->Ou:Lcom/smartisanos/smengine/g;

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    return-void
.end method

.method private F(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "cellAreaRelayoutAnimStart !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/l;->Ou:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 4
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 6
    :cond_2
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/l;->Ou:Lcom/smartisanos/smengine/g;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/l;->Ou:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/h;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/h;-><init>(Lcom/smartisanos/launcher/view/l;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-object v3, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 12
    :cond_4
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/view/l;->Ou:Lcom/smartisanos/smengine/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->yZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, p1, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/l;->Ou:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method private G(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/oa;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v0, 0x3dcccccd    # 0.1f

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v0, 0xe

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    .line 6
    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->z:F

    iget v5, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, p1, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    return-object p0
.end method

.method private Rc(I)V
    .locals 14

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cellCollideMoveLogic begin ! pointToAreaIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/V;->zK:[Lcom/smartisanos/smengine/a/j;

    array-length v1, v1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Po()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/V;->Jb(I)V

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_1
    if-eq v1, p1, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/V;->Jb(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_c

    .line 7
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "cellCollideMoveLogic changed=true"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->kill()V

    .line 10
    :cond_4
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/k;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/k;-><init>(Lcom/smartisanos/launcher/view/l;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 12
    iget-object v1, v0, Lcom/smartisanos/launcher/view/V;->zK:[Lcom/smartisanos/smengine/a/j;

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    .line 15
    new-array v5, v2, [I

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    iget-object v7, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget-wide v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 18
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8

    move v10, v3

    .line 20
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 21
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/a/g;

    .line 22
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v12

    iget-wide v12, v12, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v12, v12, v7

    if-nez v12, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v12

    iget v12, v12, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    aput v12, v5, v10

    .line 24
    aget v12, v5, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump dock cell index ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_3

    .line 27
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "duplicate cell index !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_7
    aget v12, v5, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 29
    :cond_8
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    sub-int v0, v2, p1

    move v6, v3

    :goto_4
    const/4 v7, 0x0

    if-ge v6, v0, :cond_9

    add-int v8, p1, v6

    .line 30
    aget v10, v5, v8

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    add-int/2addr v8, v4

    .line 32
    aget-object v8, v1, v8

    .line 33
    iget-object v11, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    invoke-direct {p0, v10, v8}, Lcom/smartisanos/launcher/view/l;->a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v8

    invoke-virtual {v11, v7, v8}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    if-eq v0, v2, :cond_b

    if-gt p1, v2, :cond_a

    :goto_5
    if-ge v3, p1, :cond_b

    .line 34
    aget v0, v5, v3

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 36
    aget-object v2, v1, v3

    .line 37
    iget-object v4, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/view/l;->a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 38
    :cond_a
    sget-object v0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock Move cell ==>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move cell index ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] to ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] , maxIndex ="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 40
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "pointToAreaIndex can\'t more than maxIndex!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_b
    iget-object p0, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_c

    .line 42
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    :cond_c
    return-void

    .line 43
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cellsLoc.length ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/V;->zK:[Lcom/smartisanos/smengine/a/j;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], dockCellCount ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private Sc(I)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cellCollideUpLogic to index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/V;->Db(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Qo()I

    move-result v2

    const-string v3, "]"

    const-string v4, "], index ["

    const-string v5, "collideIndexChanged, preCollideUpIndex ["

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-ne v2, v8, :cond_2

    .line 5
    sget-boolean v9, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/V;->Kb(I)V

    :goto_0
    move v2, v7

    goto :goto_1

    :cond_2
    if-eq v2, p1, :cond_4

    .line 7
    sget-boolean v9, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_3
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/V;->Kb(I)V

    goto :goto_0

    :cond_4
    move v2, v6

    :goto_1
    if-eqz v2, :cond_11

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    if-eqz v2, :cond_5

    .line 10
    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->kill()V

    move v6, v7

    .line 11
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Ko()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Ko()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-eq v2, v8, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cellCollideUpLogic error, collided cell index is -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    move v2, v8

    :goto_2
    if-ne v2, v8, :cond_9

    .line 14
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_8

    sget-object p1, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "nothing is up, make collided up"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 15
    :cond_8
    new-instance p1, Lcom/smartisanos/smengine/g;

    invoke-direct {p1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    new-instance v0, Lcom/smartisanos/launcher/view/i;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/i;-><init>(Lcom/smartisanos/launcher/view/l;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    invoke-direct {p0, p1, v1}, Lcom/smartisanos/launcher/view/l;->b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;)V

    goto/16 :goto_4

    :cond_9
    if-ne v2, p1, :cond_a

    goto :goto_4

    .line 18
    :cond_a
    new-instance p1, Lcom/smartisanos/smengine/g;

    invoke-direct {p1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    .line 19
    iget-object p1, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/j;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/j;-><init>(Lcom/smartisanos/launcher/view/l;)V

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 20
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Ko()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 21
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "make cell fall down !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 22
    :cond_b
    iget-object v2, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/view/l;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;)V

    :cond_c
    if-eqz v6, :cond_10

    .line 23
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_3

    .line 26
    :cond_e
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_3

    .line 27
    :cond_f
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_d

    .line 28
    iget-object v3, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    const/4 v4, 0x0

    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/l;->G(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/oa;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_3

    .line 29
    :cond_10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    invoke-direct {p0, p1, v1}, Lcom/smartisanos/launcher/view/l;->b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;)V

    .line 30
    :goto_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_11

    .line 31
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    :cond_11
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/l;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/oa;
    .locals 8

    .line 19
    new-instance p0, Lcom/smartisanos/smengine/oa;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v0, 0x3e4ccccd    # 0.2f

    .line 20
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v0, 0xe

    .line 21
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 22
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 23
    iget v2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v5, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, p2, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    return-object p0
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/l;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 11

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/l;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/l;->Mu:Z

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/V;->y(Lcom/smartisanos/launcher/view/a/g;)V

    .line 5
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->dl()Lcom/smartisanos/launcher/view/a/ca;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/ca;->T(Z)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p0

    .line 7
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p0, v0

    .line 8
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    .line 10
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v4, p0

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 11
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_1

    .line 12
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v4, p0

    iget p0, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v2, v3, v4, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 13
    :cond_1
    new-instance p0, Lcom/smartisanos/smengine/oa;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const p2, 0x3e4ccccd    # 0.2f

    .line 14
    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 p2, 0xe

    .line 15
    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v4, 0x0

    .line 16
    iget v5, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->z:F

    iget v8, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v2, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 18
    :cond_2
    sget-object p1, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Up Cell is ==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Select Cell is==>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cell already float up !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private lx()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected Sg()Z
    .locals 8

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "DockCell handleLongPress begin !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, v3, v5}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return v5

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->n(Z)V

    .line 10
    sget-object v6, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    if-nez v6, :cond_a

    .line 11
    new-instance v6, Lcom/smartisanos/smengine/g;

    invoke-direct {v6}, Lcom/smartisanos/smengine/g;-><init>()V

    sput-object v6, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    .line 12
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/V;->y(Lcom/smartisanos/launcher/view/a/g;)V

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Kq()Z

    move-result v6

    if-nez v6, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Iq()V

    .line 15
    :cond_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v0, v6, Lcom/smartisanos/launcher/view/a/g;->vH:Z

    .line 16
    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/SceneNode;->setInteractionState(I)V

    .line 17
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 20
    iget-object v6, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v6

    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v1}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    iput-object v7, v6, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    .line 21
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v1

    .line 22
    iget-object v6, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v6

    .line 23
    iget-object v7, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    if-lt v1, v3, :cond_4

    if-eqz v6, :cond_3

    add-int/lit8 v3, v1, -0x1

    if-ne v6, v3, :cond_4

    .line 24
    :cond_3
    invoke-static {v6, v1}, Lcom/smartisanos/launcher/view/x;->l(II)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 25
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v3

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v6, v7, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 26
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    move v1, v5

    goto :goto_0

    :cond_4
    move v1, v0

    .line 27
    :goto_0
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 29
    :cond_5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 30
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    const/4 v6, 0x0

    .line 32
    iget v7, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v6, v7, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 33
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    move v1, v5

    :cond_6
    if-eqz v1, :cond_7

    .line 34
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v1

    invoke-virtual {v2, v1, v5, v5}, Lcom/smartisanos/launcher/view/V;->a(IZZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 35
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v3

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v6, v7, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 36
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 37
    :cond_7
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v1

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    sget-object v6, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v6, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->KZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const v7, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v6, v7, v3}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 41
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->bZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v2, v1, v7, v3}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 45
    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->gZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v2, v1, v7, v3}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 46
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 47
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v1, :cond_8

    .line 48
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/a/g;->Qa(Z)V

    goto :goto_1

    .line 49
    :cond_8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/a/g;->Na(Z)V

    .line 50
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->yi()V

    .line 51
    sget-object v1, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 52
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    .line 53
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v1, p0}, Lcom/smartisanos/launcher/view/V;->a(ILcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/i;

    move-result-object p0

    iput-object p0, v2, Lcom/smartisanos/launcher/view/V;->yK:Lcom/smartisanos/smengine/i;

    .line 54
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result p0

    iget-object v1, v2, Lcom/smartisanos/launcher/view/V;->yK:Lcom/smartisanos/smengine/i;

    invoke-virtual {v2, p0, v1}, Lcom/smartisanos/launcher/view/V;->a(ILcom/smartisanos/smengine/i;)V

    return v0

    .line 55
    :cond_a
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 56
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, v3, v5}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 57
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "handleLongPress() return by cellLongPressAnimationTimeLine is not null !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_b
    return v5
.end method

.method public T(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/l;->Mu:Z

    return-void
.end method

.method public Tg()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    const/4 v4, 0x0

    .line 4
    invoke-static {v4}, Lcom/smartisanos/launcher/ua;->n(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/a/w;->bd()V

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 9
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Jq()V

    .line 10
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->dp()V

    .line 11
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->cp()V

    .line 12
    iget-object v5, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/X;->getAnimation(I)Lcom/smartisanos/smengine/g;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 13
    iget-object v5, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/X;->getAnimation(I)Lcom/smartisanos/smengine/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 14
    :cond_0
    iget-object v5, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    const/4 v5, 0x1

    .line 15
    iput-boolean v5, v0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    .line 16
    sget-object v6, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 17
    invoke-virtual {v6}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 18
    sput-object v7, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    .line 19
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v6

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v6

    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/bb;->xp()V

    .line 22
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 23
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6, v8, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 25
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->fi()V

    .line 26
    :cond_3
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v4, v6, Lcom/smartisanos/launcher/view/a/g;->vH:Z

    .line 28
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CellStatusForDock, onUp, name ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 29
    :cond_4
    iget-object v6, v0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    if-eqz v6, :cond_5

    .line 30
    invoke-virtual {v6}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 31
    :cond_5
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCell.getName() ===> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 32
    :cond_6
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Sc;->lq()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v6, v8}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;I)V

    .line 34
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    if-nez v6, :cond_7

    return-void

    .line 35
    :cond_7
    iget-object v9, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    iget-wide v9, v9, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v11

    iget-wide v11, v11, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_c

    .line 36
    new-instance v9, Lcom/smartisanos/launcher/a/oa;

    invoke-direct {v9}, Lcom/smartisanos/launcher/a/oa;-><init>()V

    .line 37
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    invoke-static {v10}, Lcom/smartisanos/launcher/e/s;->j(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 38
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->Ie()I

    move-result v6

    if-lez v6, :cond_8

    .line 39
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_a

    sget-object v6, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v8, "handle unfinished task first"

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v3, 0x40

    invoke-virtual {v1, v3, v5}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    invoke-virtual {v1, v8, v4}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 42
    iget-object v1, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v9, v1, v3}, Lcom/smartisanos/launcher/a/oa;->a(Lcom/smartisanos/launcher/view/a/g;F)V

    .line 43
    sput-object v7, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    .line 44
    iget-object v1, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 45
    iput-boolean v4, v0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    return-void

    .line 46
    :cond_9
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Wm()V

    .line 47
    :cond_a
    :goto_0
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 48
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    :cond_b
    move v6, v5

    goto :goto_1

    .line 49
    :cond_c
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "there are some bugs happened ! throw exception !!!, current id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v3, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "], target id ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v3, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 50
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TrashView().getWaitingUninstallPageCell() is null !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v6, v4

    .line 51
    :goto_1
    sget-boolean v8, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v8, :cond_f

    sget-object v8, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v9, "CellStatusForDock onUp begin !"

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 52
    :cond_f
    new-instance v8, Lcom/smartisanos/smengine/g;

    invoke-direct {v8}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v8, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    .line 53
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v8, :cond_10

    .line 54
    iget-object v8, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v8

    iget-object v9, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    const v10, 0x3e8f5c29    # 0.28f

    invoke-virtual {v8, v9, v10, v10}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;FF)V

    .line 55
    :cond_10
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 56
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v8, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v8, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v8

    iget-object v9, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    const v10, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/view/a/X;->d(Lcom/smartisanos/smengine/g;F)V

    .line 60
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Ko()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v8

    const-string v9, "ERROR,cell back to target is not NULL!!!!!!!!!!!"

    const/4 v11, 0x0

    if-eqz v8, :cond_15

    .line 61
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v12, :cond_12

    .line 62
    invoke-virtual {v8, v4}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/l;->Xg()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 63
    invoke-virtual {v8, v13, v13, v13}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 64
    :cond_11
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 65
    :cond_12
    sget-boolean v12, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v12, :cond_13

    sget-object v12, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "collidedUpCell ==> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 66
    :cond_13
    iget-object v12, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    if-eqz v12, :cond_14

    .line 67
    check-cast v12, Lcom/smartisanos/launcher/view/b/M;

    .line 68
    iget-object v14, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v14

    .line 69
    iget-object v15, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v15

    .line 70
    invoke-virtual {v8, v14, v15}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 71
    invoke-static {v14, v15}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v14

    .line 72
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v15

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/a/ga;->zi()V

    const/16 v15, 0xa

    .line 73
    invoke-virtual {v8, v15}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 74
    invoke-virtual {v8, v14}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v8, v15}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 77
    invoke-virtual {v8, v13}, Lcom/smartisanos/launcher/view/a/g;->t(F)V

    .line 78
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    .line 79
    invoke-virtual {v5, v12, v10}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/b/M;F)Lcom/smartisanos/smengine/g;

    move-result-object v5

    .line 80
    iget-object v12, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    invoke-virtual {v12, v11, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 81
    invoke-virtual {v8, v4}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/l;->U(Z)V

    .line 82
    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 83
    iget-object v5, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/V;->v(Lcom/smartisanos/launcher/view/a/g;)Z

    goto :goto_2

    .line 84
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_15
    :goto_2
    iget-object v5, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-nez v5, :cond_16

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    .line 86
    :cond_16
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v12, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_3

    .line 87
    :cond_17
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 88
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v12

    .line 89
    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v12

    iget v12, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    if-ge v5, v12, :cond_18

    if-nez v6, :cond_19

    goto :goto_3

    .line 90
    :cond_18
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Ko()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    if-eqz v5, :cond_19

    goto :goto_3

    :cond_19
    move v5, v4

    :goto_4
    if-eqz v5, :cond_24

    if-nez v8, :cond_1d

    .line 91
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 92
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v6

    .line 93
    iget-object v9, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v9

    .line 94
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/animations/r;->Ad()Z

    move-result v12

    if-nez v12, :cond_1d

    .line 95
    iget-object v12, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v12, :cond_1d

    const/4 v13, 0x1

    .line 96
    invoke-virtual {v12, v6, v9, v13, v7}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    .line 97
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 98
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v6

    if-eqz v6, :cond_1a

    sget-boolean v6, Lcom/smartisanos/launcher/theme/X;->ju:Z

    if-nez v6, :cond_1a

    goto :goto_6

    .line 99
    :cond_1a
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/animations/r;->Hd()Z

    move-result v6

    if-eqz v6, :cond_1b

    const v6, 0x3ecccccd    # 0.4f

    goto :goto_5

    :cond_1b
    const v6, 0x3dcccccd    # 0.1f

    .line 100
    :goto_5
    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v9, :cond_1c

    .line 101
    iget-object v9, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Er()Lcom/smartisanos/smengine/g;

    move-result-object v12

    invoke-virtual {v9, v6, v12}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_6

    .line 102
    :cond_1c
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Fr()V

    .line 103
    :cond_1d
    :goto_6
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/V;->v(Lcom/smartisanos/launcher/view/a/g;)Z

    .line 104
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->gp()V

    .line 105
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lcom/smartisanos/launcher/view/V;->g(ZI)[Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 106
    array-length v9, v6

    if-lez v9, :cond_1e

    iget-object v9, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v9

    array-length v12, v6

    if-ge v9, v12, :cond_1e

    .line 107
    iget-object v7, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v7

    aget-object v7, v6, v7

    .line 108
    :cond_1e
    new-instance v6, Lcom/smartisanos/smengine/oa;

    iget-object v9, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v6, v9}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 109
    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v9, 0xe

    .line 110
    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 111
    iget-object v9, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v9

    const/4 v13, 0x0

    .line 112
    iget v14, v9, Lcom/smartisanos/smengine/a/j;->x:F

    iget v15, v9, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->z:F

    iget v12, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v7, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->z:F

    move/from16 v17, v12

    move-object v12, v6

    move/from16 v16, v9

    move/from16 v18, v4

    move/from16 v19, v7

    invoke-virtual/range {v12 .. v19}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 113
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v11, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 114
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    const/4 v6, -0x2

    iput v6, v4, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 115
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Lo()Lcom/smartisanos/smengine/i;

    move-result-object v4

    .line 116
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v4}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v4}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v12

    iget v12, v12, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v4}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v6, v7, v9, v12, v4}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 117
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 118
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_1f

    .line 119
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    .line 120
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Gm()V

    .line 121
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Nm()V

    .line 122
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 123
    :cond_1f
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v4, v6, v10}, Lcom/smartisanos/launcher/animations/z;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;F)V

    if-nez v8, :cond_20

    .line 125
    invoke-virtual {v3, v10}, Lcom/smartisanos/launcher/view/b/fa;->J(F)Lcom/smartisanos/smengine/g;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 126
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v11, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_8

    .line 127
    :cond_20
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_22

    .line 128
    sget-object v3, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 129
    iget-object v3, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->eb(Z)V

    goto :goto_7

    :cond_21
    const/4 v4, 0x0

    .line 130
    :goto_7
    iget-object v3, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    goto :goto_8

    :cond_22
    const/4 v4, 0x0

    .line 131
    sget-object v3, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 132
    iget-object v3, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->eb(Z)V

    .line 133
    :cond_23
    :goto_8
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_26

    sget-object v3, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUp, cell go to dock, dock cell size ==> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto :goto_9

    .line 134
    :cond_24
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_25

    sget-object v3, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "onUp, cell back to page"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 135
    :cond_25
    iget-object v3, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 136
    iget-object v3, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 137
    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 138
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    .line 139
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v6

    .line 140
    iget-object v7, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7, v4, v6}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 141
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    invoke-virtual {v4, v3, v10}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/b/M;F)Lcom/smartisanos/smengine/g;

    move-result-object v4

    .line 142
    iget-object v6, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    iget v3, v3, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    iput v3, v6, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 143
    iget-object v3, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v11, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 144
    iget-object v3, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->em()Lcom/smartisanos/smengine/i;

    move-result-object v3

    .line 145
    iget-object v4, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v3}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v3}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v3}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v4, v6, v7, v9, v3}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 146
    iget-object v3, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 147
    iget-object v3, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Qm()V

    .line 148
    :cond_26
    :goto_9
    sget-object v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->aZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v2, v3, v10, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 149
    sget-object v3, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->hZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v2, v3, v10, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 150
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v3, v4, v10, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 151
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v2, v3, v10, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 152
    iget-object v1, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/g;

    invoke-direct {v2, v0, v8, v5}, Lcom/smartisanos/launcher/view/g;-><init>(Lcom/smartisanos/launcher/view/l;Lcom/smartisanos/launcher/view/a/g;Z)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 153
    iget-object v1, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/l;->Vg()V

    return-void

    .line 155
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public U(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/l;->Nu:Z

    return-void
.end method

.method protected Ug()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/e;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/e;-><init>(Lcom/smartisanos/launcher/view/l;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->mTouchListener:Lcom/smartisanos/smengine/ha;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/f;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/f;-><init>(Lcom/smartisanos/launcher/view/l;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    return-void
.end method

.method public Vg()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Vg()V

    return-void
.end method

.method public Wg()Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method public Xg()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/l;->Nu:Z

    return p0
.end method

.method public Yg()V
    .locals 0

    return-void
.end method

.method public Zg()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "translateCellToDock begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], cid ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/Fa;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Fa;-><init>()V

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Fa;->set(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/d;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    .line 7
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "translateCellToDock done !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(FFFF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/d;->a(FFFF)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/X;->za(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->qm()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2, v0}, Lcom/smartisanos/launcher/view/a/X;->d(Lcom/smartisanos/smengine/g;F)V

    .line 7
    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/smartisanos/launcher/view/l;->j(FF)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 10

    .line 8
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "getCellCollideDownAnim !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p2, p0}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/l;

    iput-boolean p0, v0, Lcom/smartisanos/launcher/view/l;->Mu:Z

    .line 10
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "getCellCollideDownAnim, setCollidedUpCell is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/V;->y(Lcom/smartisanos/launcher/view/a/g;)V

    .line 12
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->km()Lcom/smartisanos/launcher/view/a/f;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/f;->xy:Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    .line 14
    new-instance v1, Lcom/smartisanos/smengine/oa;

    invoke-direct {v1, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const p2, 0x3e4ccccd    # 0.2f

    .line 15
    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 p2, 0xe

    .line 16
    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v3, 0x0

    .line 17
    iget v4, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v0, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 p0, 0x0

    .line 18
    invoke-virtual {p1, p0, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/l;->Ou:Lcom/smartisanos/smengine/g;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    .line 4
    invoke-super {p0}, Lcom/smartisanos/launcher/view/d;->clear()V

    return-void
.end method

.method public i(FF)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/d;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/Fa;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Fa;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Fa;->setX(F)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/Fa;->setY(F)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->mTouchListener:Lcom/smartisanos/smengine/ha;

    invoke-interface {p0, v0}, Lcom/smartisanos/smengine/ha;->b(Lcom/smartisanos/smengine/Fa;)V

    :cond_0
    return-void
.end method

.method public i(Lcom/smartisanos/launcher/view/a/g;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/l;->Sg()Z

    move-result p0

    return p0
.end method

.method public j(FF)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    .line 2
    iget-object p2, p1, Lcom/smartisanos/launcher/view/V;->yK:Lcom/smartisanos/smengine/i;

    if-eqz p2, :cond_13

    .line 3
    iget-object p2, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    .line 4
    iget-object v0, p1, Lcom/smartisanos/launcher/view/V;->yK:Lcom/smartisanos/smengine/i;

    iget v1, p2, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/smartisanos/smengine/i;->isPointInBoundingVolume(FFF)Z

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_7

    .line 8
    iget-object p2, p0, Lcom/smartisanos/launcher/view/l;->Pu:Lcom/smartisanos/smengine/g;

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Ko()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 13
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/launcher/view/l;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/launcher/view/a/g;)V

    .line 15
    iget-object p2, p0, Lcom/smartisanos/launcher/view/l;->Qu:Lcom/smartisanos/smengine/g;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/g;->start()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->dp()V

    if-eqz v1, :cond_3

    .line 17
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/l;->F(Lcom/smartisanos/launcher/view/a/g;)V

    .line 18
    :cond_3
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/l;->lx()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/view/b/fa;->Sb(I)V

    .line 20
    new-instance p1, Lcom/smartisanos/smengine/l;

    iget-object p2, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p1, p2, v2}, Lcom/smartisanos/smengine/l;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 21
    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/Sc;->f(Lcom/smartisanos/smengine/l;)I

    .line 22
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-nez p1, :cond_12

    .line 23
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "setWaitingUninstallCell ... "

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 24
    :cond_4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-nez p1, :cond_5

    .line 25
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    goto/16 :goto_1

    .line 26
    :cond_5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 27
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    goto/16 :goto_1

    .line 28
    :cond_6
    new-instance p1, Lcom/smartisanos/smengine/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p1, p0, v2}, Lcom/smartisanos/smengine/l;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 29
    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/Sc;->g(Lcom/smartisanos/smengine/l;)I

    .line 30
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    goto/16 :goto_1

    .line 31
    :cond_7
    new-instance v0, Lcom/smartisanos/smengine/l;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v0, v5, v2}, Lcom/smartisanos/smengine/l;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 32
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/Sc;->g(Lcom/smartisanos/smengine/l;)I

    .line 33
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    .line 34
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    .line 35
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    .line 36
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    if-ne v2, v3, :cond_a

    return-void

    :cond_8
    if-ge v2, v0, :cond_a

    .line 37
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/V;->v(Lcom/smartisanos/launcher/view/a/g;)Z

    .line 38
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v1

    if-ne v1, v3, :cond_9

    return-void

    .line 39
    :cond_9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/l;->F(Lcom/smartisanos/launcher/view/a/g;)V

    move v3, v4

    :cond_a
    if-eqz v3, :cond_12

    .line 40
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/b/fa;->Sb(I)V

    .line 41
    iget-object v1, p0, Lcom/smartisanos/launcher/view/l;->Ou:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_b

    .line 42
    sget-object p0, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "relayoutCellAreaCellsTimeLine is running, return !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_b
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v1

    const-string v3, "Dock Cell error status. count = "

    if-le v1, v0, :cond_c

    .line 44
    sget-object v5, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 46
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v1

    .line 47
    :cond_c
    iget-object v5, p1, Lcom/smartisanos/launcher/view/V;->yK:Lcom/smartisanos/smengine/i;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->x:F

    .line 48
    iget-object v6, p1, Lcom/smartisanos/launcher/view/V;->yK:Lcom/smartisanos/smengine/i;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/a/i;->x:F

    sub-float v7, v5, v6

    int-to-float v8, v1

    div-float/2addr v7, v8

    .line 49
    iget v8, p2, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float v9, v8, v5

    const/high16 v10, 0x3f800000    # 1.0f

    if-ltz v9, :cond_d

    sub-float v8, v5, v10

    :cond_d
    cmpg-float v5, v8, v6

    if-gtz v5, :cond_e

    add-float v8, v6, v10

    :cond_e
    sub-float/2addr v8, v6

    div-float/2addr v8, v7

    float-to-int v5, v8

    if-gez v5, :cond_f

    goto :goto_0

    :cond_f
    move v4, v5

    .line 50
    :goto_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object p1

    if-lt v4, v1, :cond_10

    .line 51
    sget-object v5, Lcom/smartisanos/launcher/view/l;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cellCount = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", index ="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pointer = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-virtual {v5, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_10
    if-ne v1, v0, :cond_11

    .line 54
    iget-object p2, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 55
    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/view/l;->Sc(I)V

    goto :goto_1

    .line 56
    :cond_11
    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/view/l;->Rc(I)V

    :cond_12
    :goto_1
    return-void

    .line 57
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Oooops ! dockCellAreaRect is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
