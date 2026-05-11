.class Lcom/smartisanos/launcher/data/j;
.super Lcom/smartisanos/smengine/n;
.source "DatabaseHandler.java"


# instance fields
.field final synthetic Jq:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/j;->Jq:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/j;->Jq:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/launcher/Aa;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 4
    iget v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/data/z;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/j;->Jq:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2, v1}, Lcom/smartisanos/launcher/data/z;-><init>(Ljava/lang/String;ILjava/util/List;)V

    const/4 p0, 0x1

    .line 8
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/data/z;->a(Lcom/smartisanos/launcher/data/z;Z)V

    :cond_2
    return-void
.end method
