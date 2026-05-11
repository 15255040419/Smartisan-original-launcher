.class Lcom/smartisanos/launcher/animations/Ca;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectFadeinFadeoutAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Ea;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/Ea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ca;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onBegin()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ca;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/Ea;->a(Lcom/smartisanos/launcher/animations/Ea;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ca;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/animations/Ea;->Dn:Z

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Ea;->a(Lcom/smartisanos/launcher/animations/Ea;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 5
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ca;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Ea;->b(Lcom/smartisanos/launcher/animations/Ea;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ca;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/Ea;->a(Lcom/smartisanos/launcher/animations/Ea;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
