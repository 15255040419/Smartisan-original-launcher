.class Lcom/smartisanos/securitycenter/widget/C;
.super Landroid/os/CountDownTimer;
.source "UnlockerHintView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/C;->this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/C;->this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->a(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/C;->this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->la()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/C;->this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->b(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;)Lcom/smartisanos/securitycenter/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/C;->this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->b(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;)Lcom/smartisanos/securitycenter/b/c;

    move-result-object p0

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/b/c;->onFinish()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/C;->this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-static {p0, p1, p2}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->a(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;J)V

    return-void
.end method
