.class Lcom/smartisanos/launcher/view/ob;
.super Lcom/smartisanos/smengine/n;
.source "MainView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ob;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ob;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/Eb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/oa;->Hh:Z

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ob;->this$0:Lcom/smartisanos/launcher/view/Eb;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/Eb;F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ob;->this$0:Lcom/smartisanos/launcher/view/Eb;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/Eb;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
