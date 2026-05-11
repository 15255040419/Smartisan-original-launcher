.class public final Lcom/smartisanos/securitycenter/a/g;
.super Ljava/lang/Object;
.source "FaceIdServiceGlobal.java"


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private final mConn:Landroid/content/ServiceConnection;

.field private final mDeath:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Landroid/os/Handler;

.field private final mObserver:Lcom/smartisanos/securitycenter/b/b;

.field private mProxy:Lb/a/a/c;

.field private final mRebindTask:Ljava/lang/Runnable;

.field private final mServiceReadyRunnables:Ljava/util/Queue;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/securitycenter/a/d;

    invoke-direct {v0}, Lcom/smartisanos/securitycenter/a/d;-><init>()V

    sput-object v0, Lcom/smartisanos/securitycenter/a/g;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mProxy:Lb/a/a/c;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mServiceReadyRunnables:Ljava/util/Queue;

    .line 5
    new-instance v0, Lcom/smartisanos/securitycenter/a/b;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/a/b;-><init>(Lcom/smartisanos/securitycenter/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mRebindTask:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lcom/smartisanos/securitycenter/a/e;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/a/e;-><init>(Lcom/smartisanos/securitycenter/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mConn:Landroid/content/ServiceConnection;

    .line 7
    new-instance v0, Lcom/smartisanos/securitycenter/a/a;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/a/a;-><init>(Lcom/smartisanos/securitycenter/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mDeath:Landroid/os/IBinder$DeathRecipient;

    .line 8
    new-instance v0, Lcom/smartisanos/securitycenter/a/f;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/a/f;-><init>(Lcom/smartisanos/securitycenter/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mObserver:Lcom/smartisanos/securitycenter/b/b;

    const-string v0, "FaceIdServiceGlobal"

    const-string v1, "service init"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartisanos/securitycenter/a/g;->mThread:Landroid/os/HandlerThread;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/g;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/securitycenter/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/a/g;-><init>()V

    return-void
.end method

.method private Lx()V
    .locals 4

    const-string v0, "FaceIdServiceGlobal"

    const-string v1, "service ready to bind..."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.smartisan.facerecognition"

    const-string v3, "com.smartisan.facerecognition.FaceIDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/g;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/a/g;)Lb/a/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mProxy:Lb/a/a/c;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/a/g;Lb/a/a/c;)Lb/a/a/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/securitycenter/a/g;->mProxy:Lb/a/a/c;

    return-object p1
.end method

.method static synthetic b(Lcom/smartisanos/securitycenter/a/g;)Lcom/smartisanos/securitycenter/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mObserver:Lcom/smartisanos/securitycenter/b/b;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/securitycenter/a/g;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mDeath:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/securitycenter/a/g;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mServiceReadyRunnables:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic e(Lcom/smartisanos/securitycenter/a/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/a/g;->Lx()V

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/securitycenter/a/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/securitycenter/a/g;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/securitycenter/a/g;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mProxy:Lb/a/a/c;

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {p0, p1}, Lb/a/a/c;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "FaceIdServiceGlobal"

    const-string p1, "Service died"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public bind(Landroid/content/Context;)Lcom/smartisanos/securitycenter/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/securitycenter/a/g;->mAppContext:Landroid/content/Context;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/a/g;->mProxy:Lb/a/a/c;

    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/a/g;->Lx()V

    :cond_1
    return-object p0
.end method

.method public isReady()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mProxy:Lb/a/a/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mProxy:Lb/a/a/c;

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lb/a/a/c;->k()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "FaceIdServiceGlobal"

    const-string v0, "Service died"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public kj()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public synthetic lj()V
    .locals 3

    const-string v0, "FaceIdServiceGlobal"

    const-string v1, "Service died. Rebind after 1000"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/a/g;->mRebindTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mRebindTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postOnReady(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/a/g;->mProxy:Lb/a/a/c;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/a/g;->mServiceReadyRunnables:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
