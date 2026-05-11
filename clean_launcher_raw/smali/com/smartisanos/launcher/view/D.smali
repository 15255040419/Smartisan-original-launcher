.class Lcom/smartisanos/launcher/view/D;
.super Lcom/smartisanos/smengine/a;
.source "DockView.java"


# instance fields
.field final synthetic jB:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    iput p2, p0, Lcom/smartisanos/launcher/view/D;->jB:I

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/D;->jB:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->m(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->n(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->m(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->n(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->m(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->n(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/D;->jB:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->m(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->n(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->m(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->n(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->m(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/D;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->n(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :goto_0
    return-void
.end method
