.class public final Lcom/smartisanos/launcher/view/b/ea;
.super Lcom/smartisanos/smengine/a;
.source "PageView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/fa;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ea;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ea;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Mr()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ea;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ea;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/ea;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->mm()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->u(F)I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->jh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ea;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ea;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->ah()V

    :cond_0
    return-void
.end method
