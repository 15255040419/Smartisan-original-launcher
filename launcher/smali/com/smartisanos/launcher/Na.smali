.class Lcom/smartisanos/launcher/Na;
.super Ljava/lang/Object;
.source "Launchpad.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ai:Z

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic xi:Ljava/lang/String;

.field final synthetic yi:I

.field final synthetic zi:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/Na;->xi:Ljava/lang/String;

    iput p2, p0, Lcom/smartisanos/launcher/Na;->yi:I

    iput-object p3, p0, Lcom/smartisanos/launcher/Na;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/smartisanos/launcher/Na;->zi:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/smartisanos/launcher/Na;->Ai:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/Na;->xi:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/data/a/l;->c(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 5
    iget-wide v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/Qa;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/smartisanos/launcher/Na;->yi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " itemTemp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1}, Lcom/smartisanos/launcher/data/a/h;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 9
    iget-wide v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 11
    iput-object v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launcherError itemTemp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance v1, Lcom/smartisanos/launcher/data/z;

    iget-object v2, p0, Lcom/smartisanos/launcher/Na;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/smartisanos/launcher/Na;->yi:I

    invoke-direct {v1, v2, v3, v0}, Lcom/smartisanos/launcher/data/z;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/Na;->zi:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 15
    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    move-result-object v0

    iput-object v0, v1, Lcom/smartisanos/launcher/data/z;->Lq:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 16
    :cond_4
    iget-boolean p0, p0, Lcom/smartisanos/launcher/Na;->Ai:Z

    iput-boolean p0, v1, Lcom/smartisanos/launcher/data/z;->Mq:Z

    .line 17
    invoke-static {v1}, Lcom/smartisanos/launcher/data/z;->b(Lcom/smartisanos/launcher/data/z;)V

    return-void
.end method
