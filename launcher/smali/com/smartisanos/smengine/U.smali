.class Lcom/smartisanos/smengine/U;
.super Ljava/lang/Object;
.source "SceneNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public MG:F

.field public NG:F

.field final synthetic this$0:Lcom/smartisanos/smengine/SceneNode;


# direct methods
.method constructor <init>(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/U;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/U;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/U;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v0}, Lcom/smartisanos/smengine/SceneNode;->access$300(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/U;->this$0:Lcom/smartisanos/smengine/SceneNode;

    iget v1, p0, Lcom/smartisanos/smengine/U;->MG:F

    iget v2, p0, Lcom/smartisanos/smengine/U;->NG:F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->performLongClick(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/smengine/SceneNode;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "############performLongClick at = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/U;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/U;->this$0:Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->access$502(Lcom/smartisanos/smengine/SceneNode;Z)Z

    :cond_1
    return-void
.end method
