.class Lcom/smartisanos/launcher/s;
.super Ljava/lang/Object;
.source "ActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/s;->this$0:Lcom/smartisanos/launcher/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/J;->Wf:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "Sensor is registered but Launcher not resume, unregister"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/s;->this$0:Lcom/smartisanos/launcher/J;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->fb()V

    :cond_0
    return-void
.end method
