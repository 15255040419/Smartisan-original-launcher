.class Lcom/smartisanos/launcher/view/t;
.super Lcom/smartisanos/smengine/a;
.source "CellStatusForPage.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/u;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/t;->this$1:Lcom/smartisanos/launcher/view/u;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/t;->this$1:Lcom/smartisanos/launcher/view/u;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/u;->hB:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/t;->this$1:Lcom/smartisanos/launcher/view/u;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/u;->HA:Lcom/smartisanos/launcher/view/db;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->gh()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->clone()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->kf()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->raa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0, v2, v3}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/t;->this$1:Lcom/smartisanos/launcher/view/u;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/u;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/t;->this$1:Lcom/smartisanos/launcher/view/u;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/u;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/t;->this$1:Lcom/smartisanos/launcher/view/u;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/u;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/t;->this$1:Lcom/smartisanos/launcher/view/u;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/u;->HA:Lcom/smartisanos/launcher/view/db;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/db;->dh()V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Eq()V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    return-void
.end method
