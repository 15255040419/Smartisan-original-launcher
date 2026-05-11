.class Lcom/smartisanos/launcher/view/_b;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectNode.java"


# instance fields
.field final synthetic rB:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/ec;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/_b;->this$0:Lcom/smartisanos/launcher/view/ec;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/_b;->rB:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/_b;->rB:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/_b;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Kp()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/_b;->this$0:Lcom/smartisanos/launcher/view/ec;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;Z)Z

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/_b;->this$0:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Jq()V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Fq()V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Pr()V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qr()V

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 11
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/_b;->this$0:Lcom/smartisanos/launcher/view/ec;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/ec;->c(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/_b;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/_b;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    return-void
.end method
