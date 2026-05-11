.class Lcom/smartisanos/launcher/receiver/a;
.super Lcom/smartisanos/smengine/n;
.source "DataDumpReceiver.java"


# instance fields
.field final synthetic BD:I

.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/a;->this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    iput p3, p0, Lcom/smartisanos/launcher/receiver/a;->BD:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/receiver/a;->BD:I

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Lcom/smartisanos/launcher/receiver/a;->BD:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    instance-of v0, p0, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "### dump target."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    check-cast p0, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->uo()Lcom/smartisanos/smengine/N;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->uo()Lcom/smartisanos/smengine/N;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readPixel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/N;->Ja(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ka;->uo()Lcom/smartisanos/smengine/N;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/N;->Tk()V

    :cond_2
    :goto_0
    return-void
.end method
