.class Lcom/smartisanos/launcher/view/a/A;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic Qf:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/A;->this$0:Lcom/smartisanos/launcher/view/a/X;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/a/A;->Qf:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/A;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public onBegin()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/A;->this$0:Lcom/smartisanos/launcher/view/a/X;

    const/16 v1, 0x800

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/A;->Qf:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/A;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/A;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    const/16 v0, 0x200

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    :cond_0
    return-void
.end method
