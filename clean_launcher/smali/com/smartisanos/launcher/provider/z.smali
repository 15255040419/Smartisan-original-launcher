.class Lcom/smartisanos/launcher/provider/z;
.super Lcom/smartisanos/smengine/n;
.source "SidebarFolderProvider.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/provider/A;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/A;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/z;->this$0:Lcom/smartisanos/launcher/provider/A;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/z;->this$0:Lcom/smartisanos/launcher/provider/A;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/provider/A;->Ks:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$400()Z

    move-result v0

    .line 3
    :goto_0
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticeOtherAppWhenFolderChanged changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", force ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/provider/z;->this$0:Lcom/smartisanos/launcher/provider/A;

    iget-boolean v3, v3, Lcom/smartisanos/launcher/provider/A;->Ks:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/provider/y;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/provider/y;-><init>(Lcom/smartisanos/launcher/provider/z;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/wb;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
