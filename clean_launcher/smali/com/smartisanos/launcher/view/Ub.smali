.class Lcom/smartisanos/launcher/view/Ub;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v3, 0x10

    .line 4
    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    const v3, 0x8000

    .line 5
    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v3, 0xa

    .line 6
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 7
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const/16 v3, 0x19

    .line 9
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->g(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/ec;->g(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Va(I)V

    return-void
.end method

.method public onComplete()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->h(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/animations/Ha;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/animations/Ha;->Dn:Z

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->g(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/M;->setSceneNodeForceRender(Z)V

    .line 8
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/ga;->Ii()V

    .line 9
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 10
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/ga;->Hi()V

    const/16 v3, 0xa

    .line 11
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 13
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_2

    .line 14
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/ec;->i(Lcom/smartisanos/launcher/view/ec;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 15
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/smartisanos/launcher/view/a/ga;->ma(Z)V

    .line 16
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/smartisanos/launcher/view/a/Z;->ha(Z)V

    .line 17
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v3, v5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 19
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    const/16 v3, 0x1b

    .line 20
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    .line 21
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    const/4 v3, 0x3

    .line 23
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    const/4 v3, 0x5

    .line 24
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/SceneNode;F)V

    goto :goto_1

    .line 25
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/ec;->i(Lcom/smartisanos/launcher/view/ec;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 27
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 28
    :cond_3
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->i(Lcom/smartisanos/launcher/view/ec;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->j(Lcom/smartisanos/launcher/view/ec;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Kp()V

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;Z)Z

    .line 34
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ub;->this$0:Lcom/smartisanos/launcher/view/ec;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/launcher/animations/Ha;)Lcom/smartisanos/launcher/animations/Ha;

    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Fq()V

    return-void
.end method
