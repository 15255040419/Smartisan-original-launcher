.class Lcom/smartisanos/launcher/view/a/j;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic DB:Lcom/smartisanos/smengine/a;

.field final synthetic EB:Lcom/smartisanos/launcher/view/b/M;

.field final synthetic FB:Lcom/smartisanos/smengine/a/j;

.field final synthetic GB:I

.field final synthetic HB:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/a;Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/a/j;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/a/j;->DB:Lcom/smartisanos/smengine/a;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    iput-object p4, p0, Lcom/smartisanos/launcher/view/a/j;->FB:Lcom/smartisanos/smengine/a/j;

    iput p5, p0, Lcom/smartisanos/launcher/view/a/j;->GB:I

    iput-boolean p6, p0, Lcom/smartisanos/launcher/view/a/j;->HB:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onBegin()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->DB:Lcom/smartisanos/smengine/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/a;->onBegin()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Gm()V

    return-void
.end method

.method public onComplete()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->DB:Lcom/smartisanos/smengine/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 4
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "#### cell up on page,printCellLayer."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->m(Lcom/smartisanos/smengine/SceneNode;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCellReleaseBackToPageTimeline complete mCell = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCellReleaseBackToPageTimeline complete targetPage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 15
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->FB:Lcom/smartisanos/smengine/a/j;

    goto :goto_0

    .line 17
    :cond_3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, " targetPage getPageView is null"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 19
    iget v5, p0, Lcom/smartisanos/launcher/view/a/j;->GB:I

    aget-object v0, v0, v5

    .line 20
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v5, v6, v7, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->pageCellSizeScale:[Lcom/smartisanos/smengine/a/i;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Dl()I

    move-result v5

    aget-object v0, v0, v5

    .line 23
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    iget v6, v0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v5, v6, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Tm()V

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 32
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const v6, 0x3dcccccd    # 0.1f

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 33
    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 34
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    if-eqz v0, :cond_a

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 37
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 39
    :cond_9
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_a

    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 41
    :cond_a
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Pn()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    const-string v5, "??? why does flag rect no parent????????????????"

    const/high16 v7, 0x8000000

    if-eqz v0, :cond_f

    .line 43
    iget-object v8, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v8

    if-nez v8, :cond_b

    .line 45
    iget-object v8, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 46
    :cond_b
    iget-object v8, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 47
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/launcher/view/Mc;->setColor(FFFF)V

    goto :goto_1

    .line 48
    :cond_c
    iget-object v8, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 49
    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/smartisanos/launcher/view/Mc;->setColor(FFFF)V

    .line 50
    :cond_d
    :goto_1
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    if-nez v8, :cond_f

    .line 51
    sget-boolean v8, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/va;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 52
    :cond_e
    iget-object v8, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 53
    :cond_f
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/16 v8, 0x200

    if-eqz v0, :cond_15

    .line 54
    iget-object v9, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v9

    iget-object v9, v9, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v9, v9, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-nez v9, :cond_13

    .line 55
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v9

    if-nez v9, :cond_10

    .line 56
    iget-object v9, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v9

    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    invoke-virtual {v9, v8, v10}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 57
    :cond_10
    iget-object v9, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 58
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_2

    .line 59
    :cond_11
    iget-object v9, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 60
    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 61
    :cond_12
    :goto_2
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 62
    :cond_13
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    if-nez v9, :cond_15

    .line 63
    sget-boolean v9, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/va;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 64
    :cond_14
    iget-object v9, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 65
    :cond_15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 66
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v7

    if-nez v7, :cond_16

    .line 67
    iget-object v7, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v7

    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 68
    :cond_16
    iget-object v7, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 69
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_3

    .line 70
    :cond_17
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/j;->EB:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 71
    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 72
    :cond_18
    :goto_3
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 73
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 74
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/va;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 75
    :cond_19
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 76
    :cond_1a
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 77
    :cond_1b
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Fq()V

    .line 78
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->fl()V

    .line 79
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 80
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iput-boolean v4, v0, Lcom/smartisanos/launcher/view/a/g;->wH:Z

    .line 81
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->Ta(Z)V

    .line 82
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Eb;->W(Z)V

    .line 83
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 84
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/a/X;->c(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 85
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    .line 86
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v3

    if-ne v3, v1, :cond_1c

    .line 87
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    goto :goto_4

    .line 88
    :cond_1c
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Tl()I

    move-result v0

    if-nez v0, :cond_1d

    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/j;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 90
    :cond_1d
    :goto_4
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/j;->HB:Z

    if-eqz p0, :cond_1e

    .line 91
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Eq()V

    :cond_1e
    return-void
.end method
