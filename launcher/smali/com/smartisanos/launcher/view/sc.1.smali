.class Lcom/smartisanos/launcher/view/sc;
.super Lcom/smartisanos/smengine/q;
.source "PageTitleView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/tc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/tc;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/sc;->this$0:Lcom/smartisanos/launcher/view/tc;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/smartisanos/smengine/q;-><init>(Lcom/smartisanos/smengine/SceneNode;I)V

    return-void
.end method


# virtual methods
.method public o(F)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lcom/smartisanos/smengine/c;->mIsStarted:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p0, Lcom/smartisanos/smengine/q;->xC:I

    iget v0, p0, Lcom/smartisanos/smengine/q;->wC:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_2

    .line 3
    iput-boolean v1, p0, Lcom/smartisanos/smengine/c;->qC:Z

    .line 4
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->sC:Lcom/smartisanos/smengine/a;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->onEnd()V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/q;->yC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/smengine/q;->sc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/SceneNode;

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/sc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/tc;->h(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;

    move-result-object v2

    const-string v3, "/"

    if-ne v0, v2, :cond_3

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/sc;->this$0:Lcom/smartisanos/launcher/view/tc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/smartisanos/smengine/q;->zC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/tc;->Sa(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/sc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/tc;->j(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/smengine/F;

    move-result-object v2

    if-ne v0, v2, :cond_4

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/sc;->this$0:Lcom/smartisanos/launcher/view/tc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/smartisanos/smengine/q;->zC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/tc;->Ta(Ljava/lang/String;)V

    .line 13
    :cond_4
    :goto_0
    iget p1, p0, Lcom/smartisanos/smengine/q;->xC:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/smartisanos/smengine/q;->xC:I

    return-void
.end method
