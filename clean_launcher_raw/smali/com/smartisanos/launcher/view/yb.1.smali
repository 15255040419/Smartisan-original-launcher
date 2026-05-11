.class Lcom/smartisanos/launcher/view/yb;
.super Lcom/smartisanos/smengine/n;
.source "MainView.java"


# instance fields
.field final synthetic jE:Z

.field final synthetic this$1:Lcom/smartisanos/launcher/view/zb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/zb;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/yb;->this$1:Lcom/smartisanos/launcher/view/zb;

    iput-boolean p3, p0, Lcom/smartisanos/launcher/view/yb;->jE:Z

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/yb;->jE:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->it()Lcom/smartisanos/smengine/J;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/J;->ba(Z)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/yb;->this$1:Lcom/smartisanos/launcher/view/zb;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/zb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->d(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    return-void
.end method
