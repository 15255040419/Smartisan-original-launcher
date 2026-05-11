.class Lcom/smartisanos/launcher/view/Ib;
.super Ljava/lang/Object;
.source "MultiSelectCreateFolderDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/view/Jb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Jb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ib;->this$2:Lcom/smartisanos/launcher/view/Jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ib;->this$2:Lcom/smartisanos/launcher/view/Jb;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Jb;->this$1:Lcom/smartisanos/launcher/view/Kb;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Kb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Qb;->b(Lcom/smartisanos/launcher/view/Qb;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ib;->this$2:Lcom/smartisanos/launcher/view/Jb;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/Jb;->this$1:Lcom/smartisanos/launcher/view/Kb;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/Kb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/Qb;->b(Lcom/smartisanos/launcher/view/Qb;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/ga;->c(Ljava/util/ArrayList;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;F)V

    if-eqz v0, :cond_0

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->clone()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 10
    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/FolderInfo;->kf()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v5, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->raa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v5, v3, v2}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 12
    :cond_0
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {v0, v4, v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 17
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 18
    new-instance v13, Lcom/smartisanos/smengine/oa;

    invoke-direct {v13, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v14, 0x3dcccccd    # 0.1f

    .line 19
    invoke-virtual {v13, v14}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v5, 0xf

    .line 20
    invoke-virtual {v13, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 21
    invoke-virtual {v13, v1}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v6, 0x1

    .line 22
    iget v10, v2, Lcom/smartisanos/smengine/a/j;->x:F

    const v5, 0x3ecccccd    # 0.4f

    mul-float v7, v10, v5

    iget v11, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float v8, v11, v5

    const/high16 v9, 0x3f800000    # 1.0f

    iget v12, v2, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v5, v13

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 24
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    invoke-virtual {v5, v3, v14}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;F)V

    .line 25
    new-instance v5, Lcom/smartisanos/launcher/view/Gb;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/Gb;-><init>(Lcom/smartisanos/launcher/view/Ib;)V

    invoke-virtual {v13, v5}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 26
    invoke-virtual {v3, v4, v13}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 27
    new-instance v4, Lcom/smartisanos/launcher/view/Hb;

    invoke-direct {v4, p0, v0}, Lcom/smartisanos/launcher/view/Hb;-><init>(Lcom/smartisanos/launcher/view/Ib;Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 28
    invoke-virtual {v3}, Lcom/smartisanos/smengine/g;->start()V

    move v0, v1

    .line 29
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ib;->this$2:Lcom/smartisanos/launcher/view/Jb;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Jb;->this$1:Lcom/smartisanos/launcher/view/Kb;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Kb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/Qb;->b(Lcom/smartisanos/launcher/view/Qb;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 30
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ib;->this$2:Lcom/smartisanos/launcher/view/Jb;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Jb;->this$1:Lcom/smartisanos/launcher/view/Kb;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Kb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/Qb;->b(Lcom/smartisanos/launcher/view/Qb;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 31
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    .line 32
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    .line 33
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 34
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 35
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "### folder should not in here"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    .line 37
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "## The page is full??"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
