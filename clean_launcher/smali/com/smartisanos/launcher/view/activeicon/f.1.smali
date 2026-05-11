.class Lcom/smartisanos/launcher/view/activeicon/f;
.super Lcom/smartisanos/smengine/a;
.source "CalendarView.java"


# instance fields
.field final synthetic AB:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/activeicon/m;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/m;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/f;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/activeicon/f;->AB:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/activeicon/f;->AB:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/f;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->c(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/f;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->g(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/f;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->b(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/f;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->g(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :goto_0
    return-void
.end method
