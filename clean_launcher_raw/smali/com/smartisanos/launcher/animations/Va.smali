.class Lcom/smartisanos/launcher/animations/Va;
.super Lcom/smartisanos/smengine/a;
.source "RootViewAnimation.java"


# instance fields
.field final synthetic _A:Lcom/smartisanos/launcher/view/V;

.field final synthetic aB:Lcom/smartisanos/launcher/view/Eb;

.field final synthetic cB:Lcom/smartisanos/smengine/SceneNode;


# direct methods
.method constructor <init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Va;->cB:Lcom/smartisanos/smengine/SceneNode;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/Va;->aB:Lcom/smartisanos/launcher/view/Eb;

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/Va;->_A:Lcom/smartisanos/launcher/view/V;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Va;->_A:Lcom/smartisanos/launcher/view/V;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/V;->tb(Z)V

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ab;->e(Z)Z

    const/4 p0, 0x1

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ab;->F(Z)Z

    const/4 p0, 0x0

    .line 4
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ab;->a(Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Va;->cB:Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Va;->aB:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Eh()Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Va;->aB:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Eh()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Va;->_A:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->tb(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/a/b/i;->kd()V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Va;->_A:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Do()V

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->ae()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->_d()Lcom/smartisanos/smengine/n;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->_d()Lcom/smartisanos/smengine/n;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_2
    return-void
.end method
