.class Lcom/smartisanos/launcher/view/I;
.super Ljava/lang/Object;
.source "DockView.java"

# interfaces
.implements Lcom/smartisanos/smengine/ca;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/va;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p2

    const-string v1, "### action down"

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p2}, Lcom/smartisanos/launcher/view/V;->p(Lcom/smartisanos/launcher/view/V;)V

    .line 7
    iget-object p2, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p2, p1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;)V

    .line 8
    iget-object p2, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p2, p1, v0}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Z)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "### action move"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x3e3851ec    # 0.18f

    const/4 v4, 0x0

    if-ne v1, v0, :cond_6

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p2

    const-string v1, "### action up"

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p2, p1, v4}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 15
    iget-object p2, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p2}, Lcom/smartisanos/launcher/view/V;->p(Lcom/smartisanos/launcher/view/V;)V

    .line 16
    iget-object p2, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p2}, Lcom/smartisanos/launcher/view/V;->o(Lcom/smartisanos/launcher/view/V;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 17
    iget-object p0, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->XJ:Lcom/smartisanos/smengine/F;

    if-eqz p1, :cond_4

    .line 18
    sget-object p1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->sZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 19
    invoke-virtual {p0, p1, v3, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    :cond_4
    return v0

    .line 20
    :cond_5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {p2}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_7

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p2

    const-string v1, "### action cancel"

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p2, p1, v4}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/V;->p(Lcom/smartisanos/launcher/view/V;)V

    .line 25
    iget-object p0, p0, Lcom/smartisanos/launcher/view/I;->this$0:Lcom/smartisanos/launcher/view/V;

    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->XJ:Lcom/smartisanos/smengine/F;

    if-eqz p1, :cond_7

    .line 26
    sget-object p1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->sZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 27
    invoke-virtual {p0, p1, v3, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    :cond_7
    :goto_0
    return v0
.end method
