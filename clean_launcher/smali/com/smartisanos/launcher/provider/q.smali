.class Lcom/smartisanos/launcher/provider/q;
.super Lcom/smartisanos/smengine/n;
.source "SidebarFolderProvider.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/provider/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/r;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/q;->this$1:Lcom/smartisanos/launcher/provider/r;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$000()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->e(Z)Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/q;->this$1:Lcom/smartisanos/launcher/provider/r;

    iget-object v0, v0, Lcom/smartisanos/launcher/provider/r;->this$0:Lcom/smartisanos/launcher/provider/SidebarFolderProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->a(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;)V

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/provider/o;

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/provider/o;-><init>(Lcom/smartisanos/launcher/provider/q;I)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/q;->this$1:Lcom/smartisanos/launcher/provider/r;

    iget-object v0, v0, Lcom/smartisanos/launcher/provider/r;->this$0:Lcom/smartisanos/launcher/provider/SidebarFolderProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->b(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "getFolders be called!"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/q;->this$1:Lcom/smartisanos/launcher/provider/r;

    iget-object v1, v1, Lcom/smartisanos/launcher/provider/r;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/q;->this$1:Lcom/smartisanos/launcher/provider/r;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/vb;->releaseLock()V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/q;->this$1:Lcom/smartisanos/launcher/provider/r;

    iget-object v0, v0, Lcom/smartisanos/launcher/provider/r;->this$0:Lcom/smartisanos/launcher/provider/SidebarFolderProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->a(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;)V

    .line 13
    new-instance v0, Lcom/smartisanos/launcher/provider/p;

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/provider/p;-><init>(Lcom/smartisanos/launcher/provider/q;I)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    :goto_1
    return-void
.end method
