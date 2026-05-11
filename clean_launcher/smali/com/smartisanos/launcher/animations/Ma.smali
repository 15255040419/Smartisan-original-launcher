.class Lcom/smartisanos/launcher/animations/Ma;
.super Lcom/smartisanos/smengine/a;
.source "PageViewAnimation.java"


# instance fields
.field final synthetic ZA:Ljava/util/List;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Qa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/Qa;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/Ma;->ZA:Ljava/util/List;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "### switchPageViewByMode mode onBegin SHOW_MULTI_PAGE,begin increase dockview layer"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->mb(I)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Lc;->mb(I)V

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->V(Z)V

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ma;->ZA:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    iget v0, v0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/tc;->Ob(I)V

    .line 10
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 11
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_0

    .line 12
    :cond_3
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p0, :cond_4

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->nb(Z)V

    :cond_4
    return-void
.end method

.method public onComplete()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Qa;->b(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Kj()V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "### switchPageViewByMode mode onComplete SHOW_MULTI_PAGE,begin decrease dockview layer"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->mb(I)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Lc;->mb(I)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Nq()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 10
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v3

    move v4, v1

    .line 11
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 12
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/a/g;

    .line 14
    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->Nq()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->setPageMode(I)V

    .line 17
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/b/fa;->lb(I)V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/V;->lb(I)V

    .line 19
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->getPageNums(I)I

    move-result v2

    .line 20
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    iget v4, v4, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    div-int/2addr v4, v2

    const/4 v2, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/launcher/view/b/fa;->o(IZ)V

    .line 21
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->s(Lcom/smartisanos/launcher/view/b/M;)V

    .line 22
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 23
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3, v2}, Lcom/smartisanos/launcher/animations/Qa;->b(Lcom/smartisanos/launcher/animations/Qa;Z)Z

    .line 24
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->M(F)V

    .line 25
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->bp()V

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    .line 27
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v3, "SHOW_MULTI_PAGE onComplete finish !"

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 28
    :cond_3
    invoke-static {v1}, Lcom/smartisanos/launcher/a/a/e;->z(Z)V

    .line 29
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v3, "mSomethingIsFloat = false when switch page mode complete"

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 30
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/animations/Qa;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/animations/Qa;Z)Z

    move v0, v1

    .line 33
    :goto_2
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->e(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 34
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->e(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/animations/Pa;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/smartisanos/launcher/animations/Pa;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 35
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->Lb(Z)V

    .line 36
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_6

    .line 37
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ma;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/fa;->Gb(Z)V

    .line 38
    sput-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWITCH_TO_SINGLE:Z

    .line 39
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->pg()V

    .line 40
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 43
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p0, :cond_7

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->nh()V

    :cond_7
    return-void
.end method
