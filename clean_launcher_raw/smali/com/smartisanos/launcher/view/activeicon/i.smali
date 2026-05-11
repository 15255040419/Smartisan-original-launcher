.class Lcom/smartisanos/launcher/view/activeicon/i;
.super Lcom/smartisanos/smengine/a;
.source "CalendarView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/activeicon/m;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->h(Lcom/smartisanos/launcher/view/activeicon/m;)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->g(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->b(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->f(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->c(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->e(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->e(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->f(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->c(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->c(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->c(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/i;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->c(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method
