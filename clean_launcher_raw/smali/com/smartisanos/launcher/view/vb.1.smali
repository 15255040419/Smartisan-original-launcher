.class Lcom/smartisanos/launcher/view/vb;
.super Lcom/smartisanos/smengine/a;
.source "MainView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/vb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public Fj()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "mHideCellClickShadowRectAnim onKill"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/vb;->onComplete()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "mHideCellClickShadowRectAnim onComplete"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/vb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/vb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/vb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v0, 0x2000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object p0

    const-string v0, "t_theme_dock_openapp_shadow"

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "mHideCellClickShadowRectAnim onStart"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
