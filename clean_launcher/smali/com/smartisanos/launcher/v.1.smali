.class Lcom/smartisanos/launcher/v;
.super Lcom/smartisanos/smengine/n;
.source "ActivityProxy.java"


# instance fields
.field final synthetic qD:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/v;->this$0:Lcom/smartisanos/launcher/J;

    iput-boolean p3, p0, Lcom/smartisanos/launcher/v;->qD:Z

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/J;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "onResume, LauncherModel is dirty or theme is changed, but nothing to do, by main view is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->ei()V

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Wn()V

    goto :goto_0

    .line 9
    :cond_3
    iget-boolean v1, p0, Lcom/smartisanos/launcher/v;->qD:Z

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 12
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->rc()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->ip()V

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/v;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {p0}, Lcom/smartisanos/launcher/J;->e(Lcom/smartisanos/launcher/J;)V

    const/4 p0, 0x0

    .line 15
    invoke-static {p0}, Lcom/smartisanos/launcher/Aa;->p(Z)V

    :cond_5
    return-void
.end method
