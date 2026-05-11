.class Lcom/smartisanos/launcher/animations/ja;
.super Lcom/smartisanos/smengine/a;
.source "IconSortAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/ma;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/ma;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/b/ka;->pb(Z)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/nb;->va(I)Lcom/smartisanos/launcher/view/lb;

    move-result-object v2

    .line 4
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    iget v5, v2, Lcom/smartisanos/launcher/view/lb;->Dw:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 5
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v4

    iget v2, v2, Lcom/smartisanos/launcher/view/lb;->Cw:I

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v2

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/ma;->c(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v5}, Lcom/smartisanos/launcher/animations/ma;->c(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/tc;->Sp()Lcom/smartisanos/smengine/F;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/tc;->zb(Z)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/ma;->Rd()V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/animations/ma;->b(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    move v1, v0

    .line 12
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/ma;->d(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 13
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/ma;->d(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/g;

    .line 14
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v2, v6}, Lcom/smartisanos/launcher/view/a/X;->f(Lcom/smartisanos/smengine/g;F)V

    const/16 v5, 0x100

    .line 15
    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/ma;->d(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v1

    .line 18
    iget v4, v1, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    .line 19
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_3

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->e(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->e(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/animations/ma;->c(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/animations/ma;->a(Lcom/smartisanos/launcher/animations/ma;Z)Lcom/smartisanos/smengine/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/ma;->c(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->e(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/animations/ha;

    invoke-direct {v1, p0, v4}, Lcom/smartisanos/launcher/animations/ha;-><init>(Lcom/smartisanos/launcher/animations/ja;I)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 25
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ma;->e(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    goto/16 :goto_3

    .line 26
    :cond_3
    iget v5, v1, Lcom/smartisanos/launcher/a/b/i;->Ek:I

    const/4 v6, 0x2

    const/16 v7, 0x64

    if-ne v5, v6, :cond_5

    if-eq v4, v7, :cond_5

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v5

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    .line 29
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v9

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 30
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/ma;->f(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 31
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/ma;->f(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 32
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v8, v2}, Lcom/smartisanos/launcher/animations/ma;->d(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 33
    :cond_4
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v9

    sub-int/2addr v5, v3

    const v10, 0x3eb851ec    # 0.36f

    invoke-virtual {v9, v5, v10, v0, v2}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/smartisanos/launcher/animations/ma;->d(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 34
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/ma;->f(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    new-instance v5, Lcom/smartisanos/launcher/animations/ia;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/animations/ia;-><init>(Lcom/smartisanos/launcher/animations/ja;)V

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 35
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ma;->f(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    .line 36
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v2, 0x100000

    invoke-virtual {p0, v2, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    if-eq v4, v3, :cond_8

    if-eq v4, v6, :cond_8

    const/4 p0, 0x3

    if-eq v4, p0, :cond_8

    const/4 p0, 0x4

    if-eq v4, p0, :cond_8

    if-eq v4, v7, :cond_7

    const/16 p0, 0x65

    if-ne v4, p0, :cond_6

    goto :goto_2

    .line 37
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown sort action ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_7
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/animations/ma;->access$1500()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "unLockHardKey for sort confirm finish"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 39
    iget p0, v1, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    if-ne p0, v7, :cond_9

    .line 40
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    goto :goto_3

    .line 42
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    :cond_9
    :goto_3
    return-void
.end method
