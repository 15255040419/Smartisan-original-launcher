.class public final Lcom/smartisanos/securitycenter/a/l;
.super Ljava/lang/Object;
.source "PrivacySecurityGlobal.java"


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;


# instance fields
.field private final _z:Lcom/smartisanos/securitycenter/d;

.field private final mObservers:Landroid/util/SparseArray;

.field private mService:Lcom/smartisanos/securitycenter/PrivacySecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/securitycenter/a/j;

    invoke-direct {v0}, Lcom/smartisanos/securitycenter/a/j;-><init>()V

    sput-object v0, Lcom/smartisanos/securitycenter/a/l;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/l;->mObservers:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Lcom/smartisanos/securitycenter/a/k;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/a/k;-><init>(Lcom/smartisanos/securitycenter/a/l;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/l;->_z:Lcom/smartisanos/securitycenter/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/securitycenter/a/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/a/l;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/a/l;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mObservers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static getInstance()Lcom/smartisanos/securitycenter/a/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/securitycenter/a/l;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/securitycenter/a/l;

    return-object v0
.end method

.method public static mj()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/securitycenter/a/l;->getInstance()Lcom/smartisanos/securitycenter/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/a/l;->isBound()Z

    move-result v0

    return v0
.end method

.method private xa(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PrivacySecurityGlobal"

    const-string v1, "service ready to bind..."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/smartisanos/securitycenter/PrivacySecurity;

    const-string v1, "Global"

    invoke-direct {v0, p1, v1}, Lcom/smartisanos/securitycenter/PrivacySecurity;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->bind()V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    new-instance v0, Lcom/smartisanos/securitycenter/a/c;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/a/c;-><init>(Lcom/smartisanos/securitycenter/a/l;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->postOnReady(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public Ga(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/l;->mObservers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public a(ILcom/smartisanos/securitycenter/d;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/l;->mObservers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mObservers:Landroid/util/SparseArray;

    new-instance v1, Lcom/smartisanos/securitycenter/b/j;

    invoke-direct {v1, p2}, Lcom/smartisanos/securitycenter/b/j;-><init>(Lcom/smartisanos/securitycenter/d;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public bind(Landroid/content/Context;)Lcom/smartisanos/securitycenter/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/a/l;->xa(Landroid/content/Context;)V

    :cond_0
    return-object p0
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->checkPassword(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFaceIdLockoutCountdown()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getFaceIdLockoutCountdown()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFingerprintLockoutCountdown()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getFingerprintLockoutCountdown()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPinLockoutCountdown()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->getPinLockoutCountdown()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isBound()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

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
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isCloudIdUnlockOn()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFaceIdUnlockOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isFaceIdUnlockOn()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFingerprintUnlockOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isFingerprintUnlockOn()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSecurityOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->isSecurityOn()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lockoutCloudId()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->lockoutCloudId()V

    :cond_0
    return-void
.end method

.method public lockoutFaceId()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->lockoutFaceId()V

    :cond_0
    return-void
.end method

.method public lockoutFingerprint()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->lockoutFingerprint()V

    :cond_0
    return-void
.end method

.method public lockoutPin()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->lockoutPin()V

    :cond_0
    return-void
.end method

.method public synthetic nj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->_z:Lcom/smartisanos/securitycenter/d;

    invoke-virtual {v0, p0}, Lcom/smartisanos/securitycenter/PrivacySecurity;->registerObserver(Lcom/smartisanos/securitycenter/d;)V

    return-void
.end method

.method public postOnReady(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->postOnReady(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public reportCloudIdUnlockResult(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->reportCloudIdUnlockResult(Z)V

    :cond_0
    return-void
.end method

.method public reportFaceIdUnlockResult(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->reportFaceIdUnlockResult(Z)V

    :cond_0
    return-void
.end method

.method public reportFingerprintUnlockResult(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->reportFingerprintUnlockResult(Z)V

    :cond_0
    return-void
.end method

.method public reportPinUnlockResult(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/l;->mService:Lcom/smartisanos/securitycenter/PrivacySecurity;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/PrivacySecurity;->reportPinUnlockResult(Z)V

    :cond_0
    return-void
.end method
