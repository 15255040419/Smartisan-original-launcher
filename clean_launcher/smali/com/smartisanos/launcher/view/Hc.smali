.class Lcom/smartisanos/launcher/view/Hc;
.super Lcom/smartisanos/smengine/a;
.source "StatusBar.java"


# instance fields
.field final synthetic Qf:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Lc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Lc;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Hc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/Hc;->Qf:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Hc;->Qf:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Hc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->a(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Hc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Lc;->a(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/smengine/F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->b(Lcom/smartisanos/smengine/y;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Hc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->a(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Hc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Lc;->a(Lcom/smartisanos/launcher/view/Lc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Hc;->this$0:Lcom/smartisanos/launcher/view/Lc;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/Lc;->a(Lcom/smartisanos/launcher/view/Lc;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/F;

    :cond_0
    return-void
.end method
