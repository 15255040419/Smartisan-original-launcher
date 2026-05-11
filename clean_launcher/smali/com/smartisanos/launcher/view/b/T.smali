.class Lcom/smartisanos/launcher/view/b/T;
.super Lcom/smartisanos/smengine/a;
.source "PageView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/fa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/T;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/T;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/b/fa;->zQ:Z

    .line 3
    iget-boolean v2, v0, Lcom/smartisanos/launcher/view/b/fa;->CQ:Z

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Rp()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/T;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->sQ:Lcom/smartisanos/launcher/view/b/P;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/P;->Fb(Z)V

    return-void
.end method
