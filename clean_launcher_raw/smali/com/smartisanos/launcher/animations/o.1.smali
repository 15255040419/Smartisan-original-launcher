.class Lcom/smartisanos/launcher/animations/o;
.super Lcom/smartisanos/smengine/a;
.source "AnimationController.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->c(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/oa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/oa;->Hn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v2, v2, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v3, v3, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v2

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/tc;->zb(Z)V

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v3

    .line 7
    iget v4, v2, Lcom/smartisanos/launcher/view/lb;->Cw:I

    add-int/lit8 v4, v4, -0x2f

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->An()Lcom/smartisanos/smengine/F;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    iget v2, v2, Lcom/smartisanos/launcher/view/lb;->xw:I

    add-int/lit8 v2, v2, -0x2f

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/r;->d(Lcom/smartisanos/launcher/animations/r;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Hg()V

    return-void
.end method

.method public onComplete()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->c(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/oa;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->c(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/oa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/oa;->Hn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v2, v2, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v3, v3, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v2

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v4

    .line 9
    iget v5, v2, Lcom/smartisanos/launcher/view/lb;->Cw:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/tc;->zb(Z)V

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->An()Lcom/smartisanos/smengine/F;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    iget v2, v2, Lcom/smartisanos/launcher/view/lb;->xw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->e(Lcom/smartisanos/launcher/animations/r;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->c(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/oa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/oa;->xn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 15
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->Za(Z)V

    .line 16
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->c(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/oa;

    move-result-object v0

    iput-boolean v2, v0, Lcom/smartisanos/launcher/animations/oa;->Dn:Z

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->ah()V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/o;->this$0:Lcom/smartisanos/launcher/animations/r;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/animations/oa;)Lcom/smartisanos/launcher/animations/oa;

    return-void
.end method
