.class Lcom/smartisanos/launcher/data/s;
.super Lcom/smartisanos/smengine/n;
.source "DatabaseHandler.java"


# instance fields
.field final synthetic UD:Ljava/util/ArrayList;

.field final synthetic val$item:Lcom/smartisanos/launcher/data/ItemInfo;


# direct methods
.method constructor <init>(ILcom/smartisanos/launcher/data/ItemInfo;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/s;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/s;->UD:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/s;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/data/s;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-nez v1, :cond_0

    .line 3
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v2

    const-string v3, "updateIconWithDoppelgangerApp parse color error by item.color"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_3

    .line 4
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIconWithDoppelgangerApp handleEventUpdateIcon update icon for id ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/data/s;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 8
    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/data/s;->UD:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "wangdongError database error. if itemInfo == null, item\'s userId is NULL"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
