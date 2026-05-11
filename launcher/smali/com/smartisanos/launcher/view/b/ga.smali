.class Lcom/smartisanos/launcher/view/b/ga;
.super Lcom/smartisanos/smengine/a;
.source "PageWithRenderTarget.java"


# instance fields
.field final synthetic eC:Lcom/smartisanos/smengine/F;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/ka;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/ka;Lcom/smartisanos/smengine/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ga;->this$0:Lcom/smartisanos/launcher/view/b/ka;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/ga;->eC:Lcom/smartisanos/smengine/F;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ga;->eC:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ga;->eC:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ga;->this$0:Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/launcher/view/a/g;->setColor(FFFF)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ga;->eC:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ga;->eC:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ga;->eC:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ga;->eC:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/smartisanos/smengine/L;->c(IIII)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ga;->this$0:Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/launcher/view/a/g;->setColor(FFFF)V

    goto :goto_0

    :cond_0
    return-void
.end method
