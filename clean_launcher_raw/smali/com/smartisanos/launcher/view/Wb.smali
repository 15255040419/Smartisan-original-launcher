.class Lcom/smartisanos/launcher/view/Wb;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Wb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wb;->this$0:Lcom/smartisanos/launcher/view/ec;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/smengine/oa;)Lcom/smartisanos/smengine/oa;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/F;

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Wb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/ec;->b(Lcom/smartisanos/launcher/view/ec;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Wb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method
