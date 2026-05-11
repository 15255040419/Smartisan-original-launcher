.class Lcom/smartisanos/launcher/animations/D;
.super Lcom/smartisanos/smengine/a;
.source "CellUninstallAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/G;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/D;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/D;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/D;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/G;->c(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    return-void
.end method
