.class Lcom/smartisanos/launcher/view/Ya;
.super Lcom/smartisanos/smengine/n;
.source "FloatPageNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/bb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/bb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ya;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ya;->this$0:Lcom/smartisanos/launcher/view/bb;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->xh()Lcom/smartisanos/smengine/n;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->xh()Lcom/smartisanos/smengine/n;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_0
    return-void
.end method
