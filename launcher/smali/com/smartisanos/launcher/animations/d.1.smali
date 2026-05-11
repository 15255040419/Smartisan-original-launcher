.class Lcom/smartisanos/launcher/animations/d;
.super Lcom/smartisanos/smengine/a;
.source "AnimationController.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->g(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/sa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/sa;->Hn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v2

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v3, v3, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v3

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/tc;->zb(Z)V

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v1

    .line 7
    iget v2, v2, Lcom/smartisanos/launcher/view/lb;->Cw:I

    add-int/lit8 v2, v2, -0x2f

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/r;->d(Lcom/smartisanos/launcher/animations/r;)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Hg()V

    return-void
.end method

.method public onComplete()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->g(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/sa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/sa;->Hn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v3

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v4

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v5, v5, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/tc;->zb(Z)V

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v1

    .line 8
    iget v2, v3, Lcom/smartisanos/launcher/view/lb;->Cw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->e(Lcom/smartisanos/launcher/animations/r;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->g(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/sa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/sa;->xn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 11
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 14
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->Za(Z)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->g(Lcom/smartisanos/launcher/animations/r;)Lcom/smartisanos/launcher/animations/sa;

    move-result-object v0

    iput-boolean v3, v0, Lcom/smartisanos/launcher/animations/sa;->Dn:Z

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->ah()V

    .line 17
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/d;->this$0:Lcom/smartisanos/launcher/animations/r;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/launcher/animations/sa;)Lcom/smartisanos/launcher/animations/sa;

    return-void
.end method
