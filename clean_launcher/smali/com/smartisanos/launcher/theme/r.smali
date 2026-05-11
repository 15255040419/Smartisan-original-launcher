.class Lcom/smartisanos/launcher/theme/r;
.super Lcom/smartisanos/smengine/n;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic eE:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/t;

.field final synthetic vD:Lcom/smartisanos/smengine/Ea;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/t;ILjava/util/HashMap;Lcom/smartisanos/smengine/Ea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/r;->this$0:Lcom/smartisanos/launcher/theme/t;

    iput-object p3, p0, Lcom/smartisanos/launcher/theme/r;->eE:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/smartisanos/launcher/theme/r;->vD:Lcom/smartisanos/smengine/Ea;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/r;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->h(Lcom/smartisanos/launcher/theme/t;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/r;->eE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/r;->vD:Lcom/smartisanos/smengine/Ea;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v3

    if-nez v3, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/Da;

    if-eqz v1, :cond_0

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/r;->vD:Lcom/smartisanos/smengine/Ea;

    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/r;->eE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/r;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Zf()V

    :cond_2
    return-void
.end method
