.class Lcom/smartisanos/launcher/view/K;
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
    iput-object p1, p0, Lcom/smartisanos/launcher/view/K;->this$0:Lcom/smartisanos/launcher/view/V;

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
    invoke-static {v0}, Lcom/smartisanos/launcher/Qa;->r(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p2

    const-string v1, "### action down"

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/K;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;Z)V

    goto/16 :goto_2

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "### action move"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7
    :cond_3
    invoke-virtual {p2}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_9

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p2

    const-string v1, "### action up"

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/smartisanos/launcher/view/K;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p2, p1, v2}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object p2

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/K;->this$0:Lcom/smartisanos/launcher/view/V;

    iget-object v3, v1, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    if-ne p1, v3, :cond_5

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v1, "onClick mSortConfirmButton"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    if-nez p2, :cond_4

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, " not click sort Button "

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/K;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/V;->q(Lcom/smartisanos/launcher/view/V;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;IZ)V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v1, 0x80000

    invoke-virtual {p1, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    const/16 p1, 0x65

    .line 16
    iput p1, p2, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    const p1, 0x3e99999a    # 0.3f

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 19
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 22
    iget-object v3, p0, Lcom/smartisanos/launcher/view/K;->this$0:Lcom/smartisanos/launcher/view/V;

    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->xZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v3, v4, p1, p2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 23
    new-instance p1, Lcom/smartisanos/launcher/view/J;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/J;-><init>(Lcom/smartisanos/launcher/view/K;)V

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 24
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 25
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    goto :goto_0

    .line 26
    :cond_5
    iget-object v1, v1, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    if-ne p1, v1, :cond_7

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v1, "onClick mSortCancelButton"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lcom/smartisanos/launcher/view/K;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/V;->f(Lcom/smartisanos/launcher/a/b/i;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    :goto_0
    move p0, v0

    goto :goto_1

    :cond_7
    move p0, v2

    :goto_1
    if-eqz p0, :cond_8

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    .line 30
    new-instance p1, Lcom/smartisanos/smengine/g;

    invoke-direct {p1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Lcom/smartisanos/launcher/view/Lc;->h(Lcom/smartisanos/smengine/g;F)V

    const p2, 0x3ee66666    # 0.45f

    .line 32
    invoke-virtual {p0, p1, p2, v2}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/smengine/g;FI)V

    .line 33
    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->start()V

    :cond_8
    return v0

    .line 34
    :cond_9
    invoke-virtual {p2}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p2

    const-string v1, "### action cancel"

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/smartisanos/launcher/view/K;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0, p1, v2}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;Z)V

    :cond_a
    :goto_2
    return v0
.end method
