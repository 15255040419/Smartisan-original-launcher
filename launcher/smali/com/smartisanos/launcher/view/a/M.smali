.class Lcom/smartisanos/launcher/view/a/M;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic OB:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/M;->this$0:Lcom/smartisanos/launcher/view/a/X;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/a/M;->OB:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/M;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/M;->OB:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/ga;->c(Ljava/util/ArrayList;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/M;->OB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/M;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/db;->l(Lcom/smartisanos/launcher/view/a/g;)V

    return-void
.end method
