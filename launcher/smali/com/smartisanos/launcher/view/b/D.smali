.class Lcom/smartisanos/launcher/view/b/D;
.super Lcom/smartisanos/smengine/a;
.source "Page.java"


# instance fields
.field final synthetic bC:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/D;->this$0:Lcom/smartisanos/launcher/view/b/M;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/D;->bC:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onBegin()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/D;->bC:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method public onEnd()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onEnd()V

    return-void
.end method
