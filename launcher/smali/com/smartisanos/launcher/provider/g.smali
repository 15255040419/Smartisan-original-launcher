.class Lcom/smartisanos/launcher/provider/g;
.super Lcom/smartisanos/smengine/n;
.source "DownloadManagerDelegate.java"


# instance fields
.field final synthetic YD:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/smartisanos/launcher/provider/h;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/h;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/g;->this$0:Lcom/smartisanos/launcher/provider/h;

    iput-object p3, p0, Lcom/smartisanos/launcher/provider/g;->YD:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/g;->YD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/g;->YD:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/g;->YD:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->c([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "com.smartisanos.launcher.theme"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->access$400()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDownload pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/g;->YD:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->a([Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
