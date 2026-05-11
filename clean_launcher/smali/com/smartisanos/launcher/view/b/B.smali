.class Lcom/smartisanos/launcher/view/b/B;
.super Lcom/smartisanos/smengine/a;
.source "Page.java"


# instance fields
.field final synthetic Qf:Z

.field final synthetic _B:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/M;ZLjava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/b/B;->Qf:Z

    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/B;->_B:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/B;->Qf:Z

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/M;->j(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/M;->j(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/M;->j(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/M;->j(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/F;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/launcher/view/b/M;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->_B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 9
    iget-object v5, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/b/M;->k(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/smartisanos/launcher/view/a/g;->setColor(FFFF)V

    .line 11
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_0
    const/16 v4, 0xc

    .line 12
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/M;->k(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v0

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "TwoTexDifferentTexColorMaterial"

    .line 14
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 15
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_2

    const-string v0, "TwoTexDifferentTexColorAlphaMaskMaterial"

    .line 16
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v2

    const-string v5, "lock_mask.png"

    invoke-static {v5, v1}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v2, "lock_cover.png"

    invoke-static {v2, v1}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v2, "background.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v2, "t_blur_background"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 25
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/B;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/M;->i(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/smartisanos/smengine/L;->Va(I)V

    :cond_4
    return-void
.end method
