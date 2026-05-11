.class Lcom/smartisanos/securitycenter/widget/w;
.super Lcom/smartisanos/securitycenter/b/a;
.source "SecurityControlView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/w;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/w;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->r(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/w;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->z(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/w;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->k(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/w;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->r(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/w;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->z(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
