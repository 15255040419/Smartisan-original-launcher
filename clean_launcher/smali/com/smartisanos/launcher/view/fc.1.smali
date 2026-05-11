.class Lcom/smartisanos/launcher/view/fc;
.super Lcom/smartisanos/smengine/a;
.source "NavigationBar.java"


# instance fields
.field final synthetic sB:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/hc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/hc;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/fc;->sB:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    const-string v1, "navigation_bar.png"

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/fc;->sB:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const-string v0, "TextureModularColorMaterial"

    .line 4
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 5
    iget-object v5, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    goto :goto_0

    .line 12
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const-string v0, "TwoTexDifferentTexcoordMaterial"

    .line 14
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 15
    iget-object v5, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v1, "t_blur_background"

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/view/fc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Va(I)V

    :cond_1
    :goto_0
    return-void
.end method
