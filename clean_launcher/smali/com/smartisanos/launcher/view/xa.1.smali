.class Lcom/smartisanos/launcher/view/xa;
.super Ljava/lang/Object;
.source "DownloadWithWaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic As:J

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/xa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iput-wide p2, p0, Lcom/smartisanos/launcher/view/xa;->As:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/launcher/view/xa;->As:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/J;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    if-eqz v0, :cond_0

    .line 3
    iget-wide v1, p0, Lcom/smartisanos/launcher/view/xa;->As:J

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/ua;->c(Landroid/app/DownloadManager;J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Ca;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "### Download manager is null !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "### download id is -1"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
