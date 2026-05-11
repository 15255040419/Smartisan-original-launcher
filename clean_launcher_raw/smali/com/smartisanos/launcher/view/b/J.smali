.class Lcom/smartisanos/launcher/view/b/J;
.super Lcom/smartisanos/smengine/a;
.source "Page.java"


# instance fields
.field final synthetic ZB:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/M;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/J;->this$0:Lcom/smartisanos/launcher/view/b/M;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/b/J;->ZB:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/J;->ZB:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/J;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/M;->h(Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/b/J;->ZB:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/J;->this$0:Lcom/smartisanos/launcher/view/b/M;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->a(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
