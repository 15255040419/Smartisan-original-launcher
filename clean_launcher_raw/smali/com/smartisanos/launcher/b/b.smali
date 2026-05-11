.class Lcom/smartisanos/launcher/b/b;
.super Lcom/smartisanos/smengine/n;
.source "NetworkHandler.java"


# instance fields
.field final synthetic VD:Ljava/lang/String;

.field final synthetic val$item:Lcom/smartisanos/launcher/data/ItemInfo;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/b/b;->VD:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/b/b;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/b/b;->VD:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->K(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/b/d;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse color error by string : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/b/b;->VD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/b/b;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/b/b;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/smartisanos/launcher/data/z;

    iget-object p0, p0, Lcom/smartisanos/launcher/b/b;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, v0}, Lcom/smartisanos/launcher/data/z;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 7
    invoke-static {v1}, Lcom/smartisanos/launcher/data/z;->b(Lcom/smartisanos/launcher/data/z;)V

    return-void
.end method
