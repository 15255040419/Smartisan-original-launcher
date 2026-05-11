.class Lcom/smartisanos/launcher/view/qb;
.super Lcom/smartisanos/smengine/n;
.source "MainView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/qb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/qb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->_h()V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/qb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    return-void
.end method
