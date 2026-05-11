.class public Lcom/smartisanos/smengine/z;
.super Ljava/lang/Object;
.source "MeshManager.java"


# instance fields
.field private hF:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/z;->hF:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public Fa(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/z;->hF:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/smartisanos/smengine/z;->hF:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/y;

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/y;->za(Z)V

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/z;->hF:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/y;

    return-object p0
.end method

.method public Ha(Ljava/lang/String;)Lcom/smartisanos/smengine/y;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/z;->hF:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/y;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/y;->Aa(Z)V

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clearAll()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/z;->hF:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/y;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/y;->Aa(Z)V

    .line 2
    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/y;->setName(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/z;->hF:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/y;

    return-object p0
.end method

.method public b(Lcom/smartisanos/smengine/y;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/z;->hF:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/smartisanos/smengine/z;->hF:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/y;

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/y;->Aa(Z)V

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/smengine/y;->clearAll()V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/smengine/z;->hF:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
