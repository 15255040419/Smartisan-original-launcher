.class Lcom/smartisanos/launcher/animations/L;
.super Lcom/smartisanos/smengine/a;
.source "DockViewAnimation.java"


# instance fields
.field final synthetic Ei:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/U;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/U;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/L;->this$0:Lcom/smartisanos/launcher/animations/U;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/L;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/L;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/L;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->Fb(I)Lcom/smartisanos/smengine/i;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/L;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v0}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v0}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v0}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/L;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method
