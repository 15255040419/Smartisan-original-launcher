.class Lcom/smartisanos/launcher/view/b/l;
.super Lcom/smartisanos/smengine/a;
.source "FolderPageView.java"


# instance fields
.field final synthetic RB:Lcom/smartisanos/launcher/view/Z;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/l;->this$0:Lcom/smartisanos/launcher/view/b/t;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/l;->RB:Lcom/smartisanos/launcher/view/Z;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/l;->this$0:Lcom/smartisanos/launcher/view/b/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/t;->a(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/l;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/t;->d(Lcom/smartisanos/launcher/view/b/t;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/l;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/t;->e(Lcom/smartisanos/launcher/view/b/t;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->eh()V

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/l;->this$0:Lcom/smartisanos/launcher/view/b/t;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "close. setLauncherStatus(StatusManager.ON_FOLDER_DOING_ANIM, false)"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x2000000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/l;->RB:Lcom/smartisanos/launcher/view/Z;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Vg()V

    .line 10
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/l;->RB:Lcom/smartisanos/launcher/view/Z;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/l;->RB:Lcom/smartisanos/launcher/view/Z;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Z;->updateLayer()V

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v1

    .line 14
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    .line 15
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/l;->RB:Lcom/smartisanos/launcher/view/Z;

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/launcher/view/Z;->D(II)V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/l;->RB:Lcom/smartisanos/launcher/view/Z;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Z;->kp()V

    .line 17
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    return-void
.end method
