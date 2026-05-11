.class Lcom/smartisanos/launcher/provider/p;
.super Lcom/smartisanos/smengine/n;
.source "SidebarFolderProvider.java"


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/provider/q;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/q;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/p;->this$2:Lcom/smartisanos/launcher/provider/q;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "getFolderItemList in next gl event"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/p;->this$2:Lcom/smartisanos/launcher/provider/q;

    iget-object v0, v0, Lcom/smartisanos/launcher/provider/q;->this$1:Lcom/smartisanos/launcher/provider/r;

    iget-object v1, v0, Lcom/smartisanos/launcher/provider/r;->val$list:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/smartisanos/launcher/provider/r;->this$0:Lcom/smartisanos/launcher/provider/SidebarFolderProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->b(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/p;->this$2:Lcom/smartisanos/launcher/provider/q;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/q;->this$1:Lcom/smartisanos/launcher/provider/r;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/vb;->releaseLock()V

    return-void
.end method
