.class Lcom/smartisanos/launcher/a/Y;
.super Lcom/smartisanos/smengine/a;
.source "UninstallApp.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/a/Z;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/Y;->this$1:Lcom/smartisanos/launcher/a/Z;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/Y;->this$1:Lcom/smartisanos/launcher/a/Z;

    iget-object v0, v0, Lcom/smartisanos/launcher/a/Z;->this$0:Lcom/smartisanos/launcher/a/oa;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/oa;->a(Lcom/smartisanos/launcher/a/oa;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/a/Y;->this$1:Lcom/smartisanos/launcher/a/Z;

    iget-object v0, v0, Lcom/smartisanos/launcher/a/Z;->this$0:Lcom/smartisanos/launcher/a/oa;

    invoke-static {v0}, Lcom/smartisanos/launcher/a/oa;->a(Lcom/smartisanos/launcher/a/oa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Sc;->l(Lcom/smartisanos/launcher/view/ec;)V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/a/X;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/a/X;-><init>(Lcom/smartisanos/launcher/a/Y;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method
