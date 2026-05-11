.class Lcom/smartisanos/securitycenter/widget/q;
.super Ljava/lang/Object;
.source "SecurityControlView.java"

# interfaces
.implements Lcom/smartisanos/securitycenter/b/h;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/widget/a/s;->pa(Z)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/a/s;->lockoutCloudId()V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->B(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->C(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->l(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->D(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->O(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->p(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->q(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->h(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->i(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)Z

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/q;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/securitycenter/widget/a/s;->pa(Z)V

    :cond_0
    return-void
.end method
