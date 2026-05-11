.class Lcom/smartisanos/launcher/view/e;
.super Ljava/lang/Object;
.source "CellStatusForDock.java"

# interfaces
.implements Lcom/smartisanos/smengine/ha;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/l;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/Fa;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Kd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "## Poweroff first!!!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "dockCellUpAnimation is not null, return !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v1, "]"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on up info, time ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "], X ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "], Y ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 7
    :cond_3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cell onUp pkg ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], appName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/d;->h(FF)V

    return-void
.end method

.method public d(Lcom/smartisanos/smengine/Fa;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getDeltaX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getDeltaY()F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v5, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr v0, v6

    add-float/2addr v5, v0

    iget v0, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v4, v5, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/X;->za(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->qm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/X;->d(Lcom/smartisanos/smengine/g;F)V

    .line 11
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ns()F

    move-result v2

    .line 14
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Os()F

    move-result p1

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v3

    new-instance v4, Lcom/smartisanos/smengine/a/j;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v1, "######## into trash"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 17
    new-instance p1, Lcom/smartisanos/smengine/l;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p1, v1, v0}, Lcom/smartisanos/smengine/l;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Sc;->f(Lcom/smartisanos/smengine/l;)I

    .line 19
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-nez p1, :cond_5

    .line 20
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v1, "setWaitingUninstallCell ... "

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 21
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-nez p1, :cond_3

    .line 22
    iget-object p0, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 24
    iget-object p0, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_0

    .line 25
    :cond_4
    new-instance p1, Lcom/smartisanos/smengine/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/e;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/smengine/l;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 26
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Sc;->g(Lcom/smartisanos/smengine/l;)I

    .line 27
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public f(Lcom/smartisanos/smengine/Fa;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "onDown begin"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
