.class Lcom/smartisanos/securitycenter/widget/B;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnlockerHintView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/B;->this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/B;->this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->a(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/B;->this$0:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->a(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
