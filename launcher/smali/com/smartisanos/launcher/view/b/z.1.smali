.class Lcom/smartisanos/launcher/view/b/z;
.super Lcom/smartisanos/smengine/a;
.source "Page.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/z;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/z;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/launcher/view/a/g;->setColor(FFFF)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/z;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/z;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method
