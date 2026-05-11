.class public Lcom/smartisanos/launcher/view/db;
.super Ljava/lang/Object;
.source "FolderController.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Av:Lcom/smartisanos/launcher/view/b/t;

.field private Bv:Lcom/smartisanos/launcher/view/a/g;

.field private Cv:Lcom/smartisanos/launcher/view/a/g;

.field private Dv:Ljava/util/ArrayList;

.field private yv:Ljava/util/ArrayList;

.field private zv:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/db;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/db;->Dv:Ljava/util/ArrayList;

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/db;->a(Lcom/smartisanos/launcher/view/cb;)V

    return-void
.end method

.method private tx()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Pi()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method private ux()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/db;->Cv:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method private vx()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/X;->pi()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/view/cb;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->Dv:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(ZZ)V
    .locals 3

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0, v0, v1, v2}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/view/ec;)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Ha;->c(Lcom/smartisanos/launcher/view/b/fa;)V

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/t;->cs()V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/b/t;->h(ZZ)V

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 16
    invoke-static {p2}, Lcom/smartisanos/launcher/a/a/e;->z(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 17
    invoke-static {p1}, Lcom/smartisanos/launcher/a/a/e;->z(Z)V

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/db;->Dv:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/smartisanos/launcher/view/db;->Dv:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/cb;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-interface {p1, v0}, Lcom/smartisanos/launcher/view/cb;->b(Lcom/smartisanos/launcher/view/b/t;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Lcom/smartisanos/smengine/g;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p0}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/smengine/g;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/smengine/g;Ljava/util/ArrayList;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### convertCellToFolderCell: mFolder cell is null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Lcom/smartisanos/smengine/g;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/X;->d(Lcom/smartisanos/smengine/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### draggedCellIntoFolder: dragged cell is null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dh()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/db;->vx()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/db;->tx()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/db;->ux()V

    return-void
.end method

.method public eh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/t;->onClose()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/t;->clear(Z)V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/C;->a(Lcom/smartisanos/smengine/B;)V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/db;->Bv:Lcom/smartisanos/launcher/view/a/g;

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/launcher/view/b/t;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void
.end method

.method public fh()Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method public gh()Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->Cv:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method public hh()Lcom/smartisanos/launcher/view/a/ka;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->Bv:Lcom/smartisanos/launcher/view/a/g;

    check-cast p0, Lcom/smartisanos/launcher/view/a/ka;

    return-object p0
.end method

.method public ih()Lcom/smartisanos/launcher/view/b/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    return-object p0
.end method

.method public j(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->Bv:Lcom/smartisanos/launcher/view/a/g;

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/db;->Bv:Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/db;->Bv:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/view/b/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_pageview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/db;->Bv:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {v0, v1, p1, v2}, Lcom/smartisanos/launcher/view/b/t;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/data/FolderInfo;Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/t;->init()V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/launcher/view/b/t;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x1000000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/t;->a(Lcom/smartisanos/launcher/data/FolderInfo;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/Ha;->c(Lcom/smartisanos/launcher/view/b/fa;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 16
    invoke-static {v2}, Lcom/smartisanos/launcher/a/a/e;->z(Z)V

    const/4 p1, 0x0

    move v0, p1

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/db;->Dv:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/view/db;->Dv:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/cb;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-interface {v1, v2}, Lcom/smartisanos/launcher/view/cb;->a(Lcom/smartisanos/launcher/view/b/t;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/t;->_r()V

    .line 20
    invoke-static {p1}, Lcom/smartisanos/launcher/a/a/e;->z(Z)V

    return-void

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### pre open not finish !!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public jh()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Pi()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Qi()V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v0

    const/16 v2, 0x22

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/data/K;->Wq:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->category:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/data/K;->Wq:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->category:I

    goto :goto_1

    .line 13
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->zv:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/smartisanos/launcher/data/K;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public l(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/db;->Cv:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method public m(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/db;->yv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/X;->qi()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(J)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/db;->Av:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/b/t;->p(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0
.end method
