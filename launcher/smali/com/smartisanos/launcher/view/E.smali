.class Lcom/smartisanos/launcher/view/E;
.super Lcom/smartisanos/smengine/a;
.source "DockView.java"


# instance fields
.field final synthetic Qf:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/E;->this$0:Lcom/smartisanos/launcher/view/V;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/E;->Qf:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/E;->Qf:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/E;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->m(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/E;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->m(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object v0

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/E;->Qf:Z

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
