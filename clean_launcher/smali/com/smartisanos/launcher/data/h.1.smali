.class Lcom/smartisanos/launcher/data/h;
.super Lcom/smartisanos/smengine/n;
.source "DatabaseHandler.java"


# instance fields
.field final synthetic ND:Ljava/lang/String;

.field final synthetic OD:I

.field final synthetic PD:Ljava/util/ArrayList;

.field final synthetic QD:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/h;->ND:Ljava/lang/String;

    iput p3, p0, Lcom/smartisanos/launcher/data/h;->OD:I

    iput-object p4, p0, Lcom/smartisanos/launcher/data/h;->PD:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/smartisanos/launcher/data/h;->QD:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/h;->ND:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/launcher/Aa;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->af()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    iget v4, p0, Lcom/smartisanos/launcher/data/h;->OD:I

    if-ne v3, v4, :cond_1

    .line 6
    move-object v3, v2

    check-cast v3, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/smartisanos/launcher/data/h;->PD:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/data/h;->QD:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 14
    :cond_4
    new-instance v0, Lcom/smartisanos/launcher/data/z;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/h;->ND:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2, v1}, Lcom/smartisanos/launcher/data/z;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 15
    invoke-static {v0}, Lcom/smartisanos/launcher/data/z;->b(Lcom/smartisanos/launcher/data/z;)V

    :cond_5
    :goto_1
    return-void
.end method
