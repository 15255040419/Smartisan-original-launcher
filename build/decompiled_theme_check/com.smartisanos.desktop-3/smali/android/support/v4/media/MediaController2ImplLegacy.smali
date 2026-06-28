.class Landroid/support/v4/media/MediaController2ImplLegacy;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Landroid/support/v4/media/MediaController2$SupportLibraryImpl;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MC2ImplLegacy"

.field static final sDefaultRootExtras:Landroid/os/Bundle;


# instance fields
.field private mAllowedCommands:Landroid/support/v4/media/SessionCommandGroup2;

.field private mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

.field private mBufferingState:I

.field private final mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private volatile mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mControllerCompatCallback:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

.field private mCurrentMediaItem:Landroid/support/v4/media/MediaItem2;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInstance:Landroid/support/v4/media/MediaController2;

.field private mIsReleased:Z

.field final mLock:Ljava/lang/Object;

.field private mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

.field private mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

.field private mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private mPlayerState:I

.field private mPlaylist:Ljava/util/List;

.field private mPlaylistMetadata:Landroid/support/v4/media/MediaMetadata2;

.field private mRepeatMode:I

.field private mShuffleMode:I

.field private final mToken:Landroid/support/v4/media/SessionToken2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MC2ImplLegacy"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaController2ImplLegacy;->DEBUG:Z

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaController2ImplLegacy;->sDefaultRootExtras:Landroid/os/Bundle;

    .line 3
    sget-object v0, Landroid/support/v4/media/MediaController2ImplLegacy;->sDefaultRootExtras:Landroid/os/Bundle;

    const-string v1, "android.support.v4.media.root_default_root"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/MediaController2;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mInstance:Landroid/support/v4/media/MediaController2;

    .line 5
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "MediaController2_Thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 6
    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandler:Landroid/os/Handler;

    .line 8
    iput-object p3, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mToken:Landroid/support/v4/media/SessionToken2;

    .line 9
    iput-object p5, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

    .line 10
    iput-object p4, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mToken:Landroid/support/v4/media/SessionToken2;

    invoke-virtual {p1}, Landroid/support/v4/media/SessionToken2;->getType()I

    move-result p1

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    .line 13
    :try_start_0
    iput-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mToken:Landroid/support/v4/media/SessionToken2;

    invoke-virtual {p1}, Landroid/support/v4/media/SessionToken2;->getBinder()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 17
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->connectToService()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaController2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mInstance:Landroid/support/v4/media/MediaController2;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

    return-object p0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/media/MediaController2ImplLegacy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/support/v4/media/MediaController2ImplLegacy;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$1302(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1
.end method

.method static synthetic access$1502(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/SessionCommandGroup2;)Landroid/support/v4/media/SessionCommandGroup2;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mAllowedCommands:Landroid/support/v4/media/SessionCommandGroup2;

    return-object p1
.end method

.method static synthetic access$1602(Landroid/support/v4/media/MediaController2ImplLegacy;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlayerState:I

    return p1
.end method

.method static synthetic access$1702(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/MediaItem2;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCurrentMediaItem:Landroid/support/v4/media/MediaItem2;

    return-object p1
.end method

.method static synthetic access$1802(Landroid/support/v4/media/MediaController2ImplLegacy;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1902(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaMetadata2;)Landroid/support/v4/media/MediaMetadata2;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaylistMetadata:Landroid/support/v4/media/MediaMetadata2;

    return-object p1
.end method

.method static synthetic access$2002(Landroid/support/v4/media/MediaController2ImplLegacy;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mRepeatMode:I

    return p1
.end method

.method static synthetic access$2102(Landroid/support/v4/media/MediaController2ImplLegacy;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mShuffleMode:I

    return p1
.end method

.method static synthetic access$2202(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaController2$PlaybackInfo;)Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    return-object p1
.end method

.method static synthetic access$2302(Landroid/support/v4/media/MediaController2ImplLegacy;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mBufferingState:I

    return p1
.end method

.method static synthetic access$300(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    return-object p0
.end method

.method static synthetic access$502(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaBrowserCompat;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    return-object p1
.end method

.method static synthetic access$600(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/SessionToken2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mToken:Landroid/support/v4/media/SessionToken2;

    return-object p0
.end method

.method static synthetic access$900(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method private connectToService()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplLegacy$4;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaController2ImplLegacy$4;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v0

    .line 3
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_1
    iput-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 5
    new-instance v2, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaController2ImplLegacy$1;)V

    iput-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompatCallback:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    .line 6
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompatCallback:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v3, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    .line 7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->isSessionReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Landroid/support/v4/media/MediaController2ImplLegacy$3;

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Landroid/support/v4/media/MediaController2ImplLegacy$3;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/os/Handler;)V

    const-string v0, "android.support.v4.media.controller.command.CONNECT"

    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private sendCommand(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method private sendCommand(ILandroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "android.support.v4.media.argument.COMMAND_CODE"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const-string v0, "android.support.v4.media.controller.command.BY_COMMAND_CODE"

    .line 4
    invoke-direct {p0, v0, p2, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private sendCommand(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 10
    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompatCallback:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->getIControllerCallback()Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "android.support.v4.media.argument.ICONTROLLER_CALLBACK"

    .line 13
    invoke-static {p2, v2, v0}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 14
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.support.v4.media.argument.PACKAGE_NAME"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    const-string v0, "android.support.v4.media.argument.UID"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    const-string v0, "android.support.v4.media.argument.PID"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/media/session/MediaControllerCompat;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private sendCommand(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.argument.PLAYLIST_INDEX"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Landroid/support/v4/media/MediaItem2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.support.v4.media.argument.MEDIA_ITEM"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0xf

    .line 4
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method public adjustVolume(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.VOLUME_DIRECTION"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "android.support.v4.media.argument.VOLUME_FLAGS"

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xb

    .line 8
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 4

    .line 1
    sget-boolean v0, Landroid/support/v4/media/MediaController2ImplLegacy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mToken:Landroid/support/v4/media/SessionToken2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MC2ImplLegacy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_2

    .line 8
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :goto_0
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mIsReleased:Z

    const-string v1, "android.support.v4.media.controller.command.DISCONNECT"

    .line 11
    invoke-direct {p0, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v3, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompatCallback:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 14
    :cond_3
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    .line 16
    iput-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    .line 17
    :cond_4
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_5

    .line 18
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v3, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompatCallback:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 19
    iput-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_5
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplLegacy$1;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaController2ImplLegacy$1;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public fastForward()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x7

    .line 5
    invoke-direct {p0, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(I)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBufferedPosition()J
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-wide v2

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v2

    :goto_0
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBufferingState()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 4
    monitor-exit v0

    return p0

    .line 5
    :cond_0
    iget p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mBufferingState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

    return-object p0
.end method

.method public getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCurrentMediaItem:Landroid/support/v4/media/MediaItem2;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentPosition()J
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-wide v2

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mInstance:Landroid/support/v4/media/MediaController2;

    iget-object v1, v1, Landroid/support/v4/media/MediaController2;->mTimeDiff:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mInstance:Landroid/support/v4/media/MediaController2;

    iget-object v1, v1, Landroid/support/v4/media/MediaController2;->mTimeDiff:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 8
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 9
    :goto_0
    iget-object v3, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v3

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result p0

    long-to-float v1, v1

    mul-float/2addr p0, v1

    float-to-long v1, p0

    add-long/2addr v3, v1

    const-wide/16 v1, 0x0

    .line 11
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 12
    :cond_2
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDuration()J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v2, "android.media.metadata.DURATION"

    .line 3
    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 5
    :cond_0
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInstance()Landroid/support/v4/media/MediaController2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mInstance:Landroid/support/v4/media/MediaController2;

    return-object p0
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlaybackSpeed()F
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlayerState()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlayerState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaylistMetadata:Landroid/support/v4/media/MediaMetadata2;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mRepeatMode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 4
    monitor-exit v0

    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSessionToken()Landroid/support/v4/media/SessionToken2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mToken:Landroid/support/v4/media/SessionToken2;

    return-object p0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mShuffleMode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method onConnectedNotLocked(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    const-class v0, Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "android.support.v4.media.argument.ALLOWED_COMMANDS"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/support/v4/media/SessionCommandGroup2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommandGroup2;

    move-result-object v0

    const-string v1, "android.support.v4.media.argument.PLAYER_STATE"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.support.v4.media.argument.MEDIA_ITEM"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v2

    const-string v3, "android.support.v4.media.argument.BUFFERING_STATE"

    .line 7
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "android.support.v4.media.argument.PLAYBACK_STATE_COMPAT"

    .line 8
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/session/PlaybackStateCompat;

    const-string v5, "android.support.v4.media.argument.REPEAT_MODE"

    .line 9
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "android.support.v4.media.argument.SHUFFLE_MODE"

    .line 10
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "android.support.v4.media.argument.PLAYLIST"

    .line 11
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 12
    invoke-static {v7}, Landroid/support/v4/media/MediaUtils2;->convertToMediaItem2List([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v7

    const-string v8, "android.support.v4.media.argument.PLAYBACK_INFO"

    .line 13
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object v8

    const-string v9, "android.support.v4.media.argument.PLAYLIST_METADATA"

    .line 14
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object p1

    .line 16
    sget-boolean v9, Landroid/support/v4/media/MediaController2ImplLegacy;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onConnectedNotLocked token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mToken:Landroid/support/v4/media/SessionToken2;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", allowedCommands="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MC2ImplLegacy"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v9, 0x0

    .line 18
    :try_start_0
    iget-object v10, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v11, 0x1

    .line 19
    :try_start_1
    iget-boolean v12, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mIsReleased:Z

    if-eqz v12, :cond_1

    .line 20
    monitor-exit v10

    return-void

    .line 21
    :cond_1
    iget-boolean v12, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-eqz v12, :cond_2

    const-string p1, "MC2ImplLegacy"

    const-string v0, "Cannot be notified about the connection result many times. Probably a bug or malicious app."

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->close()V

    return-void

    :catchall_0
    move-exception p1

    move v9, v11

    goto :goto_0

    .line 25
    :cond_2
    :try_start_3
    iput-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mAllowedCommands:Landroid/support/v4/media/SessionCommandGroup2;

    .line 26
    iput v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlayerState:I

    .line 27
    iput-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCurrentMediaItem:Landroid/support/v4/media/MediaItem2;

    .line 28
    iput v3, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mBufferingState:I

    .line 29
    iput-object v4, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 30
    iput v5, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mRepeatMode:I

    .line 31
    iput v6, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mShuffleMode:I

    .line 32
    iput-object v7, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    .line 33
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaylistMetadata:Landroid/support/v4/media/MediaMetadata2;

    .line 34
    iput-boolean v11, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    .line 35
    iput-object v8, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    .line 36
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    :try_start_4
    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplLegacy$2;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/media/MediaController2ImplLegacy$2;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/SessionCommandGroup2;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception p1

    .line 38
    :goto_0
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v9, :cond_3

    .line 39
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->close()V

    :cond_3
    throw p1
.end method

.method public pause()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 5
    invoke-direct {p0, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(I)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public play()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(I)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.MEDIA_ID"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.support.v4.media.argument.EXTRAS"

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x16

    .line 8
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.QUERY"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.support.v4.media.argument.EXTRAS"

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x18

    .line 8
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.URI"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "android.support.v4.media.argument.EXTRAS"

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x17

    .line 8
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public prepare()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x6

    .line 5
    invoke-direct {p0, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(I)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.MEDIA_ID"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.support.v4.media.argument.EXTRAS"

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x19

    .line 8
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.QUERY"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.support.v4.media.argument.EXTRAS"

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x1b

    .line 8
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.URI"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "android.support.v4.media.argument.EXTRAS"

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x1a

    .line 8
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/media/MediaItem2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.support.v4.media.argument.MEDIA_ITEM"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x10

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method public replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.argument.PLAYLIST_INDEX"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Landroid/support/v4/media/MediaItem2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.support.v4.media.argument.MEDIA_ITEM"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x11

    .line 4
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 5
    invoke-direct {p0, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(I)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public rewind()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 5
    invoke-direct {p0, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(I)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public seekTo(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.SEEK_POSITION"

    .line 6
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 p1, 0x9

    .line 7
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public selectRoute(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.argument.ROUTE_BUNDLE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x26

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method public sendCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.CUSTOM_COMMAND"

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/media/SessionCommand2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "android.support.v4.media.argument.ARGUMENTS"

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "android.support.v4.media.controller.command.BY_CUSTOM_COMMAND"

    .line 8
    invoke-direct {p0, p1, v1, p3}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPlaybackSpeed(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.PLAYBACK_SPEED"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 p1, 0x27

    .line 7
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/media/MediaUtils2;->convertMediaItem2ListToParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;

    move-result-object p1

    const-string v1, "android.support.v4.media.argument.PLAYLIST"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const-string p2, "android.support.v4.media.argument.PLAYLIST_METADATA"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x13

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setRating(Ljava/lang/String;Landroid/support/mediacompat/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.MEDIA_ID"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.support.v4.media.argument.RATING"

    .line 7
    invoke-virtual {p2}, Landroid/support/mediacompat/a;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x1c

    .line 8
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.argument.REPEAT_MODE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xe

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.argument.SHUFFLE_MODE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xd

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setVolumeTo(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p0, "MC2ImplLegacy"

    const-string p1, "Session isn\'t active"

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.VOLUME"

    .line 6
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "android.support.v4.media.argument.VOLUME_FLAGS"

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xa

    .line 8
    invoke-direct {p0, p1, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public skipBackward()V
    .locals 0

    return-void
.end method

.method public skipForward()V
    .locals 0

    return-void
.end method

.method public skipToNextItem()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(I)V

    return-void
.end method

.method public skipToPlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/media/MediaItem2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.support.v4.media.argument.MEDIA_ITEM"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0xc

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method public skipToPreviousItem()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(I)V

    return-void
.end method

.method public subscribeRoutesInfo()V
    .locals 1

    const/16 v0, 0x24

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(I)V

    return-void
.end method

.method public unsubscribeRoutesInfo()V
    .locals 1

    const/16 v0, 0x25

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(I)V

    return-void
.end method

.method public updatePlaylistMetadata(Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const-string v1, "android.support.v4.media.argument.PLAYLIST_METADATA"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x15

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method
