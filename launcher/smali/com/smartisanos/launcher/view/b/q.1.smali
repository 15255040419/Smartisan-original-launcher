.class Lcom/smartisanos/launcher/view/b/q;
.super Lcom/smartisanos/smengine/a;
.source "FolderPageView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->u()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->fb(I)Lcom/smartisanos/smengine/F;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/q;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/t;->f(Lcom/smartisanos/launcher/view/b/t;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->u()Lcom/smartisanos/smengine/F;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
