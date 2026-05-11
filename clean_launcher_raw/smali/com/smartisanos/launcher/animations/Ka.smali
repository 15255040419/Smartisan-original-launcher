.class Lcom/smartisanos/launcher/animations/Ka;
.super Lcom/smartisanos/smengine/a;
.source "PageViewAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Qa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/Qa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "### switchPageViewByMode mode onBegin SHOW_SINGLE_PAGE,begin increase dockview layer"

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
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/animations/Qa;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/Qa;->b(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/Qa;->b(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Kj()V

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "### switchPageViewByMode mode onComplete SHOW_SINGLE_PAGE,begin decrease dockview layer"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/V;->mb(I)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Lc;->mb(I)V

    .line 5
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Eb;->V(Z)V

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Yq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPage is not null, page index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/fa;->m(Lcom/smartisanos/launcher/view/b/M;)I

    .line 10
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Pr()V

    .line 11
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "page count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v5}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 13
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v4

    .line 14
    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/N;->D(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->x:F

    .line 15
    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/N;->r(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v3

    .line 16
    iget v6, v3, Lcom/smartisanos/smengine/a/i;->x:F

    .line 17
    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    .line 19
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 20
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/b/M;

    .line 21
    iget-object v10, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const/high16 v10, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {v9, v10, v10, v10}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    :cond_4
    if-eqz v9, :cond_5

    .line 23
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 24
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 25
    :cond_5
    iget-object v10, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v10

    iget-object v11, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v11}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v11

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v12}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v12

    invoke-virtual {v10, v9, v11, v12}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/M;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 26
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move-object v11, v1

    move v10, v2

    .line 28
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x1

    if-ge v10, v12, :cond_10

    .line 29
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/b/M;

    .line 30
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v15

    if-nez v15, :cond_c

    if-ne v9, v10, :cond_b

    .line 31
    sget-boolean v11, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v11

    const-string v15, "display page is hidden"

    invoke-virtual {v11, v15}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 32
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 33
    sget-boolean v11, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v11

    const-string v13, "display page is hidden, get pre-page"

    invoke-virtual {v11, v13}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 34
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v14

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/b/M;

    goto :goto_2

    .line 35
    :cond_9
    sget-boolean v11, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v11, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v11

    const-string v15, "set display page null"

    invoke-virtual {v11, v15}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_a
    const/4 v11, 0x0

    .line 36
    :cond_b
    :goto_2
    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 37
    invoke-virtual {v12, v14}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 38
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    if-nez v11, :cond_e

    .line 39
    sget-boolean v11, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v11

    const-string v13, "there is a visible page, set display page is current page"

    invoke-virtual {v11, v13}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_d
    move-object v11, v12

    .line 40
    :cond_e
    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    if-nez v13, :cond_f

    .line 41
    iget-object v13, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v13}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 42
    :cond_f
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 43
    :cond_10
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_12

    .line 44
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "display_list is empty !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 45
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "to single page mode, but display_list is empty !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_12
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/launcher/view/b/fa;->i(Ljava/util/ArrayList;)V

    .line 47
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v11, :cond_14

    .line 48
    sget-boolean v7, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v7, :cond_13

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v7

    const-string v8, "all page is hidden or locked, set display page index 0"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_13
    move v7, v2

    goto :goto_4

    .line 49
    :cond_14
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 50
    sget-boolean v8, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v8, :cond_15

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set display page index to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 51
    :cond_15
    :goto_4
    sget-boolean v8, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v8, :cond_16

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getInvisiblePageList() size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/b/fa;->br()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 52
    :cond_16
    sget-boolean v8, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v8, :cond_17

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPageList size            : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 53
    :cond_17
    sget-boolean v8, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v8, :cond_18

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mZoomedPageList size ===> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 54
    :cond_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v2

    :goto_5
    if-ge v9, v8, :cond_19

    .line 55
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/b/M;

    .line 56
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    sub-int v15, v9, v7

    int-to-float v15, v15

    mul-float/2addr v15, v5

    add-float/2addr v15, v6

    const/4 v13, 0x0

    invoke-direct {v12, v15, v3, v13}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 57
    new-instance v15, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v15}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 58
    iget-object v14, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v14}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v14

    .line 59
    invoke-virtual {v14}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v14

    .line 60
    invoke-virtual {v14, v12, v15}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 61
    iget v12, v15, Lcom/smartisanos/smengine/a/j;->x:F

    iget v14, v15, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v10, v12, v14, v13}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 62
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v9, v9, 0x1

    const/4 v14, 0x1

    goto :goto_5

    .line 63
    :cond_19
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 64
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    .line 65
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4, v2}, Lcom/smartisanos/launcher/animations/Qa;->b(Lcom/smartisanos/launcher/animations/Qa;Z)Z

    .line 66
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->setPageMode(I)V

    .line 67
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v5}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/b/fa;->lb(I)V

    .line 68
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/V;->lb(I)V

    .line 69
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->bp()V

    .line 70
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    const/4 v3, 0x1

    .line 71
    invoke-static {v3}, Lcom/smartisanos/launcher/a/a/e;->z(Z)V

    .line 72
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v3

    const-string v4, "SHOW_SINGLE_PAGE onComplete finish !"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 73
    :cond_1a
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 74
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/animations/Qa;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 75
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->M(F)V

    if-nez v11, :cond_1c

    .line 76
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_1b

    invoke-static {}, Lcom/smartisanos/launcher/animations/Qa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v3

    const-string v4, "### all page are invisible,get mpagelist 0 page"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 77
    :cond_1b
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->s(Lcom/smartisanos/launcher/view/b/M;)V

    goto :goto_6

    .line 78
    :cond_1c
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/smartisanos/launcher/view/b/fa;->s(Lcom/smartisanos/launcher/view/b/M;)V

    .line 79
    :goto_6
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_1d

    .line 80
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->nh()V

    .line 81
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->nb(Z)V

    :cond_1d
    if-eqz v1, :cond_1e

    .line 82
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_8

    :cond_1e
    move-object v3, v1

    move v1, v2

    .line 83
    :goto_7
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_20

    .line 84
    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v4, :cond_1f

    .line 85
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v5

    if-nez v5, :cond_1f

    move-object v3, v4

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    move-object v1, v3

    .line 86
    :goto_8
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/animations/Qa;Lcom/smartisanos/launcher/view/b/M;Ljava/util/ArrayList;)V

    .line 87
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/Qa;->d(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v1, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/animations/Qa;->a(Lcom/smartisanos/launcher/animations/Qa;Z)Z

    move v1, v2

    .line 89
    :goto_9
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->e(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_21

    .line 90
    iget-object v3, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/Qa;->e(Lcom/smartisanos/launcher/animations/Qa;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/animations/Pa;

    iget-object v4, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/smartisanos/launcher/animations/Pa;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 91
    :cond_21
    iget-object v0, v0, Lcom/smartisanos/launcher/animations/Ka;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Qa;->c(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->Lb(Z)V

    .line 92
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->pg()V

    .line 93
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 94
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 95
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    return-void
.end method
