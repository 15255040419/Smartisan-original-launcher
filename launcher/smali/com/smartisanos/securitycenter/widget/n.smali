.class Lcom/smartisanos/securitycenter/widget/n;
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
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/securitycenter/widget/a/s;->sa(Z)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ca()V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ka()V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->e(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/c/c;->oj()V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const-wide/16 v0, 0x190

    invoke-static {p0, v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;J)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/a/s;->lockoutPin()V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->K(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->b(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->K(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->g(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ca()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ma()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->g(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->K(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->K(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/a/s;->wj()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v2}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->g(Z)V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v2}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->a(JZ)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->l(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->m(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ia()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->h(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->n(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ja()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->la()V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->g(Z)V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->o(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->K(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->e(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->p(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->q(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    :cond_4
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->h(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->i(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)Z

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/n;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/securitycenter/widget/a/s;->sa(Z)V

    :cond_0
    return-void
.end method
