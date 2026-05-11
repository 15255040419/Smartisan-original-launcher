.class Lcom/smartisanos/securitycenter/widget/A;
.super Ljava/lang/Object;
.source "SecurityControlView.java"

# interfaces
.implements Lcom/smartisanos/securitycenter/b/d;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    move-result-object v0

    array-length p1, p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->y(I)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->e(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/c/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/c/c;->playPinKeyboardSound()V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/securitycenter/widget/a/s;->checkPassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->g(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/b/h;

    move-result-object p0

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/b/h;->onSuccess()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->g(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/b/h;

    move-result-object p0

    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/b/h;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->h(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->i(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->j(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->O(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->b(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/A;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V

    return-void
.end method
