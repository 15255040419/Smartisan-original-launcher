.class Lcom/smartisanos/launcher/a/Z;
.super Lcom/smartisanos/smengine/n;
.source "UninstallApp.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/a/oa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/oa;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/Z;->this$0:Lcom/smartisanos/launcher/a/oa;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->mq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "REMOVE_MULTI_APPS isTrashAnimRunning"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Sc;->kq()Lcom/smartisanos/launcher/view/ec;

    move-result-object v3

    if-nez v3, :cond_1

    .line 8
    invoke-static {v1}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "REMOVE_MULTI_APPS multiSelectNode"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v4, 0x400

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 13
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Sc;->nq()V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 16
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x3e99999a    # 0.3f

    .line 17
    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->mZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v6, v5, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 18
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v2, v0, v5, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 19
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v2, v0, v5, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/a/Z;->this$0:Lcom/smartisanos/launcher/a/oa;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/oa;->a(Lcom/smartisanos/launcher/a/oa;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/smartisanos/launcher/view/ec;->a(Ljava/util/List;Lcom/smartisanos/smengine/g;)V

    .line 21
    new-instance v0, Lcom/smartisanos/launcher/a/Y;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/a/Y;-><init>(Lcom/smartisanos/launcher/a/Z;)V

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 22
    invoke-virtual {v4}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method
