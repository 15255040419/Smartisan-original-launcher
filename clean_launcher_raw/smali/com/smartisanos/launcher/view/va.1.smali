.class Lcom/smartisanos/launcher/view/va;
.super Lcom/smartisanos/smengine/n;
.source "DownloadWithWaveView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/va;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Ca;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "### onclick now is downloading, will set to pause"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/va;->this$0:Lcom/smartisanos/launcher/view/Ca;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Ca;->AL:Z

    return-void
.end method
