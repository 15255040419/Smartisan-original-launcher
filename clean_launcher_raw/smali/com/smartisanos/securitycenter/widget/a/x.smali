.class public Lcom/smartisanos/securitycenter/widget/a/x;
.super Lcom/smartisanos/securitycenter/widget/a/s;
.source "UnlockControllerRemoteGlobal.java"


# instance fields
.field private final BA:Lcom/smartisanos/securitycenter/d;

.field private CA:I

.field private mHandler:Landroid/os/Handler;

.field private zA:Lcom/smartisanos/securitycenter/a/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/a/s;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/securitycenter/widget/a/x;->CA:I

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/x;->mHandler:Landroid/os/Handler;

    .line 4
    new-instance p1, Lcom/smartisanos/securitycenter/widget/a/w;

    invoke-direct {p1, p0}, Lcom/smartisanos/securitycenter/widget/a/w;-><init>(Lcom/smartisanos/securitycenter/widget/a/x;)V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/x;->BA:Lcom/smartisanos/securitycenter/d;

    .line 5
    invoke-static {}, Lcom/smartisanos/securitycenter/a/l;->getInstance()Lcom/smartisanos/securitycenter/a/l;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/smartisanos/securitycenter/a/l;->bind(Landroid/content/Context;)Lcom/smartisanos/securitycenter/a/l;

    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/widget/a/x;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->CA:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->CA:I

    .line 3
    :cond_0
    iget p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->CA:I

    return p0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/c/a;->xa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/a/l;->checkPassword(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/a/x;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/securitycenter/a/l;->Ga(I)V

    return-void
.end method

.method public g(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    new-instance v1, Lcom/smartisanos/securitycenter/widget/a/p;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/securitycenter/widget/a/p;-><init>(Lcom/smartisanos/securitycenter/widget/a/x;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/a/l;->postOnReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic i(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/a/x;->getId()I

    move-result v1

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->BA:Lcom/smartisanos/securitycenter/d;

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/securitycenter/a/l;->a(ILcom/smartisanos/securitycenter/d;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public isSecurityOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->isSecurityOn()Z

    move-result p0

    return p0
.end method

.method public lockoutCloudId()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->lockoutCloudId()V

    return-void
.end method

.method public lockoutFaceId()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->lockoutFaceId()V

    return-void
.end method

.method public lockoutFingerprint()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->lockoutFingerprint()V

    return-void
.end method

.method public lockoutPin()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->lockoutPin()V

    return-void
.end method

.method public pa(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/a/l;->reportCloudIdUnlockResult(Z)V

    return-void
.end method

.method public qa(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/a/l;->reportFaceIdUnlockResult(Z)V

    return-void
.end method

.method public ra(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/a/l;->reportFingerprintUnlockResult(Z)V

    return-void
.end method

.method public sa(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/a/l;->reportPinUnlockResult(Z)V

    return-void
.end method

.method public uj()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->getFaceIdLockoutCountdown()J

    move-result-wide v0

    return-wide v0
.end method

.method public vj()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->getFingerprintLockoutCountdown()J

    move-result-wide v0

    return-wide v0
.end method

.method public wj()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->getPinLockoutCountdown()J

    move-result-wide v0

    return-wide v0
.end method

.method public xj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/a/s;->xA:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->isCloudIdUnlockOn()Z

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

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->isFaceIdUnlockOn()Z

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

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/a/x;->zA:Lcom/smartisanos/securitycenter/a/l;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/a/l;->isFingerprintUnlockOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
