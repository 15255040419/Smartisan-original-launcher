.class Lcom/smartisanos/launcher/ga;
.super Lcom/smartisanos/smengine/n;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/ha;

.field final synthetic val$activity:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ha;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ga;->this$1:Lcom/smartisanos/launcher/ha;

    iput-object p3, p0, Lcom/smartisanos/launcher/ga;->val$activity:Ljava/lang/String;

    iput p4, p0, Lcom/smartisanos/launcher/ga;->val$uid:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/ga;->val$activity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/ga;->val$uid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5
    :cond_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/ga;->val$activity:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 8
    aget-object v3, v3, v5

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    const-string v6, "com.smartisanos.launcher"

    .line 9
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    iget-object v7, p0, Lcom/smartisanos/launcher/ga;->this$1:Lcom/smartisanos/launcher/ha;

    iget-object v7, v7, Lcom/smartisanos/launcher/ha;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {v7, v6}, Lcom/smartisanos/launcher/ja;->a(Lcom/smartisanos/launcher/ja;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    :cond_2
    invoke-static {v3}, Lcom/smartisanos/launcher/Aa;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 13
    iget v9, v8, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-eq v9, v1, :cond_4

    if-ne v9, v2, :cond_5

    if-nez v1, :cond_5

    :cond_4
    iget-object v9, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v10, v10, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    .line 14
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/smartisanos/launcher/ga;->this$1:Lcom/smartisanos/launcher/ha;

    iget-object v9, v9, Lcom/smartisanos/launcher/ha;->this$0:Lcom/smartisanos/launcher/ja;

    .line 15
    invoke-static {v9}, Lcom/smartisanos/launcher/ja;->e(Lcom/smartisanos/launcher/ja;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 16
    invoke-virtual {v8}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 17
    iget-object v9, p0, Lcom/smartisanos/launcher/ga;->this$1:Lcom/smartisanos/launcher/ha;

    iget-object v9, v9, Lcom/smartisanos/launcher/ha;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {v9, v3}, Lcom/smartisanos/launcher/ja;->a(Lcom/smartisanos/launcher/ja;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    invoke-static {v8}, Lcom/smartisanos/launcher/e/s;->k(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 19
    :cond_5
    iget-boolean v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v8, :cond_3

    .line 20
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->haa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p0, v4, v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 21
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 22
    iget-boolean v3, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-nez v3, :cond_8

    goto :goto_1

    .line 23
    :cond_8
    iget v3, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-eq v3, v1, :cond_a

    if-ne v3, v2, :cond_9

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    move v3, v5

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_b

    goto :goto_1

    .line 24
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    iget-wide v6, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v3, v6, v7}, Lcom/smartisanos/launcher/view/Eb;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    .line 25
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCellById cell:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_c
    if-eqz v3, :cond_e

    .line 26
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 27
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNewlyInstalled set false by convertContentValuesToItemInfo, name ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "], pkg ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "], cmp ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 28
    :cond_d
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iput-boolean v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 29
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->hl()V

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Eb;->n(Lcom/smartisanos/launcher/view/a/g;)V

    goto/16 :goto_1

    .line 32
    :cond_e
    iget-wide v3, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 33
    iput-boolean v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    goto/16 :goto_1

    :cond_f
    return-void
.end method
