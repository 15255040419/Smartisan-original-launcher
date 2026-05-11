.class public Lcom/smartisanos/securitycenter/widget/a/v;
.super Lcom/smartisanos/securitycenter/widget/a/s;
.source "UnlockControllerRemote.java"


# instance fields
.field private final BA:Lcom/smartisanos/securitycenter/d;

.field private mHandler:Landroid/os/Handler;

.field private zA:Lcom/smartisanos/securitycenter/PrivacySecurity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/a/s;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/smartisanos/securitycenter/widget/a/u;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/a/u;-><init>(Lcom/smartisanos/securitycenter/widget/a/v;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->BA:Lcom/smartisanos/securitycenter/d;

    .line 4
    new-instance v0, Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-direct {v0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    .line 5
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->bind()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/widget/a/v;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public synthetic Aj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->unregisterObserver()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->unbind()V

    return-void
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/c/a;->xa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->checkPassword(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    new-instance v1, Lcom/smartisanos/securitycenter/widget/a/h;

    invoke-direct {v1, p0}, Lcom/smartisanos/securitycenter/widget/a/h;-><init>(Lcom/smartisanos/securitycenter/widget/a/v;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->postOnReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    new-instance v1, Lcom/smartisanos/securitycenter/widget/a/i;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/securitycenter/widget/a/i;-><init>(Lcom/smartisanos/securitycenter/widget/a/v;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->postOnReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic h(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    new-instance v1, Lcom/smartisanos/securitycenter/b/j;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->BA:Lcom/smartisanos/securitycenter/d;

    invoke-direct {v1, p0}, Lcom/smartisanos/securitycenter/b/j;-><init>(Lcom/smartisanos/securitycenter/d;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->registerObserver(Lcom/smartisanos/securitycenter/d;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public isSecurityOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isSecurityOn()Z

    move-result p0

    return p0
.end method

.method public lockoutCloudId()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->lockoutCloudId()V

    return-void
.end method

.method public lockoutFaceId()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->lockoutFaceId()V

    return-void
.end method

.method public lockoutFingerprint()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->lockoutFingerprint()V

    return-void
.end method

.method public lockoutPin()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->lockoutPin()V

    return-void
.end method

.method public pa(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->reportCloudIdUnlockResult(Z)V

    return-void
.end method

.method public qa(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->reportFaceIdUnlockResult(Z)V

    return-void
.end method

.method public ra(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->reportFingerprintUnlockResult(Z)V

    return-void
.end method

.method public sa(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->reportPinUnlockResult(Z)V

    return-void
.end method

.method public uj()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getFaceIdLockoutCountdown()J

    move-result-wide v0

    return-wide v0
.end method

.method public vj()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getFingerprintLockoutCountdown()J

    move-result-wide v0

    return-wide v0
.end method

.method public wj()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getPinLockoutCountdown()J

    move-result-wide v0

    return-wide v0
.end method

.method public xj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->xA:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isCloudIdUnlockOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public yj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->wA:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isFaceIdUnlockOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public zj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->vA:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/v;->zA:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isFingerprintUnlockOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
