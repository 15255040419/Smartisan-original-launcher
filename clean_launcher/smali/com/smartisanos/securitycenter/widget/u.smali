.class Lcom/smartisanos/securitycenter/widget/u;
.super Lcom/smartisanos/securitycenter/b/a;
.source "SecurityControlView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/u;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/u;->this$0:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->b(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
