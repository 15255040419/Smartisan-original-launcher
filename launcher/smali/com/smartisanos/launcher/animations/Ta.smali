.class Lcom/smartisanos/launcher/animations/Ta;
.super Lcom/smartisanos/smengine/a;
.source "RootViewAnimation.java"


# instance fields
.field final synthetic _A:Lcom/smartisanos/launcher/view/V;

.field final synthetic aB:Lcom/smartisanos/launcher/view/Eb;

.field final synthetic bB:Lcom/smartisanos/launcher/view/b/fa;

.field final synthetic cB:Lcom/smartisanos/smengine/SceneNode;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ta;->_A:Lcom/smartisanos/launcher/view/V;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/Ta;->aB:Lcom/smartisanos/launcher/view/Eb;

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/Ta;->bB:Lcom/smartisanos/launcher/view/b/fa;

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/Ta;->cB:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ta;->_A:Lcom/smartisanos/launcher/view/V;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->tb(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ta;->aB:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Eh()Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ta;->aB:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Eh()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/Ta;->_A:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/V;->f(Lcom/smartisanos/launcher/a/b/i;)Z

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/a/b/i;->kd()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ta;->_A:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Do()V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ta;->bB:Lcom/smartisanos/launcher/view/b/fa;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ab;->a(Lcom/smartisanos/launcher/view/b/fa;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ta;->_A:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Eo()V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/a/b/i;->kd()V

    .line 13
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v3, 0x2000000

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/db;->b(ZZ)V

    .line 16
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 18
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->Fp()V

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ta;->cB:Lcom/smartisanos/smengine/SceneNode;

    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->u()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->u()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->u()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v3, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ta;->cB:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 25
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ta;->cB:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 26
    invoke-static {v1}, Lcom/smartisanos/launcher/animations/ab;->e(Z)Z

    .line 27
    invoke-static {v1}, Lcom/smartisanos/launcher/animations/ab;->F(Z)Z

    .line 28
    invoke-static {v1, v2}, Lcom/smartisanos/launcher/Qa;->setVisible(ZZ)V

    const/4 p0, 0x0

    .line 29
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ab;->a(Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->be()Lcom/smartisanos/smengine/n;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ab;->a(Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/ab;->k(J)J

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ta;->_A:Lcom/smartisanos/launcher/view/V;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/V;->tb(Z)V

    return-void
.end method
