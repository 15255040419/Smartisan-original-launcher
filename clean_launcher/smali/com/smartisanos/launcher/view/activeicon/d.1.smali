.class Lcom/smartisanos/launcher/view/activeicon/d;
.super Lcom/smartisanos/smengine/n;
.source "CalendarView.java"


# instance fields
.field final synthetic lE:I

.field final synthetic mE:I

.field final synthetic nE:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/activeicon/m;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/m;IIIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    iput p3, p0, Lcom/smartisanos/launcher/view/activeicon/d;->lE:I

    iput p4, p0, Lcom/smartisanos/launcher/view/activeicon/d;->mE:I

    iput-boolean p5, p0, Lcom/smartisanos/launcher/view/activeicon/d;->nE:Z

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/d;->lE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->b(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/view/activeicon/m;->a(Lcom/smartisanos/launcher/view/activeicon/m;ILcom/smartisanos/smengine/SceneNode;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/d;->mE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->c(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/view/activeicon/m;->a(Lcom/smartisanos/launcher/view/activeicon/m;ILcom/smartisanos/smengine/SceneNode;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->d(Lcom/smartisanos/launcher/view/activeicon/m;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/m;->setLayer(I)V

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/a;->uq()V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/d;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/activeicon/d;->nE:Z

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/m;->a(Lcom/smartisanos/launcher/view/activeicon/m;Z)V

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/c;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/activeicon/c;-><init>(Lcom/smartisanos/launcher/view/activeicon/d;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
