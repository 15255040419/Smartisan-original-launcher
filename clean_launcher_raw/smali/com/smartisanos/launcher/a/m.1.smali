.class Lcom/smartisanos/launcher/a/m;
.super Lcom/smartisanos/smengine/a;
.source "ChangeWallpaperByFourFingerSlide.java"


# instance fields
.field final synthetic EA:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic FA:Lcom/smartisanos/smengine/F;

.field final synthetic GA:Lcom/smartisanos/smengine/F;


# direct methods
.method constructor <init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/m;->EA:Lcom/smartisanos/smengine/SceneNode;

    iput-object p2, p0, Lcom/smartisanos/launcher/a/m;->FA:Lcom/smartisanos/smengine/F;

    iput-object p3, p0, Lcom/smartisanos/launcher/a/m;->GA:Lcom/smartisanos/smengine/F;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/a/m;->EA:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/a/m;->EA:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeAllChildren()V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/a/m;->FA:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/a/m;->GA:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/a/m;->GA:Lcom/smartisanos/smengine/F;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslateX(F)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/a/m;->GA:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const-string p0, "texture_back_anim"

    .line 9
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "background.png"

    .line 10
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 11
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 12
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->isTransWallpaperBlur:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v3, :cond_0

    const-string v3, "t_blur_background"

    .line 13
    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 14
    :cond_0
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/Ea;->cb(Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/a/n;->access$200()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    instance-of p0, p0, Lcom/smartisanos/launcher/view/b/ka;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/a/n;->access$200()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/ka;

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 18
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/b/ka;->rb(Z)V

    .line 19
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/V;->rb(Z)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/V;->kb(Z)V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 22
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/hc;->rb(Z)V

    .line 23
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/a/n;->access$000()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_4

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/a/n;->access$200()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 27
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->ui()V

    goto :goto_0

    .line 28
    :cond_5
    invoke-static {v0}, Lcom/smartisanos/launcher/a/n;->e(Z)Z

    const/4 p0, 0x0

    .line 29
    invoke-static {p0}, Lcom/smartisanos/launcher/a/n;->a(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void
.end method
