.class Lcom/smartisanos/launcher/a/B;
.super Lcom/smartisanos/smengine/n;
.source "LargeCreateFolderDialog.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/a/C;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/C;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/B;->this$1:Lcom/smartisanos/launcher/a/C;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/a/B;->this$1:Lcom/smartisanos/launcher/a/C;

    iget-object v1, v1, Lcom/smartisanos/launcher/a/C;->this$0:Lcom/smartisanos/launcher/a/G;

    invoke-static {v1}, Lcom/smartisanos/launcher/a/G;->b(Lcom/smartisanos/launcher/a/G;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/ec;->g(Ljava/util/ArrayList;)V

    .line 6
    new-instance v1, Lcom/smartisanos/launcher/a/A;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/a/A;-><init>(Lcom/smartisanos/launcher/a/B;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/ec;->a(Ljava/lang/Runnable;Z)Lcom/smartisanos/smengine/g;

    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/a/B;->this$1:Lcom/smartisanos/launcher/a/C;

    iget-object p0, p0, Lcom/smartisanos/launcher/a/C;->this$0:Lcom/smartisanos/launcher/a/G;

    invoke-static {p0}, Lcom/smartisanos/launcher/a/G;->b(Lcom/smartisanos/launcher/a/G;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->tn()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->_a(Z)V

    const/high16 v3, 0x10000

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/view/b/fa;->p(Lcom/smartisanos/launcher/view/b/M;)I

    move-result p0

    .line 14
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v3

    if-eq p0, v3, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v3

    invoke-virtual {v1, v3, p0}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    const v3, 0x3eb851ec    # 0.36f

    const/4 v4, 0x0

    .line 16
    invoke-virtual {v1, p0, v3, v2, v4}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "## The page is full??"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
