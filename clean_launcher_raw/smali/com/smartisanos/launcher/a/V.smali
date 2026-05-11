.class Lcom/smartisanos/launcher/a/V;
.super Lcom/smartisanos/smengine/a;
.source "UninstallApp.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/a/W;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/W;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/V;->this$1:Lcom/smartisanos/launcher/a/W;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "cancelActionEvent set mUninstallDialog to be null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/a/U;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/a/U;-><init>(Lcom/smartisanos/launcher/a/V;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method
