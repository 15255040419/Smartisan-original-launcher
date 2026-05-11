.class Landroid/support/v4/media/MediaSession2Stub;
.super Landroid/support/v4/media/IMediaSession2$Stub;
.source "MediaSession2Stub.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaSession2Stub"

.field private static final sCommandsForOnCommandRequest:Landroid/util/SparseArray;


# instance fields
.field private final mAllowedCommandGroupMap:Landroid/support/v4/util/ArrayMap;

.field private final mConnectingControllers:Ljava/util/Set;

.field final mContext:Landroid/content/Context;

.field private final mControllers:Landroid/support/v4/util/ArrayMap;

.field private final mLock:Ljava/lang/Object;

.field final mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaSession2Stub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    .line 2
    new-instance v0, Landroid/support/v4/media/SessionCommandGroup2;

    invoke-direct {v0}, Landroid/support/v4/media/SessionCommandGroup2;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/SessionCommandGroup2;->addAllPlaybackCommands()V

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/media/SessionCommandGroup2;->addAllPlaylistCommands()V

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/media/SessionCommandGroup2;->addAllVolumeCommands()V

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/media/SessionCommandGroup2;->getCommands()Ljava/util/Set;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/SessionCommand2;

    .line 8
    sget-object v2, Landroid/support/v4/media/MediaSession2Stub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/support/v4/media/SessionCommand2;->getCommandCode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/IMediaSession2$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mControllers:Landroid/support/v4/util/ArrayMap;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mConnectingControllers:Ljava/util/Set;

    .line 5
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mAllowedCommandGroupMap:Landroid/support/v4/util/ArrayMap;

    .line 6
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    .line 7
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/MediaSession2Stub;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/v4/media/MediaSession2Stub;)Landroid/support/v4/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub;->mControllers:Landroid/support/v4/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/v4/media/MediaSession2Stub;Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommand2;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaSession2Stub;->isAllowedCommand(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommand2;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Landroid/util/SparseArray;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/media/MediaSession2Stub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaSession2Stub;Landroid/support/v4/media/MediaSession2$ControllerInfo;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaSession2Stub;->isAllowedCommand(Landroid/support/v4/media/MediaSession2$ControllerInfo;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Landroid/support/v4/media/MediaSession2Stub;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub;->mConnectingControllers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/v4/media/MediaSession2Stub;)Landroid/support/v4/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub;->mAllowedCommandGroupMap:Landroid/support/v4/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v4/media/MediaSession2Stub;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaSession2Stub;->getLibrarySession()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object p0

    return-object p0
.end method

.method private getLibrarySession()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    instance-of v0, p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Session cannot be casted to library session"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isAllowedCommand(Landroid/support/v4/media/MediaSession2$ControllerInfo;I)Z
    .locals 1

    .line 6
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub;->mAllowedCommandGroupMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/SessionCommandGroup2;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0, p2}, Landroid/support/v4/media/SessionCommandGroup2;->hasCommand(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isAllowedCommand(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommand2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub;->mAllowedCommandGroupMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/SessionCommandGroup2;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Landroid/support/v4/media/SessionCommandGroup2;->hasCommand(Landroid/support/v4/media/SessionCommand2;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private onBrowserCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    instance-of v0, v0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommandInternal(Landroid/support/v4/media/IMediaController2;Landroid/support/v4/media/SessionCommand2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MediaSession2 cannot handle MediaLibrarySession command"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommandInternal(Landroid/support/v4/media/IMediaController2;Landroid/support/v4/media/SessionCommand2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method private onSessionCommand(Landroid/support/v4/media/IMediaController2;Landroid/support/v4/media/SessionCommand2;Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommandInternal(Landroid/support/v4/media/IMediaController2;Landroid/support/v4/media/SessionCommand2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method private onSessionCommandInternal(Landroid/support/v4/media/IMediaController2;Landroid/support/v4/media/SessionCommand2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2Stub;->mControllers:Landroid/support/v4/util/ArrayMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaSession2$ControllerInfo;

    goto :goto_0

    .line 3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    if-nez v3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$1;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaSession2Stub$1;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommand2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private releaseController(Landroid/support/v4/media/IMediaController2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2Stub;->mControllers:Landroid/support/v4/util/ArrayMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaSession2$ControllerInfo;

    const-string v1, "MediaSession2Stub"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaSession2Stub$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaSession2Stub$2;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/support/v4/media/MediaSession2$ControllerInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addPlaylistItem(Landroid/support/v4/media/IMediaController2;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$24;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$24;-><init>(Landroid/support/v4/media/MediaSession2Stub;ILandroid/os/Bundle;)V

    const/16 p2, 0xf

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public adjustVolume(Landroid/support/v4/media/IMediaController2;II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$5;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$5;-><init>(Landroid/support/v4/media/MediaSession2Stub;II)V

    const/16 p2, 0xb

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public connect(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2$ControllerInfo;

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    new-instance v3, Landroid/support/v4/media/MediaSession2Stub$Controller2Cb;

    invoke-direct {v3, p1}, Landroid/support/v4/media/MediaSession2Stub$Controller2Cb;-><init>(Landroid/support/v4/media/IMediaController2;)V

    invoke-direct {v0, p2, v1, v2, v3}, Landroid/support/v4/media/MediaSession2$ControllerInfo;-><init>(Ljava/lang/String;IILandroid/support/v4/media/MediaSession2$ControllerCb;)V

    .line 3
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p2}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v1, Landroid/support/v4/media/MediaSession2Stub$3;

    invoke-direct {v1, p0, v0, p1}, Landroid/support/v4/media/MediaSession2Stub$3;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/IMediaController2;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fastForward(Landroid/support/v4/media/IMediaController2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$10;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2Stub$10;-><init>(Landroid/support/v4/media/MediaSession2Stub;)V

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public getChildren(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 7

    .line 1
    new-instance v6, Landroid/support/v4/media/MediaSession2Stub$37;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaSession2Stub$37;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;IILandroid/os/Bundle;)V

    const/16 p2, 0x1d

    invoke-direct {p0, p1, p2, v6}, Landroid/support/v4/media/MediaSession2Stub;->onBrowserCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method getConnectedControllers()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2Stub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaSession2Stub;->mControllers:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Landroid/support/v4/media/MediaSession2Stub;->mControllers:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getItem(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$36;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2Stub$36;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;)V

    const/16 p2, 0x1e

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onBrowserCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public getLibraryRoot(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$35;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2Stub$35;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/os/Bundle;)V

    const/16 p2, 0x1f

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onBrowserCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public getSearchResult(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 7

    .line 1
    new-instance v6, Landroid/support/v4/media/MediaSession2Stub$39;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaSession2Stub$39;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;IILandroid/os/Bundle;)V

    const/16 p2, 0x20

    invoke-direct {p0, p1, p2, v6}, Landroid/support/v4/media/MediaSession2Stub;->onBrowserCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public pause(Landroid/support/v4/media/IMediaController2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$7;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2Stub$7;-><init>(Landroid/support/v4/media/MediaSession2Stub;)V

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public play(Landroid/support/v4/media/IMediaController2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$6;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2Stub$6;-><init>(Landroid/support/v4/media/MediaSession2Stub;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public playFromMediaId(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$19;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$19;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x16

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public playFromSearch(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$18;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$18;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x18

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public playFromUri(Landroid/support/v4/media/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$17;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$17;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/net/Uri;Landroid/os/Bundle;)V

    const/16 p2, 0x17

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public prepare(Landroid/support/v4/media/IMediaController2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$9;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2Stub$9;-><init>(Landroid/support/v4/media/MediaSession2Stub;)V

    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public prepareFromMediaId(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$16;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$16;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x19

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public prepareFromSearch(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$15;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$15;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x1b

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public prepareFromUri(Landroid/support/v4/media/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$14;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$14;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/net/Uri;Landroid/os/Bundle;)V

    const/16 p2, 0x1a

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public release(Landroid/support/v4/media/IMediaController2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaSession2Stub;->releaseController(Landroid/support/v4/media/IMediaController2;)V

    return-void
.end method

.method removeControllerInfo(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub;->mControllers:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->getId()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;

    const-string p1, "MediaSession2Stub"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePlaylistItem(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$25;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2Stub$25;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/os/Bundle;)V

    const/16 p2, 0x10

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public replacePlaylistItem(Landroid/support/v4/media/IMediaController2;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$26;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$26;-><init>(Landroid/support/v4/media/MediaSession2Stub;ILandroid/os/Bundle;)V

    const/16 p2, 0x11

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public reset(Landroid/support/v4/media/IMediaController2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$8;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2Stub$8;-><init>(Landroid/support/v4/media/MediaSession2Stub;)V

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public rewind(Landroid/support/v4/media/IMediaController2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$11;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2Stub$11;-><init>(Landroid/support/v4/media/MediaSession2Stub;)V

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public search(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$38;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$38;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x21

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onBrowserCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public seekTo(Landroid/support/v4/media/IMediaController2;J)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$12;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$12;-><init>(Landroid/support/v4/media/MediaSession2Stub;J)V

    const/16 p2, 0x9

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public selectRoute(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$34;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2Stub$34;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/os/Bundle;)V

    const/16 p2, 0x25

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public sendCustomCommand(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/SessionCommand2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommand2;

    move-result-object v0

    .line 2
    invoke-static {p2}, Landroid/support/v4/media/SessionCommand2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommand2;

    move-result-object p2

    new-instance v1, Landroid/support/v4/media/MediaSession2Stub$13;

    invoke-direct {v1, p0, v0, p3, p4}, Landroid/support/v4/media/MediaSession2Stub$13;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;Landroid/support/v4/media/SessionCommand2;Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method setAllowedCommands(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommandGroup2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub;->mAllowedCommandGroupMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPlaybackSpeed(Landroid/support/v4/media/IMediaController2;F)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$21;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2Stub$21;-><init>(Landroid/support/v4/media/MediaSession2Stub;F)V

    const/16 p2, 0x27

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setPlaylist(Landroid/support/v4/media/IMediaController2;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$22;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$22;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/util/List;Landroid/os/Bundle;)V

    const/16 p2, 0x13

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setRating(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$20;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$20;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x1c

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setRepeatMode(Landroid/support/v4/media/IMediaController2;I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$30;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2Stub$30;-><init>(Landroid/support/v4/media/MediaSession2Stub;I)V

    const/16 p2, 0xe

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setShuffleMode(Landroid/support/v4/media/IMediaController2;I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$31;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2Stub$31;-><init>(Landroid/support/v4/media/MediaSession2Stub;I)V

    const/16 p2, 0xd

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setVolumeTo(Landroid/support/v4/media/IMediaController2;II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$4;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$4;-><init>(Landroid/support/v4/media/MediaSession2Stub;II)V

    const/16 p2, 0xa

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public skipToNextItem(Landroid/support/v4/media/IMediaController2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$29;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2Stub$29;-><init>(Landroid/support/v4/media/MediaSession2Stub;)V

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public skipToPlaylistItem(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$27;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2Stub$27;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/os/Bundle;)V

    const/16 p2, 0xc

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public skipToPreviousItem(Landroid/support/v4/media/IMediaController2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$28;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2Stub$28;-><init>(Landroid/support/v4/media/MediaSession2Stub;)V

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public subscribe(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$40;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaSession2Stub$40;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x22

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onBrowserCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public subscribeRoutesInfo(Landroid/support/v4/media/IMediaController2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$32;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2Stub$32;-><init>(Landroid/support/v4/media/MediaSession2Stub;)V

    const/16 v1, 0x24

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public unsubscribe(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$41;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2Stub$41;-><init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;)V

    const/16 p2, 0x23

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onBrowserCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public unsubscribeRoutesInfo(Landroid/support/v4/media/IMediaController2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$33;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2Stub$33;-><init>(Landroid/support/v4/media/MediaSession2Stub;)V

    const/16 v1, 0x25

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public updatePlaylistMetadata(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaSession2Stub$23;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2Stub$23;-><init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/os/Bundle;)V

    const/16 p2, 0x15

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/MediaSession2Stub;->onSessionCommand(Landroid/support/v4/media/IMediaController2;ILandroid/support/v4/media/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method
