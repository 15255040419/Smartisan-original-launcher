.class Lcom/smartisanos/launcher/view/b/o;
.super Lcom/smartisanos/smengine/a;
.source "FolderPageView.java"


# instance fields
.field final synthetic RB:Lcom/smartisanos/launcher/view/Z;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/o;->this$0:Lcom/smartisanos/launcher/view/b/t;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/o;->RB:Lcom/smartisanos/launcher/view/Z;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/o;->this$0:Lcom/smartisanos/launcher/view/b/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/t;->a(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/o;->this$0:Lcom/smartisanos/launcher/view/b/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/t;->a(Lcom/smartisanos/launcher/view/b/t;Z)Z

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/o;->this$0:Lcom/smartisanos/launcher/view/b/t;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "open setLauncherStatus(StatusManager.ON_FOLDER_DOING_ANIM, false)"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/o;->this$0:Lcom/smartisanos/launcher/view/b/t;

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 6
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/t;->b(Lcom/smartisanos/launcher/data/FolderInfo;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/o;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/t;->ds()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/o;->RB:Lcom/smartisanos/launcher/view/Z;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Z;->updateLayer()V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/o;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/smartisanos/launcher/view/Z;->D(II)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->th()V

    return-void
.end method
