.class Lcom/smartisanos/launcher/provider/c;
.super Ljava/lang/Object;
.source "DownloadManagerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;

.field final synthetic ys:Ljava/lang/String;

.field final synthetic zs:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/c;->this$0:Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;

    iput-object p2, p0, Lcom/smartisanos/launcher/provider/c;->ys:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/provider/c;->zs:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/c;->ys:Ljava/lang/String;

    const-string v1, "1001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/c;->this$0:Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/c;->zs:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->a(Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/c;->ys:Ljava/lang/String;

    const-string v1, "1002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/c;->this$0:Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/c;->zs:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->a(Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->b([Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/c;->ys:Ljava/lang/String;

    const-string v1, "1003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/provider/c;->this$0:Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/c;->zs:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->a(Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->a(Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;[Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method is wrong. method = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/c;->ys:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
