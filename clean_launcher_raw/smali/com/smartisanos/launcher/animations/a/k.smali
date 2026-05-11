.class public Lcom/smartisanos/launcher/animations/a/k;
.super Lcom/smartisanos/launcher/animations/a/i;
.source "PageScrollAnimationDefault.java"


# instance fields
.field private ip:Lcom/smartisanos/smengine/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/Runnable;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x400000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 7
    new-instance v10, Lcom/smartisanos/smengine/oa;

    invoke-direct {v10, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v10, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const v2, 0x3e4ccccd    # 0.2f

    .line 9
    invoke-virtual {v10, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v2, 0xe

    .line 10
    invoke-virtual {v10, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    const/4 v3, 0x1

    .line 12
    iget v4, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v2, v10

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v10}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/animations/a/j;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/launcher/animations/a/j;-><init>(Lcom/smartisanos/launcher/animations/a/k;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public me()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/a/k;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ne()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public se()F
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/a/i;->se()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/k;->ue()V

    return v0
.end method

.method public te()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Oo:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/a/i;->To:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    cmpl-float v5, v0, v4

    if-ltz v5, :cond_0

    .line 3
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    const/high16 v5, -0x40800000    # -1.0f

    sub-float/2addr v5, v0

    iget v6, p0, Lcom/smartisanos/launcher/animations/a/i;->Ro:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {v1, v5, v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Wo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 7
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    neg-float v5, v0

    iget v6, p0, Lcom/smartisanos/launcher/animations/a/i;->Ro:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {v1, v5, v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Xo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_4

    cmpl-float v5, v0, v4

    if-ltz v5, :cond_3

    .line 12
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->Ro:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/smartisanos/launcher/animations/a/i;->So:F

    invoke-virtual {v1, v2, v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/i;->Yo:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected ue()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 6
    new-instance v10, Lcom/smartisanos/smengine/oa;

    invoke-direct {v10, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v10, v2}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const v2, 0x3dcccccd    # 0.1f

    .line 8
    invoke-virtual {v10, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v2, 0xe

    .line 9
    invoke-virtual {v10, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 10
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    const/4 v3, 0x1

    .line 11
    iget v4, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->z:F

    const v7, 0x3f7d70a4    # 0.99f

    const v8, 0x3f7d70a4    # 0.99f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v2, v10

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v10}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/k;->ip:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method
