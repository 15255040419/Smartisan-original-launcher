.class Lcom/smartisanos/launcher/Ba;
.super Lcom/smartisanos/smengine/n;
.source "LauncherTracker.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/Da;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/Da;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/Ba;->this$0:Lcom/smartisanos/launcher/Da;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/Ba;->this$0:Lcom/smartisanos/launcher/Da;

    invoke-static {v2}, Lcom/smartisanos/launcher/Da;->a(Lcom/smartisanos/launcher/Da;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/Ba;->this$0:Lcom/smartisanos/launcher/Da;

    invoke-static {v2}, Lcom/smartisanos/launcher/Da;->b(Lcom/smartisanos/launcher/Da;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/Ba;->this$0:Lcom/smartisanos/launcher/Da;

    invoke-static {v2, v0, v1}, Lcom/smartisanos/launcher/Da;->a(Lcom/smartisanos/launcher/Da;J)J

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/Ba;->this$0:Lcom/smartisanos/launcher/Da;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/Da;->a(Lcom/smartisanos/launcher/Da;Z)Z

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/Ba;->this$0:Lcom/smartisanos/launcher/Da;

    invoke-static {v0}, Lcom/smartisanos/launcher/Da;->c(Lcom/smartisanos/launcher/Da;)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/Ba;->this$0:Lcom/smartisanos/launcher/Da;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    .line 7
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/Da;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "### flushAllStatusInTime"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
