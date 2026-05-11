.class public Lcom/smartisanos/launcher/view/d;
.super Ljava/lang/Object;
.source "CellStatus.java"


# instance fields
.field protected Iu:Lcom/smartisanos/smengine/V;

.field protected Ju:Z

.field protected Ku:Lcom/smartisanos/smengine/g;

.field private Lu:Z

.field protected Qj:Lcom/smartisanos/launcher/view/a/g;

.field private log:Lcom/smartisanos/launcher/va;

.field protected mSingleTapListener:Lcom/smartisanos/smengine/fa;

.field protected mTouchListener:Lcom/smartisanos/smengine/ha;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/launcher/view/d;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/d;->Lu:Z

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/d;->Ug()V

    return-void
.end method


# virtual methods
.method public Mg()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    return p0
.end method

.method protected Ng()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_0
    return-void
.end method

.method protected Og()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### up first."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/d;->Tg()V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/d;->Ng()V

    return-void
.end method

.method public Pg()Lcom/smartisanos/smengine/V;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Iu:Lcom/smartisanos/smengine/V;

    return-object p0
.end method

.method public Qg()Lcom/smartisanos/smengine/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    return-object p0
.end method

.method public Rg()Lcom/smartisanos/smengine/ha;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->mTouchListener:Lcom/smartisanos/smengine/ha;

    return-object p0
.end method

.method public S(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/d;->Lu:Z

    return-void
.end method

.method protected Sg()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public Tg()V
    .locals 0

    return-void
.end method

.method protected Ug()V
    .locals 0

    return-void
.end method

.method public a(FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p4}, Lcom/smartisanos/launcher/view/d;->g(FF)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget p3, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget p4, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p2, p3, p4, p1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->mTouchListener:Lcom/smartisanos/smengine/ha;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->Iu:Lcom/smartisanos/smengine/V;

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    return-void
.end method

.method public g(FF)Lcom/smartisanos/smengine/a/j;
    .locals 5

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 4
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v4, v3, Lcom/smartisanos/smengine/SceneNode;->mDragPointX:F

    sub-float/2addr p1, v4

    .line 5
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, p2

    iget p2, v3, Lcom/smartisanos/smengine/SceneNode;->mDragPointY:F

    sub-float/2addr v4, p2

    const/4 p2, 0x0

    .line 6
    invoke-virtual {v2, p1, v4, p2}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 7
    iget-object p1, v1, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v2

    .line 11
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_0

    const/high16 p2, 0x41200000    # 10.0f

    .line 12
    iget-object v3, v1, Lcom/smartisanos/smengine/d/f;->hY:Lcom/smartisanos/smengine/a/j;

    .line 13
    invoke-virtual {p0, p1, v3}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 14
    iget p0, v3, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p0, p2

    div-float/2addr p0, v2

    .line 15
    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    .line 16
    iget v2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v2, p0

    iget p0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr p0, v3

    invoke-virtual {v0, v2, p0, p2}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f866666    # 1.05f

    invoke-virtual {p0, v3, p2, v2, v4}, Lcom/smartisanos/launcher/view/b/fa;->f(FFFF)F

    move-result p0

    .line 18
    iget p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v0, p2, p1, p0}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 19
    :goto_0
    invoke-virtual {v1}, Lcom/smartisanos/smengine/d/f;->release()V

    return-object v0
.end method

.method protected h(FF)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->yh()Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->LAUNCHPAD_DOCK_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v0, v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/a/g;->Va(Z)V

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lcom/smartisanos/launcher/Qa;->a(Landroid/content/Context;Ljava/util/ArrayList;FF)V

    .line 9
    instance-of p1, p0, Lcom/smartisanos/launcher/view/l;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Yl()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/smartisanos/launcher/view/a/X;->da(Z)V

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/d;->Tg()V

    return-void

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/a/g;->u(Lcom/smartisanos/launcher/view/a/g;)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->il()V

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/a/g;->u(Lcom/smartisanos/launcher/view/a/g;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->il()V

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/a/g;->u(Lcom/smartisanos/launcher/view/a/g;)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->il()V

    .line 18
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/d;->Tg()V

    .line 19
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/d;->Lu:Z

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/d;->Ng()V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/d;->Lu:Z

    :cond_5
    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_7

    .line 3
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->d(Lcom/smartisanos/smengine/Fa;)V

    return v2

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_7

    .line 5
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->b(Lcom/smartisanos/smengine/Fa;)V

    return v2

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    if-eqz p0, :cond_7

    .line 7
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/fa;->g(Lcom/smartisanos/smengine/Fa;)V

    goto :goto_0

    .line 8
    :cond_3
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_4

    invoke-static {v2}, Lcom/smartisanos/launcher/Qa;->r(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    .line 9
    :cond_4
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/smartisanos/launcher/view/d;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "CellStatusForDock TouchEvent.GESTURE_LONG_PRESSED mSomethingIsFloat set true"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/d;->Sg()Z

    goto :goto_0

    .line 12
    :cond_6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_7

    .line 13
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->d(Lcom/smartisanos/smengine/Fa;)V

    return v2

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
