.class Lcom/smartisanos/launcher/view/g;
.super Lcom/smartisanos/smengine/a;
.source "CellStatusForDock.java"


# instance fields
.field final synthetic fB:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic gB:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/l;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/l;Lcom/smartisanos/launcher/view/a/g;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/g;->fB:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean p3, p0, Lcom/smartisanos/launcher/view/g;->gB:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->fB:Lcom/smartisanos/launcher/view/a/g;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Fq()V

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/g;->gB:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->dl()Lcom/smartisanos/launcher/view/a/ca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/ca;->Ci()V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Tm()V

    .line 8
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "Cell onTouchEvent mSomethingIsFloat set false"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iput-boolean v3, v1, Lcom/smartisanos/launcher/view/d;->Ju:Z

    .line 11
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iput-object v0, v1, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    .line 15
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/l;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "#### cell up on dock,printCellLayer."

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v1}, Lcom/smartisanos/launcher/view/a/g;->m(Lcom/smartisanos/smengine/SceneNode;)V

    .line 17
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_5

    .line 18
    sget-object v1, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->eb(Z)V

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    goto :goto_0

    .line 22
    :cond_5
    sget-object v1, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->eb(Z)V

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 25
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->YH:Lcom/smartisanos/smengine/n;

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-object v0, v1, Lcom/smartisanos/launcher/view/a/g;->YH:Lcom/smartisanos/smengine/n;

    .line 28
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    .line 29
    iget-object v1, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->fm()I

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Gg()V

    .line 34
    iget-object p0, p0, Lcom/smartisanos/launcher/view/g;->this$0:Lcom/smartisanos/launcher/view/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/a/g;->pb(I)V

    :cond_8
    return-void
.end method
