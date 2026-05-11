.class Lcom/smartisanos/launcher/view/b/X;
.super Lcom/smartisanos/smengine/a;
.source "PageView.java"


# instance fields
.field final synthetic dC:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/fa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/fa;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/X;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/X;->dC:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/X;->dC:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/b/fa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### remove index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/X;->dC:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/X;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/b/X;->dC:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/b/fa;->dc(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/X;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/X;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->jr()I

    move-result v1

    mul-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/b/X;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->Zb(I)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/X;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->s(Lcom/smartisanos/launcher/view/b/M;)V

    return-void
.end method
