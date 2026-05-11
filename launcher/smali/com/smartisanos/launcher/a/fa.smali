.class Lcom/smartisanos/launcher/a/fa;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Vj:Ljava/util/ArrayList;

.field final synthetic Wj:Lcom/smartisanos/launcher/view/ec;

.field final synthetic Xj:Lcom/smartisanos/launcher/a/ga;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/ga;Ljava/util/ArrayList;Lcom/smartisanos/launcher/view/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/fa;->Xj:Lcom/smartisanos/launcher/a/ga;

    iput-object p2, p0, Lcom/smartisanos/launcher/a/fa;->Vj:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/smartisanos/launcher/a/fa;->Wj:Lcom/smartisanos/launcher/view/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/a/fa;->Vj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/a/fa;->Vj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/a/fa;->Wj:Lcom/smartisanos/launcher/view/ec;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-wide v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/Aa;->j(J)Lcom/smartisanos/launcher/data/ItemInfo;

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->tl()V

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 9
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {v2}, Lcom/smartisanos/launcher/view/a/aa;->l(Lcom/smartisanos/launcher/data/ItemInfo;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
