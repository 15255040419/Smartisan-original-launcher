.class Lcom/smartisanos/securitycenter/widget/a/w;
.super Lcom/smartisanos/securitycenter/c;
.source "UnlockControllerRemoteGlobal.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/widget/a/x;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/widget/a/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object v1, v0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/a/x;->a(Lcom/smartisanos/securitycenter/widget/a/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/securitycenter/widget/a/m;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/securitycenter/widget/a/m;-><init>(Lcom/smartisanos/securitycenter/widget/a/w;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object v1, v0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/a/x;->a(Lcom/smartisanos/securitycenter/widget/a/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/securitycenter/widget/a/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartisanos/securitycenter/widget/a/o;-><init>(Lcom/smartisanos/securitycenter/widget/a/w;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object v1, v0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/a/x;->a(Lcom/smartisanos/securitycenter/widget/a/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/securitycenter/widget/a/n;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/securitycenter/widget/a/n;-><init>(Lcom/smartisanos/securitycenter/widget/a/w;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p2, p1, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/a/x;->a(Lcom/smartisanos/securitycenter/widget/a/x;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/smartisanos/securitycenter/widget/a/r;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/a/r;-><init>(Lcom/smartisanos/securitycenter/b/i;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p2, p1, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/a/x;->a(Lcom/smartisanos/securitycenter/widget/a/x;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/smartisanos/securitycenter/widget/a/a;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/a/a;-><init>(Lcom/smartisanos/securitycenter/b/i;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p2, p1, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/a/x;->a(Lcom/smartisanos/securitycenter/widget/a/x;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/smartisanos/securitycenter/widget/a/q;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/a/q;-><init>(Lcom/smartisanos/securitycenter/b/i;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object v1, v0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/a/x;->a(Lcom/smartisanos/securitycenter/widget/a/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/securitycenter/widget/a/j;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/securitycenter/widget/a/j;-><init>(Lcom/smartisanos/securitycenter/widget/a/w;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic f(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    invoke-interface {p0, p1, p2}, Lcom/smartisanos/securitycenter/b/i;->a(J)V

    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object v1, v0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/a/x;->a(Lcom/smartisanos/securitycenter/widget/a/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/securitycenter/widget/a/l;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/securitycenter/widget/a/l;-><init>(Lcom/smartisanos/securitycenter/widget/a/w;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object v1, v0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/a/x;->a(Lcom/smartisanos/securitycenter/widget/a/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/securitycenter/widget/a/k;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/securitycenter/widget/a/k;-><init>(Lcom/smartisanos/securitycenter/widget/a/w;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic p(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/b/i;->f(I)V

    return-void
.end method

.method public synthetic q(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/b/i;->b(I)V

    return-void
.end method

.method public synthetic r(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/b/i;->j(I)V

    return-void
.end method

.method public synthetic s(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/b/i;->g(I)V

    return-void
.end method

.method public synthetic t(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/w;->this$0:Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->ue:Lcom/smartisanos/securitycenter/b/i;

    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/b/i;->a(I)V

    return-void
.end method
