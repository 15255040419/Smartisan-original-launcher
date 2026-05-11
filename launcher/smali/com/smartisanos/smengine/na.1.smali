.class public final Lcom/smartisanos/smengine/na;
.super Ljava/lang/Object;
.source "SceneNodeTweenAnimation.java"


# instance fields
.field private ZR:Lcom/smartisanos/smengine/a/j;

.field private _R:F

.field private aS:F

.field private bS:F

.field private cS:F

.field private dS:F

.field private eS:Lcom/smartisanos/smengine/a/j;

.field private fS:Lcom/smartisanos/smengine/a/k;

.field private gS:Lcom/smartisanos/smengine/a/i;

.field private hS:Lcom/smartisanos/smengine/SceneNode;

.field private iS:Lcom/smartisanos/smengine/a/j;

.field private jS:Z

.field private kS:Z

.field private lS:Lcom/smartisanos/smengine/a;

.field private mAngle:F

.field private mS:Z

.field private mScale:Lcom/smartisanos/smengine/a/j;

.field private nS:Lcom/smartisanos/smengine/a/k;

.field private oS:Lcom/smartisanos/smengine/a/k;

.field private pS:Lcom/smartisanos/smengine/a/k;

.field private qS:Lcom/smartisanos/smengine/a/k;

.field private rS:Z

.field private sS:Lcom/smartisanos/smengine/a/k;


# direct methods
.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;FFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/na;->ZR:Lcom/smartisanos/smengine/a/j;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/na;->mScale:Lcom/smartisanos/smengine/a/j;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/na;->eS:Lcom/smartisanos/smengine/a/j;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/na;->fS:Lcom/smartisanos/smengine/a/k;

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/na;->gS:Lcom/smartisanos/smengine/a/i;

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/na;->iS:Lcom/smartisanos/smengine/a/j;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/smengine/na;->jS:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/smengine/na;->mS:Z

    .line 10
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/na;->nS:Lcom/smartisanos/smengine/a/k;

    .line 11
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/na;->oS:Lcom/smartisanos/smengine/a/k;

    .line 12
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/na;->pS:Lcom/smartisanos/smengine/a/k;

    .line 13
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/na;->qS:Lcom/smartisanos/smengine/a/k;

    .line 14
    iput-boolean v0, p0, Lcom/smartisanos/smengine/na;->rS:Z

    .line 15
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/na;->sS:Lcom/smartisanos/smengine/a/k;

    .line 16
    iput-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    .line 17
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->iS:Lcom/smartisanos/smengine/a/j;

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 19
    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 20
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 21
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->eS:Lcom/smartisanos/smengine/a/j;

    iput p2, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 22
    iput p3, p0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 23
    iput p4, p0, Lcom/smartisanos/smengine/a/j;->z:F

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/smengine/na;Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->lS:Lcom/smartisanos/smengine/a;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/smengine/na;Lcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/na;->lS:Lcom/smartisanos/smengine/a;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/smengine/na;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/smengine/na;->kS:Z

    return p1
.end method

.method static synthetic b(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/smengine/na;)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->iS:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method


# virtual methods
.method public Qb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/na;->mS:Z

    return-void
.end method

.method public Rb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/na;->jS:Z

    return-void
.end method

.method public a(FFFFZ)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->fS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 16
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_2

    .line 17
    iget-boolean p5, p0, Lcom/smartisanos/smengine/na;->rS:Z

    if-eqz p5, :cond_0

    .line 18
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/L;->Ik()Lcom/smartisanos/smengine/a/k;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    goto :goto_1

    .line 20
    :cond_0
    iget-boolean p5, p0, Lcom/smartisanos/smengine/na;->mS:Z

    if-eqz p5, :cond_1

    .line 21
    iget-object p5, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget-object v0, p0, Lcom/smartisanos/smengine/na;->sS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p5, v0}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 22
    iget-object p5, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget-object v0, p0, Lcom/smartisanos/smengine/na;->sS:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    mul-float/2addr v1, p1

    iget p1, v0, Lcom/smartisanos/smengine/a/k;->y:F

    mul-float/2addr p1, p2

    iget p2, v0, Lcom/smartisanos/smengine/a/k;->z:F

    mul-float/2addr p2, p3

    iget p3, v0, Lcom/smartisanos/smengine/a/k;->w:F

    mul-float/2addr p3, p4

    invoke-virtual {p5, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p5, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 24
    :goto_0
    iget-boolean p1, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p1, :cond_2

    .line 25
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget-object p0, p0, Lcom/smartisanos/smengine/na;->fS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->onUpdateModulateColor(Lcom/smartisanos/smengine/a/k;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(FFFZ)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->mScale:Lcom/smartisanos/smengine/a/j;

    iput p1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 6
    iput p2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 7
    iput p3, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 8
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 9
    iget-boolean p4, p0, Lcom/smartisanos/smengine/na;->jS:Z

    if-eqz p4, :cond_0

    .line 10
    iget-object p4, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget-object v0, p0, Lcom/smartisanos/smengine/na;->iS:Lcom/smartisanos/smengine/a/j;

    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v1, p1

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v2, p2

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    mul-float/2addr v0, p3

    invoke-virtual {p4, v1, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p4, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p4, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 12
    :goto_0
    iget-object p4, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 13
    iget-boolean p4, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p4, :cond_1

    .line 14
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->onUpdateScale(FFF)V

    :cond_1
    return-void
.end method

.method public b(FFFFZ)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->pS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 18
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 19
    iget-object p5, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowAlphaRange_H(FFFF)V

    .line 20
    iget-boolean p1, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget-object p0, p0, Lcom/smartisanos/smengine/na;->pS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->onUpdateInnerShadowAlphaRangeH(Lcom/smartisanos/smengine/a/k;)V

    :cond_0
    return-void
.end method

.method public b(FFFZ)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->ZR:Lcom/smartisanos/smengine/a/j;

    iput p1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 10
    iput p2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 11
    iput p3, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 12
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    .line 13
    iget-object p4, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p4, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 14
    iget-object p4, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 15
    iget-boolean p4, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p4, :cond_0

    .line 16
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->onUpdateTranslate(FFF)V

    :cond_0
    return-void
.end method

.method public b(FFZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->gS:Lcom/smartisanos/smengine/a/i;

    iput p1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 3
    iput p2, v0, Lcom/smartisanos/smengine/a/i;->y:F

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p3}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 v0, 0x6

    .line 6
    iget-object v1, p0, Lcom/smartisanos/smengine/na;->gS:Lcom/smartisanos/smengine/a/i;

    invoke-virtual {p3, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 7
    :cond_0
    iget-boolean p3, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p3, :cond_1

    .line 8
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->onUpdateTexCoordXY(FF)V

    :cond_1
    return-void
.end method

.method public c(FFFFZ)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->qS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 10
    iget-object p5, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowAlphaRange_V(FFFF)V

    .line 11
    iget-boolean p1, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget-object p0, p0, Lcom/smartisanos/smengine/na;->qS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->onUpdateInnerShadowAlphaRangeH(Lcom/smartisanos/smengine/a/k;)V

    :cond_0
    return-void
.end method

.method public c(FZ)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/na;->mAngle:F

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget-object v0, p0, Lcom/smartisanos/smengine/na;->eS:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 5
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 6
    iget-boolean p2, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget-object p0, p0, Lcom/smartisanos/smengine/na;->eS:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, p1, p0}, Lcom/smartisanos/smengine/SceneNode;->onUpdateRotate(FLcom/smartisanos/smengine/a/j;)V

    :cond_0
    return-void
.end method

.method public d(FFFFZ)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->nS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 9
    iget-object p5, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowSize_H(FFFF)V

    .line 10
    iget-boolean p1, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget-object p0, p0, Lcom/smartisanos/smengine/na;->nS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->onUpdateInnerShadowSizeH(Lcom/smartisanos/smengine/a/k;)V

    :cond_0
    return-void
.end method

.method public d(FZ)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/na;->cS:F

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/SceneNode;->setSkewX(F)V

    .line 4
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 5
    iget-boolean p2, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p2, :cond_0

    .line 6
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateSkewX(F)V

    :cond_0
    return-void
.end method

.method public e(FFFFZ)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->oS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 9
    iget-object p5, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowSize_V(FFFF)V

    .line 10
    iget-boolean p1, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget-object p0, p0, Lcom/smartisanos/smengine/na;->oS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->onUpdateInnerShadowSizeV(Lcom/smartisanos/smengine/a/k;)V

    :cond_0
    return-void
.end method

.method public e(FZ)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/na;->dS:F

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/SceneNode;->setSkewY(F)V

    .line 4
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 5
    iget-boolean p2, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p2, :cond_0

    .line 6
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateSkewY(F)V

    :cond_0
    return-void
.end method

.method public f(FZ)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/na;->_R:F

    .line 2
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget v0, p0, Lcom/smartisanos/smengine/na;->_R:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p2, v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 5
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 6
    iget-boolean p2, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget p0, p0, Lcom/smartisanos/smengine/na;->_R:F

    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p2, p0, v0, p1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateTranslate(FFF)V

    :cond_0
    return-void
.end method

.method public g(FZ)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/na;->aS:F

    .line 2
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/na;->aS:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p2, v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 5
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 6
    iget-boolean p2, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget p0, p0, Lcom/smartisanos/smengine/na;->aS:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p2, v0, p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateTranslate(FFF)V

    :cond_0
    return-void
.end method

.method public getScale()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->mScale:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public getTranslateX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/na;->_R:F

    return p0
.end method

.method public getTranslateY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/na;->aS:F

    return p0
.end method

.method public h(FZ)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/na;->bS:F

    .line 2
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, p0, Lcom/smartisanos/smengine/na;->bS:F

    invoke-virtual {p2, v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 5
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 6
    iget-boolean p2, p0, Lcom/smartisanos/smengine/na;->kS:Z

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p0, p0, Lcom/smartisanos/smengine/na;->bS:F

    invoke-virtual {p2, v0, p1, p0}, Lcom/smartisanos/smengine/SceneNode;->onUpdateTranslate(FFF)V

    :cond_0
    return-void
.end method

.method public j(Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/na;->eS:Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public ps()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/na;->mAngle:F

    return p0
.end method

.method public qs()Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->fS:Lcom/smartisanos/smengine/a/k;

    return-object p0
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->ZR:Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iput v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 3
    iput v1, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->mScale:Lcom/smartisanos/smengine/a/j;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 5
    iput v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 6
    iput v1, p0, Lcom/smartisanos/smengine/na;->_R:F

    .line 7
    iput v1, p0, Lcom/smartisanos/smengine/na;->aS:F

    .line 8
    iput v1, p0, Lcom/smartisanos/smengine/na;->bS:F

    .line 9
    iput v1, p0, Lcom/smartisanos/smengine/na;->mAngle:F

    .line 10
    iput v1, p0, Lcom/smartisanos/smengine/na;->cS:F

    .line 11
    iput v1, p0, Lcom/smartisanos/smengine/na;->dS:F

    .line 12
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->eS:Lcom/smartisanos/smengine/a/j;

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 13
    iput v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 14
    iput v2, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 15
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->fS:Lcom/smartisanos/smengine/a/k;

    iput v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    .line 16
    iput v1, v0, Lcom/smartisanos/smengine/a/k;->y:F

    .line 17
    iput v1, v0, Lcom/smartisanos/smengine/a/k;->z:F

    .line 18
    iput v1, v0, Lcom/smartisanos/smengine/a/k;->w:F

    .line 19
    iget-object v0, p0, Lcom/smartisanos/smengine/na;->gS:Lcom/smartisanos/smengine/a/i;

    iput v1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 20
    iput v1, v0, Lcom/smartisanos/smengine/a/i;->y:F

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/smartisanos/smengine/na;->hS:Lcom/smartisanos/smengine/SceneNode;

    .line 22
    iget-object v2, p0, Lcom/smartisanos/smengine/na;->iS:Lcom/smartisanos/smengine/a/j;

    iput v1, v2, Lcom/smartisanos/smengine/a/j;->x:F

    .line 23
    iput v1, v2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 24
    iput v1, v2, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/smartisanos/smengine/na;->jS:Z

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/smartisanos/smengine/na;->kS:Z

    .line 27
    iget-object v1, p0, Lcom/smartisanos/smengine/na;->nS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/k;->Gt()Lcom/smartisanos/smengine/a/k;

    .line 28
    iget-object v1, p0, Lcom/smartisanos/smengine/na;->oS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/k;->Gt()Lcom/smartisanos/smengine/a/k;

    .line 29
    iget-object v1, p0, Lcom/smartisanos/smengine/na;->pS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/k;->Gt()Lcom/smartisanos/smengine/a/k;

    .line 30
    iget-object v1, p0, Lcom/smartisanos/smengine/na;->qS:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/k;->Gt()Lcom/smartisanos/smengine/a/k;

    .line 31
    iput-object v0, p0, Lcom/smartisanos/smengine/na;->lS:Lcom/smartisanos/smengine/a;

    return-void
.end method

.method public rs()Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->pS:Lcom/smartisanos/smengine/a/k;

    return-object p0
.end method

.method public ss()Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->qS:Lcom/smartisanos/smengine/a/k;

    return-object p0
.end method

.method public ts()Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->nS:Lcom/smartisanos/smengine/a/k;

    return-object p0
.end method

.method public us()Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->oS:Lcom/smartisanos/smengine/a/k;

    return-object p0
.end method

.method public vs()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/na;->cS:F

    return p0
.end method

.method public ws()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/na;->dS:F

    return p0
.end method

.method public xs()Lcom/smartisanos/smengine/a/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->gS:Lcom/smartisanos/smengine/a/i;

    return-object p0
.end method

.method public ys()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/na;->ZR:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public zs()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/na;->bS:F

    return p0
.end method
