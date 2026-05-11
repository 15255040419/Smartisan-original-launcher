.class Lcom/smartisanos/launcher/provider/u;
.super Lcom/smartisanos/smengine/n;
.source "SidebarFolderProvider.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/provider/SidebarFolderProvider;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/u;->this$0:Lcom/smartisanos/launcher/provider/SidebarFolderProvider;

    iput-wide p3, p0, Lcom/smartisanos/launcher/provider/u;->val$id:J

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ub;->Mc()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "openFolder return by main view is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    if-nez v1, :cond_4

    .line 9
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "openFolder return by page view is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 10
    :cond_4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    if-nez v2, :cond_6

    .line 11
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "openFolder return by dock view is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 12
    :cond_6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "openFolder return by is edit mode"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    return-void

    .line 14
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v3, 0x4000

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_0

    .line 16
    :cond_9
    iget-wide v3, p0, Lcom/smartisanos/launcher/provider/u;->val$id:J

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/view/b/fa;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_a

    .line 17
    iget-wide v3, p0, Lcom/smartisanos/launcher/provider/u;->val$id:J

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/view/V;->t(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_c

    .line 18
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "openFolder return by cell is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_b
    return-void

    .line 19
    :cond_c
    instance-of v2, v0, Lcom/smartisanos/launcher/view/a/ka;

    if-nez v2, :cond_e

    .line 20
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "openFolder return by cell is not FolderCell"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_d
    return-void

    .line 21
    :cond_e
    move-object v2, v0

    check-cast v2, Lcom/smartisanos/launcher/view/a/ka;

    .line 22
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_f

    .line 23
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->Hm()V

    return-void

    .line 24
    :cond_f
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 25
    instance-of v3, v0, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v3, :cond_11

    .line 26
    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 27
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->p(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v0

    .line 28
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v3

    if-ne v3, v0, :cond_10

    .line 29
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->Hm()V

    return-void

    .line 30
    :cond_10
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/16 v4, 0x80

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 31
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    const v3, 0x3eb851ec    # 0.36f

    const/4 v4, 0x0

    .line 32
    new-instance v5, Lcom/smartisanos/launcher/provider/t;

    invoke-direct {v5, p0, v2}, Lcom/smartisanos/launcher/provider/t;-><init>(Lcom/smartisanos/launcher/provider/u;Lcom/smartisanos/launcher/view/a/ka;)V

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void

    .line 34
    :cond_11
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_12

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "error openFolder(). cell\'s parent is not page!"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_12
    return-void

    .line 35
    :cond_13
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_14

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "openFolder return. setting button do animation"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_14
    return-void

    .line 36
    :cond_15
    :goto_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_16

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "openFolder return by ON_FOLDER_HAS_OPEN is true"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_16
    return-void
.end method
