.class Lcom/smartisanos/launcher/receiver/d;
.super Lcom/smartisanos/smengine/n;
.source "DataDumpReceiver.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/d;->this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v1, Lcom/smartisanos/launcher/receiver/i;

    invoke-direct {v1}, Lcom/smartisanos/launcher/receiver/i;-><init>()V

    const-string v2, "root"

    .line 5
    iput-object v2, v1, Lcom/smartisanos/launcher/receiver/i;->info:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result p0

    .line 8
    new-instance v1, Lcom/smartisanos/launcher/receiver/i;

    invoke-direct {v1}, Lcom/smartisanos/launcher/receiver/i;-><init>()V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status bar layer ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisanos/launcher/receiver/i;->info:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 13
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    .line 14
    new-instance v4, Lcom/smartisanos/launcher/receiver/i;

    invoke-direct {v4}, Lcom/smartisanos/launcher/receiver/i;-><init>()V

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "page, index ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/smartisanos/launcher/receiver/i;->info:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
