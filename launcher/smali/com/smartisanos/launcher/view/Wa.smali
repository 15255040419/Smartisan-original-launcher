.class Lcom/smartisanos/launcher/view/Wa;
.super Lcom/smartisanos/smengine/a;
.source "FloatPageNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/bb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/bb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/bb;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "#### float page back animation on begin"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_3X3_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->Up()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    const v2, 0x3e4ccccd    # 0.2f

    sub-float/2addr v1, v2

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/bb;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "#### float page back animation on complete"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->f(Lcom/smartisanos/launcher/view/bb;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;Z)Z

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Gn()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/bb;->e(Lcom/smartisanos/launcher/view/bb;)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 9
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v1, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/tc;->Bb(Z)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/bb;->e(Lcom/smartisanos/launcher/view/bb;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 12
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    invoke-virtual {v3, v4, v1, v1, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 13
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    .line 14
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/tc;->Xp()V

    .line 15
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/M;->mb(I)V

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->ao()V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->Cp()V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->Dp()V

    .line 19
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;Z)V

    .line 21
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Oh()V

    .line 22
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/view/bb;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v3, "## page back animation finish, set floatPageNode = null."

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/tc;->Ab(Z)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 29
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Wa;->this$0:Lcom/smartisanos/launcher/view/bb;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
