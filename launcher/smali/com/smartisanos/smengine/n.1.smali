.class public Lcom/smartisanos/smengine/n;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field private static oD:Landroid/util/Pools$SynchronizedPool;


# instance fields
.field private lD:Z

.field private mD:Z

.field private mName:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTime:J

.field private mType:I

.field private nD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/smartisanos/smengine/n;->oD:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/n;->mType:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/smartisanos/smengine/n;->mTime:J

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/smengine/n;->mD:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/smartisanos/smengine/n;->mRunnable:Ljava/lang/Runnable;

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/smengine/n;->nD:Z

    .line 7
    iput p1, p0, Lcom/smartisanos/smengine/n;->mType:I

    return-void
.end method

.method public static obtain()Lcom/smartisanos/smengine/n;
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/n;->oD:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/n;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    const-string v1, "LauncherEvent"

    const-string v2, "obtain event null"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/smartisanos/smengine/n;->nD:Z

    return-object v0
.end method


# virtual methods
.method public ck()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/n;->lD:Z

    return p0
.end method

.method public dk()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/n;->mD:Z

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/n;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/n;->mTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/n;->mType:I

    return p0
.end method

.method public j(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/n;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public q(F)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/n;F)V

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/n;->nD:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/smengine/n;->oD:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/n;->mRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/n;->mName:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/smartisanos/smengine/n;->mTime:J

    return-void
.end method

.method public xa(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/n;->lD:Z

    return-void
.end method

.method public ya(Z)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/n;->mD:Z

    return-object p0
.end method
