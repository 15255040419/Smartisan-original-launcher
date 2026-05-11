.class Lcom/smartisanos/launcher/view/a/t;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/t;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/t;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/ga;->ma(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/t;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/t;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/t;->this$0:Lcom/smartisanos/launcher/view/a/X;

    const/16 v0, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/t;->this$0:Lcom/smartisanos/launcher/view/a/X;

    const/16 v0, 0x100

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    return-void
.end method
