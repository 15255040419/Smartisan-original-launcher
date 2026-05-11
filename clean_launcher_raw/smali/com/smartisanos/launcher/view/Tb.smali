.class Lcom/smartisanos/launcher/view/Tb;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Tb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Tb;->this$0:Lcom/smartisanos/launcher/view/ec;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Tb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->e(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Tb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/ec;->e(Lcom/smartisanos/launcher/view/ec;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->zn()I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Tb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/ec;->f(Lcom/smartisanos/launcher/view/ec;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Gg()V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Tb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/view/ec;->a(Lcom/smartisanos/launcher/view/ec;I)I

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Tb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/view/ec;->b(Lcom/smartisanos/launcher/view/ec;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    :cond_1
    return-void
.end method
