.class Lcom/smartisanos/launcher/a/ha;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private Yj:Ljava/util/List;

.field final synthetic this$1:Lcom/smartisanos/launcher/a/na;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/a/na;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/ha;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/a/ha;->Yj:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/a/ha;->Yj:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string p2, "RemoveMultiAppsOnClickListener onClick"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$100()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/a/ha;->Yj:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/a/ha;->Yj:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->laa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 8
    new-instance p1, Lcom/smartisanos/launcher/a/ga;

    const/16 v0, 0x64

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/a/ga;-><init>(Lcom/smartisanos/launcher/a/ha;I)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/a/ha;->Yj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 11
    iget-byte v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/a/ha;->this$1:Lcom/smartisanos/launcher/a/na;

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/a/na;->a(Lcom/smartisanos/launcher/a/na;Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->daa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0, v1, v3}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/a/ha;->Yj:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 17
    iget-byte p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez p1, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 18
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/Da;->O(I)V

    return-void

    .line 19
    :cond_6
    :goto_2
    invoke-static {p2}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    return-void
.end method
