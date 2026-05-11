.class Lcom/smartisanos/securitycenter/widget/o;
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
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/securitycenter/widget/a/s;->qa(Z)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->u(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->v(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->Q()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/a/s;->lockoutFaceId()V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->v(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->v(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->reset()V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->v(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->hide()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->u(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->v(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->show()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->v(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->R()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->v(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->w(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/b/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->a(Lcom/smartisanos/securitycenter/b/f;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->h(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->i(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)Z

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/widget/a/s;->qa(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->u(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/o;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->v(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->S()V

    :cond_0
    return-void
.end method
