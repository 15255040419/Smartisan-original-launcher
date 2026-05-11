.class public Lcom/smartisanos/securitycenter/PrivacySecurity;
.super Ljava/lang/Object;
.source "PrivacySecurity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivacySecurity"


# instance fields
.field private mCacheObserver:Lcom/smartisanos/securitycenter/d;

.field private final mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mDeath:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Landroid/os/Handler;

.field private mIdentify:Ljava/lang/String;

.field private final mRebindTask:Ljava/lang/Runnable;

.field private mService:Lcom/smartisanos/securitycenter/g;

.field private final mServiceReadyRunnables:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/securitycenter/PrivacySecurity;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mServiceReadyRunnables:Ljava/util/Queue;

    .line 4
    new-instance v0, Lcom/smartisanos/securitycenter/h;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/h;-><init>(Lcom/smartisanos/securitycenter/PrivacySecurity;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mConn:Landroid/content/ServiceConnection;

    .line 5
    new-instance v0, Lcom/smartisanos/securitycenter/b;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/b;-><init>(Lcom/smartisanos/securitycenter/PrivacySecurity;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mRebindTask:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lcom/smartisanos/securitycenter/a;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/a;-><init>(Lcom/smartisanos/securitycenter/PrivacySecurity;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mDeath:Landroid/os/IBinder$DeathRecipient;

    .line 7
    iput-object p1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mContext:Landroid/content/Context;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mIdentify:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p2, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mIdentify:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/securitycenter/PrivacySecurity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/securitycenter/PrivacySecurity;)Lcom/smartisanos/securitycenter/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    return-object p0
.end method

.method static synthetic access$102(Lcom/smartisanos/securitycenter/PrivacySecurity;Lcom/smartisanos/securitycenter/g;)Lcom/smartisanos/securitycenter/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    return-object p1
.end method

.method static synthetic access$200(Lcom/smartisanos/securitycenter/PrivacySecurity;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mDeath:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/securitycenter/PrivacySecurity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mRebindTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/securitycenter/PrivacySecurity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/securitycenter/PrivacySecurity;)Lcom/smartisanos/securitycenter/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mCacheObserver:Lcom/smartisanos/securitycenter/d;

    return-object p0
.end method

.method static synthetic access$600(Lcom/smartisanos/securitycenter/PrivacySecurity;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mServiceReadyRunnables:Ljava/util/Queue;

    return-object p0
.end method

.method private enforceServiceBind()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/securitycenter/exception/ServiceNotBindException;->lb(Ljava/lang/String;)Lcom/smartisanos/securitycenter/exception/ServiceNotBindException;

    move-result-object p0

    throw p0
.end method

.method private getTag()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacySecurity@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mIdentify:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getToken()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mIdentify:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bind start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.smartisanos.action.PRIVACY_SECURITY"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.smartisanos.securitycenter"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/g;->checkPassword(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public getCloudIdLockoutCountdown()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/g;->getCloudIdLockoutCountdown()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaceIdLockoutCountdown()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/g;->getFaceIdLockoutCountdown()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFingerprintLockoutCountdown()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/g;->getFingerprintLockoutCountdown()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPinLockoutCountdown()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/g;->getPinLockoutCountdown()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isBound()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCloudIdUnlockOn()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/g;->isCloudIdUnlockOn()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public isFaceIdUnlockOn()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/g;->isFaceIdUnlockOn()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public isFingerprintUnlockOn()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/g;->isFingerprintUnlockOn()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public isSecurityOn()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-interface {p0}, Lcom/smartisanos/securitycenter/g;->isSecurityOn()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic jj()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service died. Rebind after 1000"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mRebindTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mRebindTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public lockoutCloudId()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smartisanos/securitycenter/g;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public lockoutFaceId()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smartisanos/securitycenter/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public lockoutFingerprint()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smartisanos/securitycenter/g;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public lockoutPin()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smartisanos/securitycenter/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public postOnReady(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mServiceReadyRunnables:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public registerObserver(Lcom/smartisanos/securitycenter/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mCacheObserver:Lcom/smartisanos/securitycenter/d;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/smartisanos/securitycenter/g;->a(Ljava/lang/String;Lcom/smartisanos/securitycenter/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public reportCloudIdUnlockResult(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/smartisanos/securitycenter/g;->b(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public reportFaceIdUnlockResult(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/smartisanos/securitycenter/g;->c(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public reportFingerprintUnlockResult(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/smartisanos/securitycenter/g;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public reportPinUnlockResult(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/smartisanos/securitycenter/g;->d(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public revokeLockout()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smartisanos/securitycenter/g;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public unbind()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unbind start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->unregisterObserver()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mDeath:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    :cond_0
    return-void
.end method

.method public unregisterObserver()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->enforceServiceBind()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mCacheObserver:Lcom/smartisanos/securitycenter/d;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/securitycenter/PrivacySecurity;->mService:Lcom/smartisanos/securitycenter/g;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Lcom/smartisanos/securitycenter/g;->a(Ljava/lang/String;Lcom/smartisanos/securitycenter/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
