.class public Lcom/smartisanos/launcher/view/b/ra;
.super Lcom/smartisanos/smengine/SceneNode;
.source "SwitchPageNode.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Bd:F

.field private Cd:F

.field private En:I

.field dl:Lcom/smartisanos/launcher/view/b/fa;

.field private fR:Lcom/smartisanos/launcher/view/b/M;

.field private gR:Lcom/smartisanos/launcher/animations/fb;

.field private hR:Ljava/util/ArrayList;

.field private iR:Ljava/util/ArrayList;

.field private jR:Ljava/util/ArrayList;

.field private kM:Lcom/smartisanos/launcher/view/b/M;

.field private kR:Ljava/util/ArrayList;

.field private lR:Ljava/util/ArrayList;

.field private mNotificationManager:Lcom/smartisanos/smengine/C;

.field private nR:Z

.field private oR:Z

.field private pR:Lcom/smartisanos/smengine/a/j;

.field private qR:Lcom/smartisanos/smengine/g;

.field private rR:Lcom/smartisanos/launcher/view/b/M;

.field private sR:Lcom/smartisanos/smengine/g;

.field private tR:Lcom/smartisanos/smengine/n;

.field private tl:Lcom/smartisanos/launcher/view/b/M;

.field private uR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/b/ra;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->hR:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->iR:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->kR:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->lR:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ra;->nR:Z

    .line 8
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ra;->oR:Z

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->pR:Lcom/smartisanos/smengine/a/j;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->tR:Lcom/smartisanos/smengine/n;

    .line 11
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ra;->uR:Z

    .line 12
    new-instance p1, Lcom/smartisanos/launcher/view/b/qa;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/b/qa;-><init>(Lcom/smartisanos/launcher/view/b/ra;)V

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 13
    new-instance p1, Lcom/smartisanos/launcher/view/b/pa;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/b/pa;-><init>(Lcom/smartisanos/launcher/view/b/ra;)V

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    return-void
.end method

.method private Sg()V
    .locals 0

    return-void
.end method

.method private Uz()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->gR:Lcom/smartisanos/launcher/animations/fb;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Yz()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 5
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->hR:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/j;

    .line 7
    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v6, v2, v3, v1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->j(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/b/ra;->nR:Z

    .line 12
    new-instance v0, Lcom/smartisanos/launcher/animations/fb;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ra;->kR:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/ra;->lR:Ljava/util/ArrayList;

    iget v7, p0, Lcom/smartisanos/launcher/view/b/ra;->En:I

    new-instance v8, Lcom/smartisanos/launcher/view/b/ma;

    invoke-direct {v8, p0}, Lcom/smartisanos/launcher/view/b/ma;-><init>(Lcom/smartisanos/launcher/view/b/ra;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/launcher/animations/fb;-><init>(Lcom/smartisanos/launcher/view/b/fa;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/a/j;ILcom/smartisanos/smengine/a;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->gR:Lcom/smartisanos/launcher/animations/fb;

    :cond_0
    return-void
.end method

.method private Vz()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->tR:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->tR:Lcom/smartisanos/smengine/n;

    return-void
.end method

.method private Wz()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/b/la;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/b/la;-><init>(Lcom/smartisanos/launcher/view/b/ra;I)V

    return-object v0
.end method

.method private Xz()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/view/b/ra;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### page in window size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/view/b/ra;->Bd:F

    .line 4
    iget v2, p0, Lcom/smartisanos/launcher/view/b/ra;->Cd:F

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    move v1, v3

    .line 5
    :cond_0
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v4

    sub-float/2addr v5, v3

    cmpl-float v5, v1, v5

    if-lez v5, :cond_1

    int-to-float v1, v4

    sub-float/2addr v1, v3

    .line 6
    :cond_1
    sget-object v3, Lcom/smartisanos/launcher/view/b/ra;->log:Lcom/smartisanos/launcher/va;

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

    .line 7
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 8
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v5, v5

    invoke-static {v1, v2, v4, v5, v3}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 9
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 11
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->pR:Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 15
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v4

    .line 16
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 17
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 18
    :goto_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/b/ra;->pR:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ra;->pR:Lcom/smartisanos/smengine/a/j;

    .line 19
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 20
    :cond_3
    iput-object v3, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    .line 21
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    if-ne v3, v4, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    if-nez v0, :cond_7

    .line 23
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/smartisanos/launcher/view/b/ra;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "mCurrentCollidedPage == null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 24
    :cond_6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Vz()V

    return-void

    .line 25
    :cond_7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    if-eq v0, v1, :cond_8

    .line 26
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/b/ra;->nR:Z

    if-nez v1, :cond_8

    .line 27
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->rR:Lcom/smartisanos/launcher/view/b/M;

    .line 28
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Uz()V

    :cond_8
    return-void
.end method

.method private Yz()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->kR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->lR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    const/4 v3, 0x0

    .line 5
    iput v3, p0, Lcom/smartisanos/launcher/view/b/ra;->En:I

    add-int/2addr v1, v2

    :goto_0
    if-gt v1, v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ra;->kR:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ra;->lR:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput v2, p0, Lcom/smartisanos/launcher/view/b/ra;->En:I

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v3, :cond_2

    sub-int/2addr v1, v2

    :goto_1
    if-lt v1, v0, :cond_1

    .line 11
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 12
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ra;->kR:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ra;->lR:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, " ### generateDataList, mcurrentCollidePage == null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private Zz()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->ur()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->hR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->iR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/ra;->hR:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 9
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->iR:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/launcher/animations/fb;)Lcom/smartisanos/launcher/animations/fb;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->gR:Lcom/smartisanos/launcher/animations/fb;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->qR:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/ra;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Uz()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/ra;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/b/ra;->uc(Z)V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->rR:Lcom/smartisanos/launcher/view/b/M;

    return-object p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->sR:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/b/ra;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->kR:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/b/ra;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ra;->oR:Z

    return p1
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/b/ra;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ra;->nR:Z

    return p1
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/b/ra;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/b/ra;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Vz()V

    return-void
.end method

.method static synthetic f(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->kM:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/view/b/ra;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->lR:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic h(Lcom/smartisanos/launcher/view/b/ra;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/ra;->En:I

    return p0
.end method

.method static synthetic i(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/launcher/animations/fb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->gR:Lcom/smartisanos/launcher/animations/fb;

    return-object p0
.end method

.method static synthetic j(Lcom/smartisanos/launcher/view/b/ra;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Xz()V

    return-void
.end method

.method static synthetic k(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/smengine/C;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->mx()Lcom/smartisanos/smengine/C;

    move-result-object p0

    return-object p0
.end method

.method private mx()Lcom/smartisanos/smengine/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->mNotificationManager:Lcom/smartisanos/smengine/C;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->mNotificationManager:Lcom/smartisanos/smengine/C;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->mNotificationManager:Lcom/smartisanos/smengine/C;

    return-object p0
.end method

.method private u(F)I
    .locals 1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->l(F)I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x42480000    # 50.0f

    cmpg-float v0, p1, p0

    if-gez v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    sub-float/2addr v0, p0

    cmpl-float p0, p1, v0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private uc(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/tc;->rb(Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/ka;->rb(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/Z;->fa(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->uw:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->vn()Lcom/smartisanos/smengine/F;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 14
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    iget v0, v0, Lcom/smartisanos/launcher/view/lb;->yw:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->vn()Lcom/smartisanos/smengine/F;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 20
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic y()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/b/ra;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/view/b/M;FF)Z
    .locals 4

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->n(Z)V

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/smartisanos/launcher/view/b/ra;->Bd:F

    .line 8
    iput v1, p0, Lcom/smartisanos/launcher/view/b/ra;->Cd:F

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/b/ra;->uR:Z

    .line 10
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->kM:Lcom/smartisanos/launcher/view/b/M;

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->kM:Lcom/smartisanos/launcher/view/b/M;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    .line 12
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    .line 14
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zg()V

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Zz()V

    .line 18
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 19
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->kM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 20
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 22
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 23
    invoke-virtual {v2, p1, v3}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 24
    iget v2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, v2, v3, p1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 25
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 26
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/launcher/view/b/ra;->u(FF)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/ra;->sR:Lcom/smartisanos/smengine/g;

    const p3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, p2, p3, v1}, Lcom/smartisanos/launcher/view/b/M;->l(Lcom/smartisanos/smengine/g;FF)V

    .line 28
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->kM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    .line 29
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_1

    .line 30
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/b/ra;->uc(Z)V

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->kM:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/a;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 32
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->sR:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return v0
.end method

.method public b(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-void
.end method

.method public clear(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->mNotificationManager:Lcom/smartisanos/smengine/C;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->gR:Lcom/smartisanos/launcher/animations/fb;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/fb;->clear()V

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->gR:Lcom/smartisanos/launcher/animations/fb;

    .line 7
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->hR:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->hR:Ljava/util/ArrayList;

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->iR:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 13
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->iR:Ljava/util/ArrayList;

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 16
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->kR:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 19
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->kR:Ljava/util/ArrayList;

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->lR:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 22
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->lR:Ljava/util/ArrayList;

    .line 23
    :cond_5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->pR:Lcom/smartisanos/smengine/a/j;

    .line 24
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->qR:Lcom/smartisanos/smengine/g;

    .line 25
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->rR:Lcom/smartisanos/launcher/view/b/M;

    .line 26
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->sR:Lcom/smartisanos/smengine/g;

    .line 27
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 29
    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->kM:Lcom/smartisanos/launcher/view/b/M;

    .line 30
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public es()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/ra;->uR:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/b/ra;->uR:Z

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lcom/smartisanos/smengine/ha;->b(Lcom/smartisanos/smengine/Fa;)V

    :cond_1
    return-void
.end method

.method public fs()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->qR:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_0
    return-void
.end method

.method public g(FFFF)V
    .locals 4

    .line 2
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ra;->uR:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput p3, p0, Lcom/smartisanos/launcher/view/b/ra;->Bd:F

    .line 4
    iput p4, p0, Lcom/smartisanos/launcher/view/b/ra;->Cd:F

    .line 5
    iget p1, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointX:F

    sub-float p1, p3, p1

    sget p2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 6
    sget p2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointY:F

    add-float/2addr p4, v1

    sub-float/2addr v0, p4

    .line 7
    div-int/lit8 p4, p2, 0x2

    int-to-float p4, p4

    cmpl-float p4, v0, p4

    if-lez p4, :cond_1

    .line 8
    div-int/lit8 p2, p2, 0x2

    :goto_0
    int-to-float v0, p2

    goto :goto_1

    :cond_1
    neg-int p4, p2

    .line 9
    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    cmpg-float p4, v0, p4

    if-gez p4, :cond_2

    neg-int p2, p2

    .line 10
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object p2

    .line 13
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object p4

    .line 14
    iget-object v1, p4, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 15
    iget-object v2, p4, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, p1, v0, v3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 17
    invoke-virtual {p2, v2, v1}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 18
    iget p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, p2, p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 19
    invoke-virtual {p4}, Lcom/smartisanos/smengine/d/f;->release()V

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 21
    invoke-direct {p0, p3}, Lcom/smartisanos/launcher/view/b/ra;->u(F)I

    move-result p1

    .line 22
    iget-boolean p2, p0, Lcom/smartisanos/launcher/view/b/ra;->nR:Z

    const/4 p3, 0x0

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/smartisanos/launcher/view/b/ra;->oR:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_3

    .line 23
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Vz()V

    goto :goto_2

    .line 24
    :cond_3
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/animations/r;->Id()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 25
    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/ra;->rR:Lcom/smartisanos/launcher/view/b/M;

    .line 26
    :cond_4
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/view/b/fa;->Sb(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 27
    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/ra;->rR:Lcom/smartisanos/launcher/view/b/M;

    return-void

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 30
    iget-object p4, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p4, p2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 31
    iget-object p4, p0, Lcom/smartisanos/launcher/view/b/ra;->pR:Lcom/smartisanos/smengine/a/j;

    iget v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {p4, v0, p2, v3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 32
    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    const/4 p2, 0x0

    .line 33
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_b

    .line 34
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/smartisanos/launcher/view/b/M;

    .line 35
    invoke-virtual {p4}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v0

    .line 36
    invoke-virtual {p4}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 37
    invoke-virtual {p4}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, p3

    :goto_4
    if-eqz v0, :cond_8

    .line 38
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->pR:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->pR:Lcom/smartisanos/smengine/a/j;

    .line 39
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    :cond_9
    iput-object p4, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    .line 41
    iget-object p4, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    if-ne p4, v0, :cond_b

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 42
    :cond_b
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    if-nez p1, :cond_d

    .line 43
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_c

    sget-object p1, Lcom/smartisanos/launcher/view/b/ra;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "mCurrentCollidedPage == null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 44
    :cond_c
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Vz()V

    return-void

    .line 45
    :cond_d
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    if-eq p1, p2, :cond_f

    .line 46
    iget-object p2, p0, Lcom/smartisanos/launcher/view/b/ra;->rR:Lcom/smartisanos/launcher/view/b/M;

    if-eq p2, p1, :cond_e

    .line 47
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Vz()V

    .line 48
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ra;->nR:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/b/ra;->oR:Z

    if-nez p1, :cond_f

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-nez p1, :cond_f

    .line 49
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->tl:Lcom/smartisanos/launcher/view/b/M;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->rR:Lcom/smartisanos/launcher/view/b/M;

    .line 50
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Wz()Lcom/smartisanos/smengine/n;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->tR:Lcom/smartisanos/smengine/n;

    .line 51
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->tR:Lcom/smartisanos/smengine/n;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p0, p2}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/n;F)V

    goto :goto_5

    .line 52
    :cond_e
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_f

    sget-object p0, Lcom/smartisanos/launcher/view/b/ra;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "### mPreCollidedPage == mCurrentCollidedPage ...."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public gs()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->sR:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_0
    return-void
.end method

.method public hs()Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method public is()V
    .locals 0

    return-void
.end method

.method public js()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/b/ra;->oR:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public ks()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/b/ra;->nR:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public ls()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->jR:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->hR:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/j;

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->qR:Lcom/smartisanos/smengine/g;

    .line 5
    new-instance v1, Lcom/smartisanos/smengine/oa;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v10, 0x3ecccccd    # 0.4f

    .line 6
    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v2, 0xe

    .line 7
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/b/ra;->oR:Z

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 10
    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->z:F

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v0, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v3, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/ra;->qR:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v10, v3}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/smengine/g;FF)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->qR:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->qR:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/b/na;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/b/na;-><init>(Lcom/smartisanos/launcher/view/b/ra;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->qR:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isUserInteractionEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ks()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ls()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_6

    .line 5
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->d(Lcom/smartisanos/smengine/Fa;)V

    return v2

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_6

    .line 7
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->b(Lcom/smartisanos/smengine/Fa;)V

    return v2

    .line 8
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    if-eqz p0, :cond_6

    .line 9
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/fa;->g(Lcom/smartisanos/smengine/Fa;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/ra;->Sg()V

    goto :goto_0

    .line 11
    :cond_5
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_6

    .line 12
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->d(Lcom/smartisanos/smengine/Fa;)V

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public u(FF)V
    .locals 11

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->sR:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 6
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->sR:Lcom/smartisanos/smengine/g;

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, p0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v1, 0x3e4ccccd    # 0.2f

    .line 8
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v1, 0xe

    .line 9
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 12
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 14
    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v4, 0x42700000    # 60.0f

    sub-float v5, v1, v4

    div-float/2addr v5, v1

    sub-float v6, v1, v4

    div-float/2addr v6, v1

    .line 15
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    iget v7, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v7, v5

    iget v5, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v5, v6

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    add-float/2addr v2, v4

    invoke-direct {v1, v7, v5, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 18
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 19
    invoke-virtual {v2, v1, v4}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    .line 20
    iget v5, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v3, Lcom/smartisanos/smengine/a/j;->z:F

    iget v8, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v4, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v1, v0

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ra;->sR:Lcom/smartisanos/smengine/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ra;->sR:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/b/oa;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartisanos/launcher/view/b/oa;-><init>(Lcom/smartisanos/launcher/view/b/ra;FF)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    return-void
.end method

.method public x(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ra;->fR:Lcom/smartisanos/launcher/view/b/M;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    :cond_0
    return-void
.end method
