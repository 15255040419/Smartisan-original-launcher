.class Lcom/smartisanos/launcher/provider/w;
.super Lcom/smartisanos/smengine/n;
.source "SidebarFolderProvider.java"


# instance fields
.field final synthetic _D:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic eB:Lcom/smartisanos/launcher/view/a/ka;

.field final synthetic this$1:Lcom/smartisanos/launcher/provider/x;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/x;ILcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/launcher/view/a/ka;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/w;->this$1:Lcom/smartisanos/launcher/provider/x;

    iput-object p3, p0, Lcom/smartisanos/launcher/provider/w;->_D:Lcom/smartisanos/launcher/view/a/g;

    iput-object p4, p0, Lcom/smartisanos/launcher/provider/w;->eB:Lcom/smartisanos/launcher/view/a/ka;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/w;->_D:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/w;->eB:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/a/ga;->d(Ljava/util/ArrayList;)Lcom/smartisanos/launcher/view/a/g;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/provider/w;->_D:Lcom/smartisanos/launcher/view/a/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 7
    new-instance v2, Lcom/smartisanos/smengine/A;

    invoke-direct {v2}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 8
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 11
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v0

    const-string v3, "relayoutByUninstall"

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 13
    new-instance v0, Lcom/smartisanos/launcher/provider/v;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/provider/v;-><init>(Lcom/smartisanos/launcher/provider/w;)V

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 14
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method
