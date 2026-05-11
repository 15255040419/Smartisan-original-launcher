.class public abstract Lcom/smartisanos/launcher/vb;
.super Ljava/lang/Object;
.source "SynchronizedTask.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private final WAIT:J

.field private gj:J

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/vb;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/vb;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/vb;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x64

    .line 3
    iput-wide v0, p0, Lcom/smartisanos/launcher/vb;->WAIT:J

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lcom/smartisanos/launcher/vb;->gj:J

    .line 5
    iput-wide v0, p0, Lcom/smartisanos/launcher/vb;->gj:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/vb;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x64

    .line 8
    iput-wide v0, p0, Lcom/smartisanos/launcher/vb;->WAIT:J

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p0, Lcom/smartisanos/launcher/vb;->gj:J

    int-to-long v4, p1

    .line 10
    iput-wide v4, p0, Lcom/smartisanos/launcher/vb;->gj:J

    .line 11
    iget-wide v4, p0, Lcom/smartisanos/launcher/vb;->gj:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_0

    .line 12
    iput-wide v0, p0, Lcom/smartisanos/launcher/vb;->gj:J

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract Vc()V
.end method

.method public releaseLock()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/launcher/vb;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object p0, p0, Lcom/smartisanos/launcher/vb;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/vb;->Vc()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/launcher/vb;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/smartisanos/launcher/vb;->mLock:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/smartisanos/launcher/vb;->gj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
