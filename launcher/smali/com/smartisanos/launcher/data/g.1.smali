.class Lcom/smartisanos/launcher/data/g;
.super Lcom/smartisanos/smengine/n;
.source "DatabaseHandler.java"


# instance fields
.field final synthetic MD:Ljava/util/Map;


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/g;->MD:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/g;->MD:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/data/g;->MD:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->qc()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/g;->MD:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->ag()V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Sf()V

    return-void
.end method
