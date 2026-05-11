.class Lcom/smartisanos/launcher/view/u;
.super Lcom/smartisanos/smengine/a;
.source "CellStatusForPage.java"


# instance fields
.field final synthetic HA:Lcom/smartisanos/launcher/view/db;

.field final synthetic hB:Lcom/smartisanos/launcher/view/b/fa;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/v;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/v;Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/launcher/view/db;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/u;->this$0:Lcom/smartisanos/launcher/view/v;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/u;->hB:Lcom/smartisanos/launcher/view/b/fa;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/u;->HA:Lcom/smartisanos/launcher/view/db;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/u;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/u;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/launcher/view/b/fa;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/u;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/u;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/u;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/g;Z)V

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Om()V

    .line 9
    :cond_2
    new-instance v1, Lcom/smartisanos/launcher/view/t;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/t;-><init>(Lcom/smartisanos/launcher/view/u;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onStart()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    return-void
.end method
