.class Lcom/smartisanos/launcher/view/a/U;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic PB:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/U;->this$0:Lcom/smartisanos/launcher/view/a/X;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/a/U;->PB:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/U;->PB:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/U;->PB:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/U;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_0
    return-void
.end method
