.class Lcom/smartisanos/launcher/view/ua;
.super Ljava/lang/Object;
.source "DownloadWithWaveView.java"

# interfaces
.implements Lcom/smartisanos/launcher/animations/a/g;


# instance fields
.field final synthetic kv:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ua;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/ua;->kv:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ua;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/launcher/view/ua;->kv:Lcom/smartisanos/smengine/SceneNode;

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    instance-of p1, p1, Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ua;->this$0:Lcom/smartisanos/launcher/view/Ca;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public startScroll(I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ua;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/Ca;->yL:Lcom/smartisanos/smengine/SceneNode;

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/launcher/view/ua;->kv:Lcom/smartisanos/smengine/SceneNode;

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    instance-of p1, p1, Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ua;->this$0:Lcom/smartisanos/launcher/view/Ca;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ca;->setVisibility(Z)V

    :cond_0
    return-void
.end method
