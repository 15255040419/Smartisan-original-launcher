.class Lcom/smartisanos/securitycenter/widget/r;
.super Ljava/lang/Object;
.source "SecurityControlView.java"

# interfaces
.implements Lcom/smartisanos/securitycenter/b/i;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->W()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->P(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->o(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->e(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->a(JZ)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ca()V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->g(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->h(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->F(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/b/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->F(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/b/g;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v2}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->t(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/smartisanos/securitycenter/b/g;->a(IZ)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->G(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/d/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/d/q;->reset()V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->H(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/d/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/d/l;->reset()V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->I(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->P(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->j(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)Z

    .line 11
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->B(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->J(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->hide()V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->W()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->P(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->h(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ja()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->E(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->q(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->C(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->k(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 10
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->W()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 12
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->C(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->W()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->P(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->l(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ia()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->E(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->q(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->C(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->k(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->W()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->C(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->G(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/d/q;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/r;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->L(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/b/h;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/b/h;)V

    :cond_1
    :goto_0
    return-void
.end method
