.class Lcom/smartisanos/launcher/view/Na;
.super Lcom/smartisanos/smengine/n;
.source "EditTitleDialog.java"


# instance fields
.field final synthetic iE:Ljava/lang/String;

.field final synthetic this$1:Lcom/smartisanos/launcher/view/Oa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Oa;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Na;->this$1:Lcom/smartisanos/launcher/view/Oa;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/Na;->iE:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Na;->this$1:Lcom/smartisanos/launcher/view/Oa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Oa;->nv:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Na;->this$1:Lcom/smartisanos/launcher/view/Oa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Oa;->nv:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Na;->iE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->Qa(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Na;->this$1:Lcom/smartisanos/launcher/view/Oa;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Oa;->nv:Ljava/lang/Object;

    check-cast v1, Lcom/smartisanos/launcher/view/b/ka;

    iget v1, v1, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Na;->this$1:Lcom/smartisanos/launcher/view/Oa;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Oa;->nv:Ljava/lang/Object;

    check-cast v1, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Na;->this$1:Lcom/smartisanos/launcher/view/Oa;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Oa;->this$0:Lcom/smartisanos/launcher/view/Qa;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Qa;->a(Lcom/smartisanos/launcher/view/Qa;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/Da;->q(Z)V

    .line 9
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->XZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->Gc()V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Na;->this$1:Lcom/smartisanos/launcher/view/Oa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Oa;->nv:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Na;->iE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    sget v0, Lcom/smartisanos/launcher/ob;->folder_name:I

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Na;->this$1:Lcom/smartisanos/launcher/view/Oa;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Oa;->nv:Ljava/lang/Object;

    check-cast p0, Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/t;->updateTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Na;->this$1:Lcom/smartisanos/launcher/view/Oa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Oa;->nv:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/launcher/view/b/t;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Na;->iE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/t;->updateTitle(Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->Gc()V

    :cond_2
    :goto_1
    return-void
.end method
