.class Lcom/smartisanos/launcher/view/Pb;
.super Lcom/smartisanos/smengine/n;
.source "MultiSelectCreateFolderDialog.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Qb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Qb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Pb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Qb;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "createCancelCreateFolder fail."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/high16 v4, 0x4000000

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 11
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x3e99999a    # 0.3f

    .line 12
    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->mZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v1, v6, v5, v3}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 13
    sget-object v6, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v2, v6, v5, v3}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 14
    sget-object v6, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v2, v6, v5, v3}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 15
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Yo()Lcom/smartisanos/smengine/g;

    move-result-object v1

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v4, v2, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 17
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Pb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/Qb;->b(Lcom/smartisanos/launcher/view/Qb;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/launcher/view/ec;->a(Ljava/util/List;Lcom/smartisanos/smengine/g;)V

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/view/Ob;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/Ob;-><init>(Lcom/smartisanos/launcher/view/Pb;)V

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 19
    invoke-virtual {v4}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method
