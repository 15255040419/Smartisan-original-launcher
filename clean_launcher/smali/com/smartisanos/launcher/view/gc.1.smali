.class Lcom/smartisanos/launcher/view/gc;
.super Lcom/smartisanos/smengine/a;
.source "NavigationBar.java"


# instance fields
.field final synthetic tB:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/hc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/hc;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/gc;->this$0:Lcom/smartisanos/launcher/view/hc;

    iput p2, p0, Lcom/smartisanos/launcher/view/gc;->tB:I

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/gc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/gc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/gc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/gc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/gc;->this$0:Lcom/smartisanos/launcher/view/hc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/hc;->a(Lcom/smartisanos/launcher/view/hc;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iget p0, p0, Lcom/smartisanos/launcher/view/gc;->tB:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method
