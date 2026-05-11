.class Lcom/smartisanos/launcher/view/b/G;
.super Lcom/smartisanos/smengine/a;
.source "Page.java"


# instance fields
.field final synthetic bC:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic cC:Lcom/smartisanos/smengine/a;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/a;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/G;->this$0:Lcom/smartisanos/launcher/view/b/M;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/G;->cC:Lcom/smartisanos/smengine/a;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/G;->bC:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/G;->bC:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/G;->bC:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/G;->bC:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/G;->bC:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/b/M;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "Why createEmptyCell cell parent null??"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/G;->bC:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/G;->cC:Lcom/smartisanos/smengine/a;

    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/G;->cC:Lcom/smartisanos/smengine/a;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->onStart()V

    :cond_0
    return-void
.end method
