.class Lcom/smartisanos/launcher/animations/b/h;
.super Lcom/smartisanos/smengine/n;
.source "SwipeAnimController.java"


# instance fields
.field final synthetic ED:F

.field final synthetic FD:F

.field final synthetic GD:F

.field final synthetic HD:Lcom/smartisanos/launcher/animations/db;

.field final synthetic JD:Lcom/smartisanos/launcher/animations/db;

.field final synthetic KD:Lcom/smartisanos/launcher/animations/db;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/b/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/b/k;IFFFLcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/b/h;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    iput p3, p0, Lcom/smartisanos/launcher/animations/b/h;->ED:F

    iput p4, p0, Lcom/smartisanos/launcher/animations/b/h;->FD:F

    iput p5, p0, Lcom/smartisanos/launcher/animations/b/h;->GD:F

    iput-object p6, p0, Lcom/smartisanos/launcher/animations/b/h;->HD:Lcom/smartisanos/launcher/animations/db;

    iput-object p7, p0, Lcom/smartisanos/launcher/animations/b/h;->JD:Lcom/smartisanos/launcher/animations/db;

    iput-object p8, p0, Lcom/smartisanos/launcher/animations/b/h;->KD:Lcom/smartisanos/launcher/animations/db;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/h;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/b/k;->c(Lcom/smartisanos/launcher/animations/b/k;Z)Z

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/h;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/animations/b/k;->d(Lcom/smartisanos/launcher/animations/b/k;Z)Z

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/h;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    iget v2, p0, Lcom/smartisanos/launcher/animations/b/h;->ED:F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/animations/b/k;->e(IF)Z

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/h;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    const/4 v1, 0x2

    iget v2, p0, Lcom/smartisanos/launcher/animations/b/h;->FD:F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/animations/b/k;->e(IF)Z

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/h;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    const/4 v1, 0x3

    iget v2, p0, Lcom/smartisanos/launcher/animations/b/h;->GD:F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/animations/b/k;->e(IF)Z

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/h;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/h;->HD:Lcom/smartisanos/launcher/animations/db;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/b/h;->JD:Lcom/smartisanos/launcher/animations/db;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/h;->KD:Lcom/smartisanos/launcher/animations/db;

    invoke-static {v0, v1, v2, p0}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V

    return-void
.end method
