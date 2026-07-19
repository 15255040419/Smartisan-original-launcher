.class public Lcom/smartisanos/smengine/u;
.super Ljava/lang/Object;
.source "InputManager.java"


# static fields
.field public static final AE:Ljava/lang/Object;

.field private static DE:Lcom/smartisanos/smengine/u;

.field private static EE:I


# instance fields
.field private next:Lcom/smartisanos/smengine/u;

.field private xE:Lcom/smartisanos/smengine/va;

.field private yE:Lcom/smartisanos/smengine/ua;

.field public zE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Lcom/smartisanos/smengine/u;->AE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/u;->zE:Z

    return-void
.end method

.method public static a(Lcom/smartisanos/smengine/va;)Lcom/smartisanos/smengine/u;
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/u;->AE:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/smengine/u;->DE:Lcom/smartisanos/smengine/u;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/u;

    invoke-direct {v1}, Lcom/smartisanos/smengine/u;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/smartisanos/smengine/u;->DE:Lcom/smartisanos/smengine/u;

    .line 5
    iget-object v3, v1, Lcom/smartisanos/smengine/u;->next:Lcom/smartisanos/smengine/u;

    sput-object v3, Lcom/smartisanos/smengine/u;->DE:Lcom/smartisanos/smengine/u;

    .line 6
    sget v3, Lcom/smartisanos/smengine/u;->EE:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/smartisanos/smengine/u;->EE:I

    .line 7
    iput-object v2, v1, Lcom/smartisanos/smengine/u;->next:Lcom/smartisanos/smengine/u;

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, v1, Lcom/smartisanos/smengine/u;->zE:Z

    .line 10
    iput-object p0, v1, Lcom/smartisanos/smengine/u;->xE:Lcom/smartisanos/smengine/va;

    .line 11
    iput-object v2, v1, Lcom/smartisanos/smengine/u;->yE:Lcom/smartisanos/smengine/ua;

    return-object v1

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b(Lcom/smartisanos/smengine/ua;)Lcom/smartisanos/smengine/u;
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/u;->AE:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/smengine/u;->DE:Lcom/smartisanos/smengine/u;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/u;

    invoke-direct {v1}, Lcom/smartisanos/smengine/u;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/smartisanos/smengine/u;->DE:Lcom/smartisanos/smengine/u;

    .line 5
    iget-object v3, v1, Lcom/smartisanos/smengine/u;->next:Lcom/smartisanos/smengine/u;

    sput-object v3, Lcom/smartisanos/smengine/u;->DE:Lcom/smartisanos/smengine/u;

    .line 6
    sget v3, Lcom/smartisanos/smengine/u;->EE:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/smartisanos/smengine/u;->EE:I

    .line 7
    iput-object v2, v1, Lcom/smartisanos/smengine/u;->next:Lcom/smartisanos/smengine/u;

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, v1, Lcom/smartisanos/smengine/u;->zE:Z

    .line 10
    iput-object v2, v1, Lcom/smartisanos/smengine/u;->xE:Lcom/smartisanos/smengine/va;

    .line 11
    iput-object p0, v1, Lcom/smartisanos/smengine/u;->yE:Lcom/smartisanos/smengine/ua;

    return-object v1

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public gk()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/u;->xE:Lcom/smartisanos/smengine/va;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public recycle()V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/u;->AE:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/smartisanos/smengine/u;->EE:I

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/smengine/u;->DE:Lcom/smartisanos/smengine/u;

    iput-object v1, p0, Lcom/smartisanos/smengine/u;->next:Lcom/smartisanos/smengine/u;

    .line 4
    sput-object p0, Lcom/smartisanos/smengine/u;->DE:Lcom/smartisanos/smengine/u;

    .line 5
    sget p0, Lcom/smartisanos/smengine/u;->EE:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/smartisanos/smengine/u;->EE:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/smartisanos/smengine/u;->next:Lcom/smartisanos/smengine/u;

    .line 7
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/u;->xE:Lcom/smartisanos/smengine/va;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/u;->xE:Lcom/smartisanos/smengine/va;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z

    iget-object v0, p0, Lcom/smartisanos/smengine/u;->xE:Lcom/smartisanos/smengine/va;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/gesture/SystemPanelCompat;->onSmEngineDispatchCompleted(I)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/u;->xE:Lcom/smartisanos/smengine/va;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->recycle()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/smengine/u;->yE:Lcom/smartisanos/smengine/ua;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/smengine/ua;)Z

    :goto_0
    return-void
.end method
