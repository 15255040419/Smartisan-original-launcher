.class Lcom/smartisanos/launcher/view/activeicon/e;
.super Lcom/smartisanos/smengine/a;
.source "CalendarView.java"


# instance fields
.field final synthetic AB:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/activeicon/m;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/m;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/e;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/activeicon/e;->AB:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/e;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/a;->uq()V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/activeicon/e;->AB:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/e;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->b(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/e;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->c(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/e;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->e(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/e;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->f(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/activeicon/e;->AB:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/e;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->c(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/e;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->b(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :goto_0
    return-void
.end method
