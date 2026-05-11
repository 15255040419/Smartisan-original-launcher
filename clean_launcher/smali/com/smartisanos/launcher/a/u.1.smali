.class Lcom/smartisanos/launcher/a/u;
.super Lcom/smartisanos/smengine/n;
.source "DragToSidebar.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/a/v;

.field final synthetic yD:Z


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/v;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/u;->this$0:Lcom/smartisanos/launcher/a/v;

    iput-boolean p3, p0, Lcom/smartisanos/launcher/a/u;->yD:Z

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->pp()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/a/w;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "postTouchPoint err, drag cell is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/a/w;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ILauncher set cell visible ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/a/u;->yD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Lcom/smartisanos/launcher/a/u;->yD:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-boolean p0, p0, Lcom/smartisanos/launcher/a/u;->yD:Z

    if-nez p0, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/db;->dh()V

    :cond_1
    return-void
.end method
