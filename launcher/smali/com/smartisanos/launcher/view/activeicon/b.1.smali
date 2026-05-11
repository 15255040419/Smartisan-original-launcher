.class Lcom/smartisanos/launcher/view/activeicon/b;
.super Lcom/smartisanos/smengine/n;
.source "CalendarView.java"


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/view/activeicon/c;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/b;->this$2:Lcom/smartisanos/launcher/view/activeicon/c;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/b;->this$2:Lcom/smartisanos/launcher/view/activeicon/c;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/c;->this$1:Lcom/smartisanos/launcher/view/activeicon/d;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/b;->this$2:Lcom/smartisanos/launcher/view/activeicon/c;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/c;->this$1:Lcom/smartisanos/launcher/view/activeicon/d;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/b;->this$2:Lcom/smartisanos/launcher/view/activeicon/c;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/c;->this$1:Lcom/smartisanos/launcher/view/activeicon/d;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/b;->this$2:Lcom/smartisanos/launcher/view/activeicon/c;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/c;->this$1:Lcom/smartisanos/launcher/view/activeicon/d;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_3

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/b;->this$2:Lcom/smartisanos/launcher/view/activeicon/c;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/c;->this$1:Lcom/smartisanos/launcher/view/activeicon/d;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    .line 6
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->f(Z)V

    :cond_2
    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/m;->u()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "mBoundingCell is null, getParent is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method
