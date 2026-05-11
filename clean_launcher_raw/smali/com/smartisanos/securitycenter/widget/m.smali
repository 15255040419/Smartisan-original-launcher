.class Lcom/smartisanos/securitycenter/widget/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintTipsView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/m;->this$0:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/m;->this$0:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->b(Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/m;->this$0:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->a(Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
