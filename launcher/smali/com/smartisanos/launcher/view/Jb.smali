.class Lcom/smartisanos/launcher/view/Jb;
.super Lcom/smartisanos/smengine/n;
.source "MultiSelectCreateFolderDialog.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/Kb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Kb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Jb;->this$1:Lcom/smartisanos/launcher/view/Kb;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

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

    .line 5
    new-instance v3, Lcom/smartisanos/launcher/view/Ib;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/Ib;-><init>(Lcom/smartisanos/launcher/view/Jb;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/launcher/view/ec;->a(Ljava/lang/Runnable;Z)Lcom/smartisanos/smengine/g;

    move-result-object v0

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Jb;->this$1:Lcom/smartisanos/launcher/view/Kb;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Kb;->this$0:Lcom/smartisanos/launcher/view/Qb;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Qb;->b(Lcom/smartisanos/launcher/view/Qb;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 8
    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->_a(Z)V

    const/high16 v5, 0x10000

    .line 9
    invoke-virtual {v3, v5, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 10
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    .line 12
    invoke-virtual {v3, p0}, Lcom/smartisanos/launcher/view/b/fa;->p(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p0

    .line 13
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v5

    const/4 v6, 0x0

    if-eq p0, v5, :cond_0

    .line 14
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v5

    invoke-virtual {v3, v5, p0}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    const v5, 0x3eb851ec    # 0.36f

    const/4 v7, 0x0

    .line 15
    invoke-virtual {v3, p0, v5, v4, v7}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    .line 16
    invoke-virtual {v0, v6, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 17
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x3e99999a    # 0.3f

    .line 19
    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->mZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v1, v4, v3, p0}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 20
    sget-object v4, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v2, v4, v3, p0}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 21
    sget-object v4, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v2, v4, v3, p0}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 22
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Yo()Lcom/smartisanos/smengine/g;

    move-result-object p0

    .line 23
    invoke-virtual {v0, v6, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 24
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "## The page is full??"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
