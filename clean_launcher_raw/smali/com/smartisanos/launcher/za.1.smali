.class Lcom/smartisanos/launcher/za;
.super Lcom/smartisanos/smengine/n;
.source "LauncherModel.java"


# instance fields
.field final synthetic qi:I

.field final synthetic rD:Ljava/lang/String;

.field final synthetic sD:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/za;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/za;->rD:Ljava/lang/String;

    iput p4, p0, Lcom/smartisanos/launcher/za;->qi:I

    iput p5, p0, Lcom/smartisanos/launcher/za;->sD:I

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/za;->val$pkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/launcher/Aa;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v2

    .line 4
    iget-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/smartisanos/launcher/za;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    .line 5
    :goto_1
    iget-object v6, p0, Lcom/smartisanos/launcher/za;->rD:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 6
    iget-object v7, v1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v5

    .line 7
    :goto_3
    iget v7, p0, Lcom/smartisanos/launcher/za;->qi:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 8
    iget v9, v1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-eq v9, v7, :cond_5

    if-ne v9, v8, :cond_4

    goto :goto_4

    :cond_4
    move v7, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v7, v5

    :goto_5
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    move v6, v5

    goto :goto_6

    :cond_6
    move v6, v4

    :cond_7
    :goto_6
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 9
    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    iget v2, p0, Lcom/smartisanos/launcher/za;->sD:I

    if-eq v1, v2, :cond_0

    .line 10
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/Aa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inGL. updateMessageCount pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/za;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cpName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/za;->rD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " messageCountFinal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/launcher/za;->sD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/launcher/za;->qi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_8
    new-instance v1, Lcom/smartisanos/launcher/ya;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/ya;-><init>(Lcom/smartisanos/launcher/za;)V

    invoke-static {v1}, Lcom/smartisanos/launcher/data/A;->e(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method
