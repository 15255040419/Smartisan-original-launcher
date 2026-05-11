.class Lcom/smartisanos/launcher/view/Va;
.super Lcom/smartisanos/smengine/a;
.source "FloatPageNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/bb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/bb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_3X3_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;Z)Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/bb;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/M;->Mn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/bb;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/bb;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/bb;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "in user launcher, it will carsh."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    return-void

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->e(Lcom/smartisanos/launcher/view/bb;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/tc;->Bb(Z)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->e(Lcom/smartisanos/launcher/view/bb;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    .line 18
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/tc;->Vp()V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Va;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void
.end method
