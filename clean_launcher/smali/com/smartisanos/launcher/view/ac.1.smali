.class Lcom/smartisanos/launcher/view/ac;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ac;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ac;->this$0:Lcom/smartisanos/launcher/view/ec;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;Z)Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ac;->this$0:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Jq()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Fq()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Pr()V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qr()V

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ac;->this$0:Lcom/smartisanos/launcher/view/ec;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/ec;->c(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ac;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    return-void
.end method
