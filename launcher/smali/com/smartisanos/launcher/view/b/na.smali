.class Lcom/smartisanos/launcher/view/b/na;
.super Lcom/smartisanos/smengine/a;
.source "SwitchPageNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/ra;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/ra;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/na;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onBegin()V

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/b/ra;->y()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "#### switchPageNode pageBackToCenterAnimation on begin"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/na;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/ra;->a(Lcom/smartisanos/launcher/view/b/ra;Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/na;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/ra;->c(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Gn()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/na;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/ra;->c(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/tc;->zb(Z)V

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/na;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/ra;->c(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/na;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/b/ra;->a(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/na;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/b/ra;->b(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/na;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/ra;->b(Lcom/smartisanos/launcher/view/b/ra;Z)Z

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/na;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/b/ra;->a(Lcom/smartisanos/launcher/view/b/ra;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Pr()V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qr()V

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 17
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/b/ra;->y()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v2, "#### switchPageNode pageBackToCenterAnimation on complete"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/na;->this$0:Lcom/smartisanos/launcher/view/b/ra;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/ra;->f(Lcom/smartisanos/launcher/view/b/ra;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    return-void
.end method
