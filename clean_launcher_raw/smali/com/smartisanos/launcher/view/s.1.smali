.class Lcom/smartisanos/launcher/view/s;
.super Lcom/smartisanos/smengine/a;
.source "CellStatusForPage.java"


# instance fields
.field final synthetic HA:Lcom/smartisanos/launcher/view/db;

.field final synthetic _A:Lcom/smartisanos/launcher/view/V;

.field final synthetic aB:Lcom/smartisanos/launcher/view/Eb;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/v;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/v;Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/launcher/view/db;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/s;->_A:Lcom/smartisanos/launcher/view/V;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/s;->aB:Lcom/smartisanos/launcher/view/Eb;

    iput-object p4, p0, Lcom/smartisanos/launcher/view/s;->HA:Lcom/smartisanos/launcher/view/db;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->eb(Z)V

    .line 7
    :cond_0
    sput v1, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->eb(Z)V

    .line 11
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    goto :goto_0

    .line 12
    :cond_3
    sget-object v0, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->eb(Z)V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/smartisanos/launcher/view/a/X;->My:Lcom/smartisanos/smengine/g;

    .line 16
    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Tm()V

    .line 17
    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->_A:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 18
    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/X;->getAnimation(I)Lcom/smartisanos/smengine/g;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 19
    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/X;->getAnimation(I)Lcom/smartisanos/smengine/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 20
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->Ie()I

    move-result v2

    if-lez v2, :cond_6

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 23
    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->aB:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/bb;->Gp()V

    .line 24
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 25
    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->HA:Lcom/smartisanos/launcher/view/db;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/db;->jh()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v2}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 27
    :cond_7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iput-object v0, v2, Lcom/smartisanos/launcher/view/d;->Ku:Lcom/smartisanos/smengine/g;

    .line 28
    iput-boolean v1, v2, Lcom/smartisanos/launcher/view/d;->Ju:Z

    .line 29
    iget-object v1, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->YH:Lcom/smartisanos/smengine/n;

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 31
    iget-object v1, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-object v0, v1, Lcom/smartisanos/launcher/view/a/g;->YH:Lcom/smartisanos/smengine/n;

    .line 32
    :cond_8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/view/s;->aB:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/s;->aB:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->zn()I

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->fm()I

    move-result v1

    if-eq v1, v0, :cond_9

    .line 38
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Gg()V

    .line 39
    iget-object p0, p0, Lcom/smartisanos/launcher/view/s;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->pb(I)V

    :cond_9
    return-void
.end method
