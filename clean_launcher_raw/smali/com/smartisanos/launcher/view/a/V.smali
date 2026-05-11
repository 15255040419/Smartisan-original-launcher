.class Lcom/smartisanos/launcher/view/a/V;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/V;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public Fj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/V;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->b(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "error! showAppNameAndFlagAnimation onKill!!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/V;->this$0:Lcom/smartisanos/launcher/view/a/X;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/V;->this$0:Lcom/smartisanos/launcher/view/a/X;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/V;->this$0:Lcom/smartisanos/launcher/view/a/X;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/V;->this$0:Lcom/smartisanos/launcher/view/a/X;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
