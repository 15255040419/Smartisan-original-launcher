.class Lcom/smartisanos/securitycenter/d/r;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintVerifier.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/d/s;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/d/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/r;->this$0:Lcom/smartisanos/securitycenter/d/s;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/smartisanos/securitycenter/d/r;->this$0:Lcom/smartisanos/securitycenter/d/s;

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/d/l;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/r;->this$0:Lcom/smartisanos/securitycenter/d/s;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/d/l;->za(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/d/r;->this$0:Lcom/smartisanos/securitycenter/d/s;

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/d/l;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/r;->this$0:Lcom/smartisanos/securitycenter/d/s;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->qj()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/r;->this$0:Lcom/smartisanos/securitycenter/d/s;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/smartisanos/securitycenter/d/l;->ya(Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/r;->this$0:Lcom/smartisanos/securitycenter/d/s;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->sj()V

    return-void
.end method
