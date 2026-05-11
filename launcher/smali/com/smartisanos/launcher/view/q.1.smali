.class Lcom/smartisanos/launcher/view/q;
.super Lcom/smartisanos/smengine/n;
.source "CellStatusForPage.java"


# instance fields
.field final synthetic fE:Lcom/smartisanos/smengine/l;

.field final synthetic gE:I

.field final synthetic hE:Z

.field final synthetic this$1:Lcom/smartisanos/launcher/view/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/r;ILcom/smartisanos/smengine/l;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/q;->this$1:Lcom/smartisanos/launcher/view/r;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/q;->fE:Lcom/smartisanos/smengine/l;

    iput p4, p0, Lcom/smartisanos/launcher/view/q;->gE:I

    iput-boolean p5, p0, Lcom/smartisanos/launcher/view/q;->hE:Z

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/animations/r;->xl:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "mDelaySendDoCollideEvent into folder anim is running, return."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " collided = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/q;->fE:Lcom/smartisanos/smengine/l;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",collidedPageIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/launcher/view/q;->gE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mDelaySendDoCollideEvent run"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->wd()V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/q;->this$1:Lcom/smartisanos/launcher/view/r;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/q;->fE:Lcom/smartisanos/smengine/l;

    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/q;->hE:Z

    iget v3, p0, Lcom/smartisanos/launcher/view/q;->gE:I

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/launcher/view/r;Lcom/smartisanos/smengine/l;ZI)V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/q;->this$1:Lcom/smartisanos/launcher/view/r;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    return-void
.end method
