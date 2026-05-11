.class Lcom/smartisanos/launcher/animations/b/d;
.super Lcom/smartisanos/smengine/n;
.source "SwipeAnimController.java"


# instance fields
.field final synthetic DD:Lcom/smartisanos/smengine/a/j;

.field final synthetic Ei:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/b/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/b/k;ILcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/b/d;->Ei:Lcom/smartisanos/launcher/view/a/g;

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/b/d;->DD:Lcom/smartisanos/smengine/a/j;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/d;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->c(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mNeedShowCell "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/b/d;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWIPE_ANIM"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->b(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/launcher/view/a/g;Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->d(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/animations/b/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    new-instance v1, Lcom/smartisanos/launcher/animations/b/a;

    const-string v2, "backHomeAnimNode"

    invoke-direct {v1, v2}, Lcom/smartisanos/launcher/animations/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/launcher/animations/b/a;)Lcom/smartisanos/launcher/animations/b/a;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->d(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/animations/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/d;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Ol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/b/d;->DD:Lcom/smartisanos/smengine/a/j;

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/animations/b/a;->a(Ljava/lang/String;F)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->c(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "hideCellClickShadow onSwipe"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->th()V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->e(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/smengine/n;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/b/k;->e(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/smengine/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    new-instance v1, Lcom/smartisanos/launcher/animations/b/c;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2}, Lcom/smartisanos/launcher/animations/b/c;-><init>(Lcom/smartisanos/launcher/animations/b/d;I)V

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->e(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/smengine/n;

    move-result-object v0

    const-string v1, "TimeOutResetAnim"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/b/k;->e(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/smengine/n;

    move-result-object p0

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
