.class public Lcom/smartisanos/securitycenter/d/s;
.super Lcom/smartisanos/securitycenter/d/l;
.source "FingerprintVerifier.java"


# instance fields
.field private rA:Landroid/os/CancellationSignal;

.field private sA:Landroid/hardware/fingerprint/FingerprintManager;

.field private tA:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private uA:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/d/l;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/s;->tA:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 3
    new-instance p1, Lcom/smartisanos/securitycenter/d/r;

    invoke-direct {p1, p0}, Lcom/smartisanos/securitycenter/d/r;-><init>(Lcom/smartisanos/securitycenter/d/s;)V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/s;->uA:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/securitycenter/d/l;->mContext:Landroid/content/Context;

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/s;->sA:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/securitycenter/b/h;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/securitycenter/d/l;->a(Lcom/smartisanos/securitycenter/b/h;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/s;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/s;->rA:Landroid/os/CancellationSignal;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/securitycenter/d/s;->rA:Landroid/os/CancellationSignal;

    new-instance v0, Lcom/smartisanos/securitycenter/d/b;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/d/b;-><init>(Lcom/smartisanos/securitycenter/d/s;)V

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/securitycenter/d/s;->sA:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/smartisanos/securitycenter/d/s;->tA:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    iget-object v3, p0, Lcom/smartisanos/securitycenter/d/s;->rA:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smartisanos/securitycenter/d/s;->uA:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->rj()V

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/d/l;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/s;->rA:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/smartisanos/securitycenter/d/l;->mStarted:Z

    .line 3
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->pj()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/securitycenter/d/l;->destroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/securitycenter/d/s;->sA:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/s;->sA:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/s;->sA:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
