.class Lcom/smartisanos/launcher/view/Ea;
.super Lcom/smartisanos/smengine/a;
.source "DragLayer.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ha;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ha;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ea;->this$0:Lcom/smartisanos/launcher/view/Ha;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "############################ onSweep II "

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ea;->this$0:Lcom/smartisanos/launcher/view/Ha;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Ha;->b(Lcom/smartisanos/launcher/view/Ha;)Lcom/smartisanos/smengine/Ba;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ba;->Hs()V

    return-void
.end method
