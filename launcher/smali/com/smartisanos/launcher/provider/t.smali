.class Lcom/smartisanos/launcher/provider/t;
.super Lcom/smartisanos/smengine/a;
.source "SidebarFolderProvider.java"


# instance fields
.field final synthetic eB:Lcom/smartisanos/launcher/view/a/ka;

.field final synthetic this$1:Lcom/smartisanos/launcher/provider/u;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/u;Lcom/smartisanos/launcher/view/a/ka;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/t;->this$1:Lcom/smartisanos/launcher/provider/u;

    iput-object p2, p0, Lcom/smartisanos/launcher/provider/t;->eB:Lcom/smartisanos/launcher/view/a/ka;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/provider/s;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/provider/s;-><init>(Lcom/smartisanos/launcher/provider/t;I)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
