.class public Lcom/smartisanos/launcher/animations/r;
.super Ljava/lang/Object;
.source "AnimationController.java"

# interfaces
.implements Lcom/smartisanos/smengine/B;


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Al:Lcom/smartisanos/smengine/n;

.field private Bl:Lcom/smartisanos/smengine/n;

.field private Cl:Lcom/smartisanos/smengine/n;

.field protected dl:Lcom/smartisanos/launcher/view/b/fa;

.field private el:Lcom/smartisanos/launcher/animations/qa;

.field private fl:Lcom/smartisanos/launcher/animations/sa;

.field private gl:Lcom/smartisanos/launcher/animations/c/k;

.field private hl:Lcom/smartisanos/launcher/animations/oa;

.field private il:Z

.field private jl:Z

.field private kl:Lcom/smartisanos/smengine/g;

.field private ll:Ljava/util/ArrayList;

.field private ml:Z

.field public nl:Lcom/smartisanos/launcher/view/b/M;

.field public ol:Lcom/smartisanos/launcher/view/a/g;

.field public pl:Lcom/smartisanos/launcher/view/b/M;

.field public ql:Lcom/smartisanos/launcher/view/a/g;

.field public rl:Lcom/smartisanos/launcher/view/b/M;

.field public sl:Lcom/smartisanos/launcher/view/a/g;

.field public tl:Lcom/smartisanos/launcher/view/b/M;

.field public ul:Ljava/util/ArrayList;

.field public vl:Ljava/util/ArrayList;

.field private wl:I

.field public xl:Z

.field private yl:Lcom/smartisanos/smengine/l;

.field private zl:Lcom/smartisanos/smengine/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/b/fa;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->il:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->jl:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/r;->ll:Ljava/util/ArrayList;

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->ml:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/r;->ul:Ljava/util/ArrayList;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/animations/r;->vl:Ljava/util/ArrayList;

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->xl:Z

    .line 9
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/r;->Al:Lcom/smartisanos/smengine/n;

    .line 10
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/r;->Bl:Lcom/smartisanos/smengine/n;

    .line 11
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/r;->Cl:Lcom/smartisanos/smengine/n;

    .line 12
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p2

    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result p2

    .line 14
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->checkCellNumsInSinglePage(I)Z

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unlock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".xml"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    new-instance v0, Lcom/smartisanos/launcher/animations/c/k;

    invoke-direct {v0, p2, p1}, Lcom/smartisanos/launcher/animations/c/k;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    .line 17
    :cond_0
    new-instance p2, Lcom/smartisanos/launcher/view/a/ba;

    invoke-direct {p2}, Lcom/smartisanos/launcher/view/a/ba;-><init>()V

    const/4 v0, 0x1

    const-string v1, "PageCell"

    .line 18
    invoke-virtual {p2, v1, v0}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const/4 v0, -0x1

    const-string v1, "rowIndex"

    .line 19
    invoke-virtual {p2, v1, v0}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string v1, "columnIndex"

    .line 20
    invoke-virtual {p2, v1, v0}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    const-string v1, "singlePageMode"

    invoke-virtual {p2, v1, v0}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 22
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    const-string v1, "multiPageMode"

    invoke-virtual {p2, v1, v0}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p1

    const-string v0, "KeyCurrentPageMode"

    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 24
    new-instance p1, Lcom/smartisanos/launcher/view/a/g;

    const-string v0, "FirstEmptyCell"

    invoke-direct {p1, v0, p2}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    .line 25
    new-instance p1, Lcom/smartisanos/launcher/view/a/g;

    const-string v0, "LastTimeCollidedCell"

    invoke-direct {p1, v0, p2}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->ql:Lcom/smartisanos/launcher/view/a/g;

    .line 26
    new-instance p1, Lcom/smartisanos/launcher/view/a/g;

    const-string v0, "CurrentTouchedCell"

    invoke-direct {p1, v0, p2}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->sl:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method private static D(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/aa;->q(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/a/da;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/da;->Si()V

    return-void
.end method

.method private Oc(I)V
    .locals 6

    .line 1
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/r;->il:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p1

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->xr()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->yr()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "#### page is reach max count and all pages are invisible."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-nez p1, :cond_4

    .line 6
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "handleMyAnimationNotify mPageView.getSelectedCell() is null."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    goto :goto_0

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    if-nez v0, :cond_8

    .line 13
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "collideNow is false. see log."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :cond_6
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "handleMyAnimationNotify mCurrentCollideData.getCollidedNode().getParent() is null."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    return-void

    .line 15
    :cond_8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 16
    :cond_9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-ne v2, v0, :cond_a

    goto/16 :goto_4

    .line 17
    :cond_a
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 18
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-ne v2, v0, :cond_b

    return-void

    .line 19
    :cond_b
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1a

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_3

    :cond_c
    if-nez p1, :cond_f

    .line 20
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/b/fa;->a(FFZ)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-nez v0, :cond_d

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/b/fa;->t(FF)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    .line 24
    :cond_d
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/r;->b(Lcom/smartisanos/launcher/view/b/M;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 25
    :cond_e
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Bd()V

    .line 26
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->ww()V

    return-void

    .line 27
    :cond_f
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_2

    .line 28
    :cond_10
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v1

    .line 29
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v2

    if-ge v2, v1, :cond_14

    .line 30
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/b/fa;->n(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 31
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v2

    if-ge v2, v1, :cond_11

    .line 32
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->zd()V

    .line 33
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Bd()V

    .line 34
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->ww()V

    return-void

    .line 35
    :cond_11
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    if-ne v1, v2, :cond_13

    .line 36
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->n(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v0

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v0

    if-nez v0, :cond_12

    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v0

    .line 40
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    .line 41
    :cond_12
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    iget v1, p1, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v1, v1

    iget p1, p1, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 43
    :cond_13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->yd()V

    goto :goto_1

    :cond_14
    if-ne v2, v1, :cond_15

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->yd()V

    goto :goto_1

    .line 45
    :cond_15
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_16

    .line 46
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p1

    if-gt v2, p1, :cond_16

    .line 47
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->yd()V

    .line 48
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->ww()V

    return-void

    .line 49
    :cond_16
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/r;->b(Lcom/smartisanos/launcher/view/b/M;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 50
    :cond_17
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->zd()V

    .line 51
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Bd()V

    .line 52
    :goto_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->ww()V

    return-void

    .line 53
    :cond_18
    :goto_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    .line 54
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    .line 55
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/r;->b(Lcom/smartisanos/launcher/view/b/M;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 56
    :cond_19
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Bd()V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    .line 58
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 59
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->ww()V

    return-void

    .line 60
    :cond_1a
    :goto_3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    .line 62
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v5

    if-eqz p1, :cond_1b

    .line 63
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->zd()V

    .line 64
    :cond_1b
    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/b/M;->g(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 66
    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 67
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    return-void

    .line 68
    :cond_1c
    :goto_4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->tm()Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    .line 69
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/g;->Xa(Z)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/r;->f(Lcom/smartisanos/launcher/view/a/g;)V

    :cond_1d
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/animations/oa;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->hl:Lcom/smartisanos/launcher/animations/oa;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/animations/qa;)Lcom/smartisanos/launcher/animations/qa;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->el:Lcom/smartisanos/launcher/animations/qa;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/animations/sa;)Lcom/smartisanos/launcher/animations/sa;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->kl:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->Bl:Lcom/smartisanos/smengine/n;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->uw()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/r;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/r;->Oc(I)V

    return-void
.end method

.method private a(Lcom/smartisanos/launcher/view/a/g;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    .line 153
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    .line 154
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result p1

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 155
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->un()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    .line 159
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    .line 160
    :goto_0
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v1

    :goto_1
    if-gt p1, v1, :cond_2

    .line 161
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    .line 162
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 163
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 164
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_3
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/r;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/r;->ml:Z

    return p1
.end method

.method static synthetic access$1500()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 11

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    instance-of v2, v2, Lcom/smartisanos/launcher/view/b/fa;

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 10
    :goto_0
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 11
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v4

    .line 12
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5, v3}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v5

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v6

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v0

    invoke-static {v6, v0}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v0

    .line 14
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v6

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v7

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v6

    .line 15
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->un()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v6

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    invoke-static {v6, v1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v6

    :cond_1
    const/4 v1, 0x0

    const/4 v7, 0x1

    if-le v4, v5, :cond_7

    :goto_1
    if-lt v4, v5, :cond_6

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_5

    .line 20
    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v2, :cond_3

    add-int/lit8 v8, v0, -0x1

    :goto_2
    if-ltz v8, :cond_5

    .line 21
    invoke-virtual {v1, v8}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v9

    .line 22
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_3
    if-ne v1, v3, :cond_4

    .line 23
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v8

    sub-int/2addr v8, v7

    :goto_3
    if-lt v8, v6, :cond_5

    .line 24
    invoke-virtual {v1, v8}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v9

    .line 25
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 26
    :cond_4
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v8

    sub-int/2addr v8, v7

    :goto_4
    if-ltz v8, :cond_5

    .line 27
    invoke-virtual {v1, v8}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v9

    .line 28
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    move v1, v7

    goto/16 :goto_d

    :cond_7
    if-ne v4, v5, :cond_9

    .line 29
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v0, v6, :cond_8

    sub-int/2addr v0, v7

    :goto_6
    if-lt v0, v6, :cond_6

    .line 30
    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_8
    add-int/2addr v0, v7

    :goto_7
    if-gt v0, v6, :cond_e

    .line 32
    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    if-gt v4, v5, :cond_e

    .line 34
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8, v4}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v8

    .line 35
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_c

    .line 36
    :cond_a
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v8, v2, :cond_b

    add-int/lit8 v9, v0, 0x1

    .line 37
    :goto_9
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v10

    sub-int/2addr v10, v7

    if-gt v9, v10, :cond_d

    .line 38
    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v10

    .line 39
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_b
    if-ne v8, v3, :cond_c

    move v9, v1

    :goto_a
    if-gt v9, v6, :cond_d

    .line 40
    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v10

    .line 41
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_c
    move v9, v1

    .line 42
    :goto_b
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v10

    sub-int/2addr v10, v7

    if-gt v9, v10, :cond_d

    .line 43
    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v10

    .line 44
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_d
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    :goto_d
    return v1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->kw()V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/oa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->hl:Lcom/smartisanos/launcher/animations/oa;

    return-object p0
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    .line 17
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    .line 18
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    goto :goto_0

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 21
    :goto_0
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 22
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    if-nez v2, :cond_1

    .line 23
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 24
    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    add-int/lit8 v1, v1, -0x1

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result p0

    goto :goto_2

    .line 25
    :cond_1
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->un()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v1

    .line 27
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result p0

    .line 28
    :goto_1
    invoke-static {v1, p0}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result p0

    :goto_2
    if-gt v0, p0, :cond_3

    .line 29
    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    .line 30
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31
    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v0

    if-eq v0, v2, :cond_b

    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v0

    .line 34
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v2

    .line 35
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->ql:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->ql:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v3

    .line 36
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v5

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v4

    :goto_3
    if-gt v0, v2, :cond_a

    .line 37
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    .line 38
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_8

    .line 39
    :cond_5
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    iget-object v7, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    if-ne v6, v7, :cond_6

    add-int/lit8 v6, v3, 0x1

    :goto_4
    if-gt v6, v4, :cond_9

    .line 41
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    .line 42
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    if-ne v5, v6, :cond_7

    add-int/lit8 v6, v3, 0x1

    .line 43
    :goto_5
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v6, v7, :cond_9

    .line 44
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    .line 45
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    if-ne v5, v7, :cond_8

    move v6, v1

    :goto_6
    if-gt v6, v4, :cond_9

    .line 46
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    .line 47
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    move v6, v1

    .line 48
    :goto_7
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v6, v7, :cond_9

    .line 49
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    .line 50
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    :goto_9
    return-void

    .line 51
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "mfirstEmptyCell value is wrong....."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->qw()V

    return-void
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/r;->D(Lcom/smartisanos/launcher/view/a/g;)V

    return-void
.end method

.method private d(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->ql:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->ql:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v3

    :goto_0
    if-gt v0, v1, :cond_5

    .line 8
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_5

    .line 10
    :cond_0
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v2, 0x1

    :goto_1
    if-gt v5, v3, :cond_4

    .line 12
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    .line 13
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-ne v4, v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 14
    :goto_2
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_4

    .line 15
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    .line 16
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    if-ne v4, v6, :cond_3

    :goto_3
    if-gt v5, v3, :cond_4

    .line 17
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    .line 18
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 19
    :cond_3
    :goto_4
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_4

    .line 20
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    .line 21
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static synthetic e(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->mw()V

    return-void
.end method

.method private e(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v0

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->un()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    .line 8
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    .line 9
    :goto_0
    invoke-static {v4, v3}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v3

    .line 10
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    invoke-static {v4, v1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v1

    move v4, v2

    :goto_1
    if-lt v4, v0, :cond_6

    .line 11
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_6

    .line 13
    :cond_1
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v2, v0, :cond_2

    :goto_2
    if-lt v3, v1, :cond_6

    .line 14
    invoke-virtual {v5, v3}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    if-ne v4, v2, :cond_3

    move v6, v3

    :goto_3
    if-ltz v6, :cond_5

    .line 16
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    .line 17
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_3
    if-ge v4, v2, :cond_4

    if-le v4, v0, :cond_4

    .line 18
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_4
    if-ltz v6, :cond_5

    .line 19
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    .line 20
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_4
    if-ne v4, v0, :cond_5

    .line 21
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Vq()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_5
    if-lt v6, v1, :cond_5

    .line 22
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    .line 23
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method static synthetic f(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/qa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->el:Lcom/smartisanos/launcher/animations/qa;

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/sa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    return-object p0
.end method

.method static synthetic h(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->lw()V

    return-void
.end method

.method static synthetic i(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->jw()V

    return-void
.end method

.method static synthetic j(Lcom/smartisanos/launcher/animations/r;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/r;->wl:I

    return p0
.end method

.method private jw()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->ah()V

    return-void
.end method

.method private kw()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->xl:Z

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->dh()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->vd()V

    return-void
.end method

.method private lw()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/animations/r;->wl:I

    if-gez v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->kl:Lcom/smartisanos/smengine/g;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/smartisanos/launcher/animations/r;->kl:Lcom/smartisanos/smengine/g;

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    new-instance v4, Lcom/smartisanos/launcher/animations/i;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/animations/i;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->kl:Lcom/smartisanos/smengine/g;

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->kl:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method private mw()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->ll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->ll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/b/M;->setSceneNodeForceRender(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->ll:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private nw()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/g;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/g;-><init>(Lcom/smartisanos/launcher/animations/r;I)V

    return-object v0
.end method

.method private ow()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/h;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/h;-><init>(Lcom/smartisanos/launcher/animations/r;I)V

    return-object v0
.end method

.method private pw()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/f;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/f;-><init>(Lcom/smartisanos/launcher/animations/r;I)V

    return-object v0
.end method

.method private qw()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v0

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->setSceneNodeForceRender(Z)V

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->ll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v0

    .line 11
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->setSceneNodeForceRender(Z)V

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->ll:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private rw()Lcom/smartisanos/smengine/g;
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->ml:Z

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->uw()V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    :goto_0
    if-nez v2, :cond_2

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/db;->jh()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/db;->fh()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    goto :goto_1

    .line 10
    :cond_1
    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCellUpOnPageNotify selectedCell = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCellUpOnPageNotify. parent is null."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    move-object v8, v2

    .line 12
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->ah()V

    .line 13
    new-instance v9, Lcom/smartisanos/smengine/g;

    invoke-direct {v9}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/db;->jh()Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_6

    .line 16
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/view/b/fa;->p(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v2

    .line 17
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v3

    .line 18
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v2, :cond_4

    .line 19
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->Hr()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v7, v11

    goto :goto_3

    .line 20
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5, v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 21
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### targetScreenIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_5
    const v3, 0x3e99999a    # 0.3f

    .line 22
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    new-instance v5, Lcom/smartisanos/launcher/animations/k;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/animations/k;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    .line 23
    invoke-virtual {v4, v2, v3, v0, v5}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    .line 24
    invoke-virtual {v9, v10, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    move v7, v0

    .line 25
    :goto_3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v2

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v8

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/b/M;FZLcom/smartisanos/smengine/a;Z)Lcom/smartisanos/smengine/g;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v0, v11}, Lcom/smartisanos/launcher/view/a/g;->c(ZZ)V

    goto :goto_4

    .line 28
    :cond_6
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Eq()V

    .line 29
    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 30
    :goto_4
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v3, :cond_d

    .line 31
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v3

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 32
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->Xn()Lcom/smartisanos/smengine/g;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 33
    invoke-virtual {v2, v10, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 34
    :cond_7
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 35
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/X;->mi()Lcom/smartisanos/smengine/g;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 37
    invoke-virtual {v2, v10, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 38
    :cond_8
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p0

    .line 39
    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 40
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    if-eq v1, v8, :cond_9

    .line 41
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Yn()V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 42
    :cond_a
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    if-ne v0, v3, :cond_e

    sget-boolean v0, Lcom/smartisanos/launcher/theme/X;->ju:Z

    if-eqz v0, :cond_e

    .line 43
    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "##### reset background multi page mode"

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Hd()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "######## delay resetBackground"

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    const v0, 0x3f19999a    # 0.6f

    goto :goto_6

    :cond_b
    move v0, v10

    .line 46
    :goto_6
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 47
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/X;->mi()Lcom/smartisanos/smengine/g;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 49
    invoke-virtual {v2, v0, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 50
    :cond_c
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Er()Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_7

    .line 51
    :cond_d
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v3

    if-ne v0, v3, :cond_e

    .line 52
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Fr()V

    .line 53
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 54
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ga;->Mi()V

    .line 55
    :cond_e
    :goto_7
    invoke-virtual {v9, v10, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-object v9
.end method

.method private sw()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->ow()Lcom/smartisanos/smengine/n;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->Bl:Lcom/smartisanos/smengine/n;

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->Bl:Lcom/smartisanos/smengine/n;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, p0, v1}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/n;F)V

    return-void
.end method

.method private tw()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->pw()Lcom/smartisanos/smengine/n;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->Cl:Lcom/smartisanos/smengine/n;

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->Cl:Lcom/smartisanos/smengine/n;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, p0, v1}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/n;F)V

    return-void
.end method

.method private uw()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->Bl:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->Bl:Lcom/smartisanos/smengine/n;

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->vw()V

    return-void
.end method

.method private vw()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->Cl:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->Cl:Lcom/smartisanos/smengine/n;

    return-void
.end method

.method private ww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->ql:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "##### Do not Init launcher because now is changing theme!!!!"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->mq()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->gd()Z

    move-result v0

    if-nez v0, :cond_d

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 6
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    if-nez v0, :cond_4

    .line 7
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "### init unlock animation setting is disable unlock animation,return"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    if-ne v0, v1, :cond_5

    return-void

    .line 9
    :cond_5
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->jl:Z

    if-eqz v0, :cond_7

    .line 10
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "### mUnlockAnimationHasInit has been true,return"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 11
    :cond_7
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnlockAnim, initUnlockAnimation needDelayForWizard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mUnlockAnimationHasInit = true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->jl:Z

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Mq()V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Z;->jp()V

    .line 16
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v1, :cond_9

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 18
    :cond_9
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    const/16 v2, 0x8

    .line 20
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/X;->za(I)V

    .line 21
    :cond_a
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    .line 23
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/c/k;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 24
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/c/k;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 25
    :cond_b
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/animations/c/k;->K(Z)V

    .line 26
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/c/k;->e(Lcom/smartisanos/launcher/view/b/M;)V

    .line 27
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/J;->k(Z)V

    return-void

    .line 28
    :cond_d
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_e

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "##### Do not Init launcher because now is uninstalling!!!!"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 29
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 30
    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "##### Do not Init launcher because now is uninstalling!!!! something is on trash"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public Ad()Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    if-ne v1, v4, :cond_2

    :cond_1
    return v2

    .line 2
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-direct {v0, v11, v1}, Lcom/smartisanos/launcher/animations/r;->d(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    if-nez v4, :cond_3

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 9
    :cond_3
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    const/4 v14, 0x1

    if-nez v2, :cond_4

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v14

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 11
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v15, 0x0

    if-lez v5, :cond_5

    .line 12
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v13

    .line 13
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v12

    .line 14
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v7

    .line 15
    new-instance v4, Lcom/smartisanos/launcher/animations/sa;

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    new-instance v5, Lcom/smartisanos/launcher/animations/e;

    invoke-direct {v5, v0}, Lcom/smartisanos/launcher/animations/e;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    move-object/from16 v16, v5

    move-object v5, v4

    move v3, v12

    move-object v12, v1

    move v14, v13

    move-object/from16 v13, v16

    invoke-direct/range {v5 .. v13}, Lcom/smartisanos/launcher/animations/sa;-><init>(Lcom/smartisanos/launcher/view/b/fa;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V

    iput-object v4, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    const/4 v4, 0x1

    .line 16
    invoke-virtual {v2, v14, v3, v4, v15}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    .line 17
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/sa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->start()V

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 19
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    goto :goto_0

    .line 20
    :cond_5
    iput-object v15, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    .line 21
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public B(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/r;->il:Z

    return-void
.end method

.method protected Bd()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 2
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    .line 6
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    .line 8
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    .line 9
    :goto_0
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/view/b/fa;->n(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    .line 10
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    if-nez v4, :cond_1

    .line 11
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Iq()V

    .line 12
    :cond_1
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/view/b/fa;->n(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    .line 13
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v4

    .line 15
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v6

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 16
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-direct {v0, v14, v5}, Lcom/smartisanos/launcher/animations/r;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 19
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v6

    .line 20
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v7

    .line 21
    iget-object v8, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v8, v6, v7}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    .line 22
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v7, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v10

    .line 23
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/smartisanos/launcher/view/b/M;->g(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 24
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 25
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 26
    new-instance v4, Lcom/smartisanos/launcher/animations/qa;

    iget-object v9, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    new-instance v6, Lcom/smartisanos/launcher/animations/a;

    invoke-direct {v6, v0}, Lcom/smartisanos/launcher/animations/a;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    move-object v8, v4

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v8 .. v16}, Lcom/smartisanos/launcher/animations/qa;-><init>(Lcom/smartisanos/launcher/view/b/fa;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V

    iput-object v4, v0, Lcom/smartisanos/launcher/animations/r;->el:Lcom/smartisanos/launcher/animations/qa;

    .line 27
    :cond_2
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 28
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 29
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/view/a/g;->rI:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->jb(I)V

    .line 30
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 31
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    goto :goto_1

    :cond_3
    return-void

    .line 32
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### createEmptyScreen fail.........."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Cd()Lcom/smartisanos/smengine/g;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "########### cell_up_on_page ####"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Md()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->rw()Lcom/smartisanos/smengine/g;

    move-result-object p0

    return-object p0
.end method

.method public Dd()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->uw()V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->Al:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->ml:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->Al:Lcom/smartisanos/smengine/n;

    return-void
.end method

.method public Ed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->zl:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->zl:Lcom/smartisanos/smengine/g;

    :cond_0
    return-void
.end method

.method public Fd()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Ld()V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "#### forceFinishUnlockAnimation"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/c/k;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/c/k;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_1
    return-void
.end method

.method public Gd()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/r;->il:Z

    return p0
.end method

.method public Hd()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->il:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->el:Lcom/smartisanos/launcher/animations/qa;

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->hl:Lcom/smartisanos/launcher/animations/oa;

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public Id()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/r;->ml:Z

    return p0
.end method

.method public Jd()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/c/k;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Kd()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/r;->jl:Z

    return p0
.end method

.method public Ld()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->jl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result p0

    const/16 v0, 0x65

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/J;->k(Z)V

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/p;->La(I)V

    .line 5
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### isChangeTheme do not play unlock animation."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Sc;->mq()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->gd()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    if-nez p0, :cond_4

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/J;->k(Z)V

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/p;->La(I)V

    .line 10
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### play unlock animation setting is disable unlock animation,return"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 11
    :cond_4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### mUnlockAnimationHasInit == false, do not play unlock animation"

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/p;->La(I)V

    return-void

    .line 13
    :cond_6
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/J;->k(Z)V

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/p;->La(I)V

    .line 15
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### trash isTrashAnimRunning(),do not play unlock animation."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    return-void

    .line 16
    :cond_8
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "### mUnlockAnimationHasInit == true, play unlock animation"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_9
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/r;->jl:Z

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    if-eqz v0, :cond_f

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnlockAnim, playUnlockAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    .line 21
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/c/k;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    .line 22
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/c/k;->Fe()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/c/k;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/c/k;->Fe()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    .line 25
    :cond_b
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/c/k;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 26
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "### unlock is playing."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "### unlock not init."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Wq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 29
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/c/k;->f(Lcom/smartisanos/launcher/view/b/M;)V

    goto :goto_2

    .line 30
    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "### unlock not found a page in window"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_2
    return-void
.end method

.method public Md()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->tl:Lcom/smartisanos/launcher/view/b/M;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->pl:Lcom/smartisanos/launcher/view/b/M;

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->sl:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->ql:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v2, v2}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v2, v2}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->fl()V

    .line 11
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ul:Ljava/util/ArrayList;

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->vl:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public Nd()Lcom/smartisanos/smengine/g;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ub;->Nc()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "scrollToLeft not to home."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ub;->Sc()V

    :cond_0
    return-object v2

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "scrollToLeft not to home. handleTap"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->Bp()V

    return-object v2

    .line 8
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v4, 0x2000000

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 10
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/a/i;->pe()V

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/smartisanos/launcher/view/db;->b(ZZ)V

    .line 13
    :cond_5
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "scrollToLeft not to home. ON_FOLDER_HAS_OPEN"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    return-object v2

    .line 14
    :cond_7
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v1

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v4

    if-ne v1, v4, :cond_9

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/a/i;->pe()V

    .line 16
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "scrollToLeft pressedHomeKey"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    return-object v2

    .line 17
    :cond_9
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 18
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 19
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x80

    if-eqz v2, :cond_a

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 23
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v5

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 24
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const v5, 0x3eb851ec    # 0.36f

    new-instance v6, Lcom/smartisanos/launcher/animations/l;

    invoke-direct {v6, v0}, Lcom/smartisanos/launcher/animations/l;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    invoke-virtual {v2, v3, v5, v3, v6}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    .line 25
    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto/16 :goto_1

    .line 26
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 29
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v5

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v6

    const v7, 0x3f7eb852    # 0.995f

    const v8, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v5, v6, v8, v7}, Lcom/smartisanos/launcher/view/b/fa;->a(IIFF)V

    const/high16 v2, 0x42200000    # 40.0f

    .line 30
    iget-object v5, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 31
    new-instance v6, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 32
    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v7, 0xe

    .line 33
    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v10, 0x0

    .line 34
    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v11

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v12

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v13

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v9

    add-float v14, v9, v2

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v15

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v16

    move-object v9, v6

    invoke-virtual/range {v9 .. v16}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 35
    new-instance v9, Lcom/smartisanos/launcher/animations/m;

    invoke-direct {v9, v0}, Lcom/smartisanos/launcher/animations/m;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 36
    invoke-virtual {v1, v4, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 37
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v6, 0x3e99999a    # 0.3f

    .line 38
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 39
    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v11, 0x0

    .line 40
    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v6

    add-float v12, v6, v2

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v13

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v14

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v15

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v16

    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v17

    move-object v10, v4

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 41
    invoke-virtual {v1, v8, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 42
    new-instance v2, Lcom/smartisanos/launcher/animations/n;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/animations/n;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    sget-object v2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    :goto_1
    return-object v1
.end method

.method public a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/g;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 104
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/sa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 106
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-direct {v0, v1, v9, v2}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/view/a/g;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v4

    const/4 v5, 0x0

    .line 111
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/smartisanos/launcher/view/b/M;

    .line 112
    iget-object v6, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 113
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v6, 0x20

    const/4 v14, 0x1

    if-lez v1, :cond_7

    .line 114
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v1

    .line 115
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v14

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v15

    .line 116
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v3

    .line 117
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-boolean v4, v4, Lcom/smartisanos/launcher/view/b/fa;->FQ:Z

    if-nez v4, :cond_5

    .line 118
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v4

    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 119
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    .line 120
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 121
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 122
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3, v12}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v5

    .line 123
    new-instance v11, Lcom/smartisanos/launcher/animations/sa;

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    new-instance v10, Lcom/smartisanos/launcher/animations/b;

    invoke-direct {v10, v0, v9}, Lcom/smartisanos/launcher/animations/b;-><init>(Lcom/smartisanos/launcher/animations/r;Ljava/util/ArrayList;)V

    move-object v3, v11

    move-object/from16 v16, v10

    move-object v10, v2

    move-object v13, v11

    move-object/from16 v11, v16

    invoke-direct/range {v3 .. v11}, Lcom/smartisanos/launcher/animations/sa;-><init>(Lcom/smartisanos/launcher/view/b/fa;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V

    iput-object v13, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    const/4 v3, 0x0

    .line 124
    invoke-virtual {v12, v1, v15, v14, v3}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    .line 125
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v1

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    sget-boolean v1, Lcom/smartisanos/launcher/theme/X;->ju:Z

    if-eqz v1, :cond_3

    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/sa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v1

    iget-object v3, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Er()Lcom/smartisanos/smengine/g;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 127
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/sa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 128
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/sa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_2

    .line 129
    :cond_4
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/sa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_2

    :cond_5
    move v3, v5

    .line 130
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 131
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 132
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v6

    .line 133
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v7

    .line 134
    invoke-static {v6, v7}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v6

    .line 135
    invoke-static {v6}, Lcom/smartisanos/launcher/view/b/M;->tb(I)I

    move-result v6

    .line 136
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v7, v6}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v7

    .line 137
    iget v8, v7, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v8, v8

    iget v7, v7, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v8, v7}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 138
    iget-object v7, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 139
    aget-object v8, v7, v6

    invoke-virtual {v8}, Lcom/smartisanos/smengine/a/j;->getX()F

    move-result v8

    aget-object v10, v7, v6

    .line 140
    invoke-virtual {v10}, Lcom/smartisanos/smengine/a/j;->getY()F

    move-result v10

    aget-object v6, v7, v6

    .line 141
    invoke-virtual {v6}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v6

    .line 142
    invoke-virtual {v4, v8, v10, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 143
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 144
    invoke-virtual {v12, v1, v15, v5, v3}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    .line 145
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 146
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    goto :goto_3

    .line 147
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v12, v3, v4, v5, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 149
    invoke-virtual {v12, v3, v4, v14, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    .line 150
    :goto_4
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 151
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 152
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Fr()V

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V
    .locals 4

    const-string v0, "cellCollideEnter"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p2}, Lcom/smartisanos/smengine/A;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/smengine/l;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    .line 49
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 50
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->uw()V

    .line 51
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->vw()V

    .line 52
    iget-boolean p2, p0, Lcom/smartisanos/launcher/animations/r;->ml:Z

    if-nez p2, :cond_f

    iget-boolean p2, p0, Lcom/smartisanos/launcher/animations/r;->xl:Z

    if-nez p2, :cond_f

    if-eqz p1, :cond_1

    .line 53
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/animations/r;->Oc(I)V

    goto/16 :goto_0

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->sw()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "cellCollideExit"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 56
    invoke-virtual {p2}, Lcom/smartisanos/smengine/A;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_3

    return-void

    .line 58
    :cond_3
    iget-object p2, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    if-eqz p2, :cond_5

    .line 59
    invoke-virtual {p2}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p2

    .line 60
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/smengine/l;

    .line 62
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    if-ne p2, p1, :cond_f

    if-ne v0, v1, :cond_f

    .line 64
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    .line 65
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->uw()V

    .line 66
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->vw()V

    goto/16 :goto_0

    .line 67
    :cond_4
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    .line 68
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->uw()V

    .line 69
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->vw()V

    goto/16 :goto_0

    .line 70
    :cond_5
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->uw()V

    .line 71
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->vw()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "relayoutByUninstall"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 73
    invoke-virtual {p2}, Lcom/smartisanos/smengine/A;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_7

    return-void

    .line 75
    :cond_7
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 76
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 77
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/g;

    const/4 v1, 0x2

    .line 78
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    .line 79
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, v1, :cond_f

    const p2, 0x3e99999a    # 0.3f

    .line 80
    invoke-virtual {p0, v2, p2, v0, p1}, Lcom/smartisanos/launcher/animations/r;->a(Ljava/util/ArrayList;FLcom/smartisanos/smengine/g;I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "cellIntoFolderArea"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 82
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_9

    sget-object p1, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "#### CELL_INTO_FOLDER_AREA: removeDelayHandleEvent"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 83
    :cond_9
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->uw()V

    .line 84
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->vw()V

    .line 85
    invoke-virtual {p2}, Lcom/smartisanos/smengine/A;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_a

    return-void

    .line 87
    :cond_a
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    .line 88
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/smengine/l;

    .line 89
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    .line 90
    iget-object p2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 92
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez p0, :cond_b

    return-void

    .line 93
    :cond_b
    new-instance p0, Landroid/util/AndroidRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "selectedCell is in folder. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p2}, Lcom/smartisanos/launcher/view/db;->m(Lcom/smartisanos/launcher/view/a/g;)V

    .line 96
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/db;->k(Lcom/smartisanos/launcher/view/a/g;)V

    .line 97
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->tw()V

    .line 98
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_f

    sget-object p0, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "#### CELL_INTO_FOLDER_AREA: generate folder cell"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string p0, "cellExitFolderArea"

    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 100
    invoke-virtual {p2}, Lcom/smartisanos/smengine/A;->getData()Ljava/util/ArrayList;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_e

    return-void

    .line 102
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/db;->dh()V

    :cond_f
    :goto_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;FLcom/smartisanos/smengine/g;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_4

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p4

    instance-of p4, p4, Lcom/smartisanos/launcher/view/b/M;

    if-eqz p4, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result p4

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 14
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 15
    new-instance v5, Lcom/smartisanos/launcher/animations/j;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/animations/j;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    invoke-virtual {v4, p4, v3, v2, v5}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    .line 16
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    goto :goto_0

    .line 17
    :cond_0
    sget-object p4, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relayoutPageCell preParent.getPageView is null waitingUninstallPc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 18
    sget-object p4, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relayoutPageCell preParent.getPageView is null preParent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    sget-boolean p4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "relayoutPageCell APP_UNINSTALL_FROM_TRASH preParent getPageView is null"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p4, p2}, Lcom/smartisanos/launcher/view/b/fa;->J(F)Lcom/smartisanos/smengine/g;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 21
    invoke-virtual {p3, v0, p2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 22
    :cond_3
    iget-object p2, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 23
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 24
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    goto/16 :goto_4

    .line 25
    :cond_4
    sget-boolean p4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p4, :cond_5

    sget-object p4, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "### uninstall type is ADB."

    invoke-virtual {p4, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 26
    :cond_5
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_6

    .line 27
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    move p1, v1

    .line 28
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_b

    .line 29
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v3, :cond_a

    .line 30
    sget v4, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->eb(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 31
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/ga;->Di()I

    .line 32
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 33
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 34
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->kn()V

    .line 35
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_9

    .line 36
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge p1, v4, :cond_8

    move v4, v2

    goto :goto_2

    :cond_8
    move v4, v1

    .line 37
    :goto_2
    invoke-virtual {p0, v3, p3, v4}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/g;Z)V

    goto :goto_3

    .line 38
    :cond_9
    invoke-virtual {p0, v3, p3, v1}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/g;Z)V

    .line 39
    :goto_3
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 40
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 41
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 42
    :cond_b
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/b/fa;->J(F)Lcom/smartisanos/smengine/g;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 43
    invoke-virtual {p3, v0, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 44
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Md()V

    return-void
.end method

.method public b(Lcom/smartisanos/launcher/view/b/M;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/fa;->n(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result p1

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 p1, 0x1000000

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public c(IF)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/animations/r;->wl:I

    .line 3
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/r;->xl:Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/r;->il:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->ml:Z

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->nw()Lcom/smartisanos/smengine/n;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->Al:Lcom/smartisanos/smengine/n;

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->Al:Lcom/smartisanos/smengine/n;

    invoke-virtual {p1, p0, p2}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/n;F)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/r;->ml:Z

    return-void
.end method

.method public c(Lcom/smartisanos/launcher/theme/v;)V
    .locals 2

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/c/k;->clear()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result p1

    .line 12
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->checkCellNumsInSinglePage(I)Z

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unlock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/smartisanos/launcher/animations/c/k;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-direct {v0, p1, v1}, Lcom/smartisanos/launcher/animations/c/k;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    return-void
.end method

.method public c(Lcom/smartisanos/smengine/l;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    const/4 p1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/r;->Oc(I)V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->el:Lcom/smartisanos/launcher/animations/qa;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/qa;->clear()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->el:Lcom/smartisanos/launcher/animations/qa;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/sa;->clear()V

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/c/k;->clear()V

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->gl:Lcom/smartisanos/launcher/animations/c/k;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->hl:Lcom/smartisanos/launcher/animations/oa;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/oa;->clear()V

    .line 13
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->hl:Lcom/smartisanos/launcher/animations/oa;

    .line 14
    :cond_3
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->kl:Lcom/smartisanos/smengine/g;

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->ll:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 17
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ll:Ljava/util/ArrayList;

    .line 18
    :cond_4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    .line 19
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    .line 20
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->pl:Lcom/smartisanos/launcher/view/b/M;

    .line 21
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ql:Lcom/smartisanos/launcher/view/a/g;

    .line 22
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    .line 23
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->sl:Lcom/smartisanos/launcher/view/a/g;

    .line 24
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->tl:Lcom/smartisanos/launcher/view/b/M;

    .line 25
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->ul:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 27
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->ul:Ljava/util/ArrayList;

    .line 28
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->vl:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 30
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->vl:Ljava/util/ArrayList;

    .line 31
    :cond_6
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    .line 32
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->zl:Lcom/smartisanos/smengine/g;

    .line 33
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->Al:Lcom/smartisanos/smengine/n;

    .line 34
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->Bl:Lcom/smartisanos/smengine/n;

    .line 35
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->Cl:Lcom/smartisanos/smengine/n;

    return-void
.end method

.method public e(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 12

    .line 24
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-direct {p0, p1, v6, v9}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/view/a/g;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 27
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    .line 28
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 30
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1, v3}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 31
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 32
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result p1

    .line 33
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v10

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v2

    .line 35
    new-instance v11, Lcom/smartisanos/launcher/animations/sa;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    new-instance v8, Lcom/smartisanos/launcher/animations/c;

    invoke-direct {v8, p0}, Lcom/smartisanos/launcher/animations/c;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    move-object v0, v11

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/launcher/animations/sa;-><init>(Lcom/smartisanos/launcher/view/b/fa;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V

    iput-object v11, p0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/sa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 37
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0, p1, v10}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 38
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    .line 39
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 41
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    :cond_1
    return-void
.end method

.method public f(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Lq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->uw()V

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/l;

    invoke-direct {v1}, Lcom/smartisanos/smengine/l;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v1, p1, v0}, Lcom/smartisanos/smengine/l;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/r;->Oc(I)V

    return-void
.end method

.method public g(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->xp()V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/r;->uw()V

    .line 8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    if-nez v0, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    .line 11
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 14
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 17
    :goto_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->un()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    new-instance v1, Lcom/smartisanos/smengine/l;

    invoke-direct {v1}, Lcom/smartisanos/smengine/l;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v1, p1, v0}, Lcom/smartisanos/smengine/l;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    const/4 p1, 0x1

    .line 20
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/r;->Oc(I)V

    return-void

    .line 21
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### cellIntoDock prepare data,but selected cell parent not found non-empty cell."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public vd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->el:Lcom/smartisanos/launcher/animations/qa;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/qa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/sa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->hl:Lcom/smartisanos/launcher/animations/oa;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/oa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->kl:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_3
    return-void
.end method

.method public wd()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->xl:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->Al:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/r;->ml:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/r;->Al:Lcom/smartisanos/smengine/n;

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->ah()V

    :cond_0
    return-void
.end method

.method public xd()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "################ force collided!!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 5
    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 6
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-gez v3, :cond_0

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 7
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Lh()Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->x:F

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Lh()Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    .line 9
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 10
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 11
    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    cmpg-float v6, v1, v6

    if-gez v6, :cond_1

    div-float v1, v4, v5

    .line 12
    :cond_1
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v4

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    div-float v7, v3, v5

    sub-float/2addr v6, v7

    cmpl-float v6, v1, v6

    if-lez v6, :cond_2

    int-to-float v1, v4

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    .line 13
    :cond_2
    sget-object v3, Lcom/smartisanos/launcher/animations/r;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### screenX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " screenY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 14
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 15
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v5, v5

    invoke-static {v1, v2, v4, v5, v3}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 16
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setFixedCenter(Lcom/smartisanos/smengine/a/j;)V

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_0

    .line 20
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    :goto_0
    const/4 p0, 0x0

    .line 21
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setFixedCenter(Lcom/smartisanos/smengine/a/j;)V

    return-void
.end method

.method protected yd()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 2
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->yl:Lcom/smartisanos/smengine/l;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 5
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 8
    :goto_0
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/smartisanos/launcher/view/b/M;

    .line 9
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/b/M;->un()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    .line 12
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v4

    .line 14
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    :goto_1
    move v14, v2

    move v2, v4

    .line 15
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-direct {v0, v12, v13}, Lcom/smartisanos/launcher/animations/r;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v16

    if-eq v15, v3, :cond_2

    .line 18
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 19
    :cond_2
    new-instance v11, Lcom/smartisanos/launcher/animations/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/16 v17, -0x1

    new-instance v7, Lcom/smartisanos/launcher/animations/o;

    invoke-direct {v7, v0}, Lcom/smartisanos/launcher/animations/o;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    move-object v4, v11

    move-object v6, v3

    move-object/from16 v18, v7

    move-object v7, v15

    move-object/from16 v19, v11

    move/from16 v11, v17

    move-object/from16 v17, v13

    move/from16 v20, v14

    move/from16 v14, v16

    move/from16 v16, v2

    move-object v2, v15

    move-object/from16 v15, v18

    invoke-direct/range {v4 .. v15}, Lcom/smartisanos/launcher/animations/oa;-><init>(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/b/M;IIIILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/smartisanos/smengine/a;)V

    move-object/from16 v4, v19

    iput-object v4, v0, Lcom/smartisanos/launcher/animations/r;->hl:Lcom/smartisanos/launcher/animations/oa;

    if-eq v2, v3, :cond_3

    .line 20
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    :cond_3
    move/from16 v4, v16

    move/from16 v2, v20

    .line 21
    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    const/4 v0, 0x0

    .line 22
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    move-object/from16 v1, v17

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 24
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected zd()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-direct {v0, v7, v10}, Lcom/smartisanos/launcher/animations/r;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v1

    .line 5
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    .line 6
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 7
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/r;->rl:Lcom/smartisanos/launcher/view/b/M;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 9
    :cond_0
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    :cond_1
    move-object v11, v4

    .line 11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v15, 0x0

    if-lez v4, :cond_2

    .line 12
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v12

    .line 13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v13

    .line 14
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v3

    .line 15
    new-instance v14, Lcom/smartisanos/launcher/animations/sa;

    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    new-instance v9, Lcom/smartisanos/launcher/animations/d;

    invoke-direct {v9, v0}, Lcom/smartisanos/launcher/animations/d;-><init>(Lcom/smartisanos/launcher/animations/r;)V

    move-object v1, v14

    move-object v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/smartisanos/launcher/animations/sa;-><init>(Lcom/smartisanos/launcher/view/b/fa;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a;)V

    iput-object v14, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    .line 16
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    const/4 v14, 0x1

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object v3, v15

    move v15, v2

    move-object/from16 v17, v1

    .line 17
    invoke-virtual/range {v11 .. v17}, Lcom/smartisanos/launcher/view/b/M;->a(IIZFLcom/smartisanos/smengine/a;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/launcher/view/a/g;

    .line 18
    iget-object v2, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/sa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v2

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v4, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 19
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/r;->fl:Lcom/smartisanos/launcher/animations/sa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/sa;->Yd()Lcom/smartisanos/smengine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 20
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 21
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    goto :goto_0

    :cond_2
    move-object v3, v15

    .line 22
    invoke-virtual {v11, v1, v2, v5, v3}, Lcom/smartisanos/launcher/view/b/M;->a(IIZLcom/smartisanos/smengine/a;)Lcom/smartisanos/launcher/view/a/g;

    .line 23
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 24
    :cond_3
    iput-object v3, v0, Lcom/smartisanos/launcher/animations/r;->nl:Lcom/smartisanos/launcher/view/b/M;

    .line 25
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->ol:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    return-void
.end method
