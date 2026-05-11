.class Lcom/smartisanos/launcher/view/H;
.super Lcom/smartisanos/smengine/n;
.source "DockView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;

.field final synthetic val$view:Lcom/smartisanos/smengine/SceneNode;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;ILcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/H;->this$0:Lcom/smartisanos/launcher/view/V;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/H;->val$view:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "##### do long click"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/H;->val$view:Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/H;->this$0:Lcom/smartisanos/launcher/view/V;

    iget-object v3, v2, Lcom/smartisanos/launcher/view/V;->PJ:Lcom/smartisanos/smengine/F;

    const/4 v4, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, v2, Lcom/smartisanos/launcher/view/V;->NJ:Lcom/smartisanos/smengine/F;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v2, Lcom/smartisanos/launcher/view/V;->OJ:Lcom/smartisanos/smengine/F;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->MJ:Lcom/smartisanos/smengine/F;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    if-le v0, v4, :cond_4

    .line 7
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->rZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v3, 0x3e3851ec    # 0.18f

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/H;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/H;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Z)Z

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/H;->this$0:Lcom/smartisanos/launcher/view/V;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->oK:Lcom/smartisanos/smengine/n;

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->xc()V

    return-void
.end method
