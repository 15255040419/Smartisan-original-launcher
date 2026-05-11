.class Lcom/smartisanos/launcher/data/u;
.super Lcom/smartisanos/smengine/n;
.source "DatabaseHandler.java"


# instance fields
.field final synthetic UD:Ljava/util/ArrayList;

.field final synthetic VD:Ljava/lang/String;

.field final synthetic val$item:Lcom/smartisanos/launcher/data/ItemInfo;


# direct methods
.method constructor <init>(ILcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/u;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/u;->VD:Ljava/lang/String;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/u;->UD:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/u;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/data/u;->VD:Ljava/lang/String;

    invoke-static {v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->K(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v1

    const-string v2, "]"

    if-nez v1, :cond_0

    .line 3
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse color error by string : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smartisanos/launcher/data/u;->VD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEventUpdateIcon update icon for id ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/data/u;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 7
    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/u;->UD:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/data/u;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 10
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "update icon error by item info is null, send PackageTask"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "Error database error if itemInfo == null, item\'s userId is NULL"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/data/u;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcom/smartisanos/launcher/data/z;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/u;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, v0}, Lcom/smartisanos/launcher/data/z;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 16
    invoke-static {v1}, Lcom/smartisanos/launcher/data/z;->b(Lcom/smartisanos/launcher/data/z;)V

    :goto_0
    return-void
.end method
