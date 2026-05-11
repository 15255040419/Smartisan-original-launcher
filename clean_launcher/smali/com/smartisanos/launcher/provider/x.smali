.class Lcom/smartisanos/launcher/provider/x;
.super Lcom/smartisanos/smengine/n;
.source "SidebarFolderProvider.java"


# instance fields
.field final synthetic aE:J

.field final synthetic bE:J

.field final synthetic this$0:Lcom/smartisanos/launcher/provider/SidebarFolderProvider;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;IJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/x;->this$0:Lcom/smartisanos/launcher/provider/SidebarFolderProvider;

    iput-wide p3, p0, Lcom/smartisanos/launcher/provider/x;->aE:J

    iput-wide p5, p0, Lcom/smartisanos/launcher/provider/x;->bE:J

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    .line 3
    iget-wide v1, p0, Lcom/smartisanos/launcher/provider/x;->aE:J

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Eb;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v2, p0, Lcom/smartisanos/launcher/provider/x;->bE:J

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/Eb;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    instance-of v2, v0, Lcom/smartisanos/launcher/view/a/ka;

    if-nez v2, :cond_3

    return-void

    .line 8
    :cond_3
    check-cast v0, Lcom/smartisanos/launcher/view/a/ka;

    .line 9
    new-instance v2, Lcom/smartisanos/launcher/provider/w;

    const/16 v3, 0x64

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/smartisanos/launcher/provider/w;-><init>(Lcom/smartisanos/launcher/provider/x;ILcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/launcher/view/a/ka;)V

    iput-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->YH:Lcom/smartisanos/smengine/n;

    :cond_4
    :goto_0
    return-void
.end method
