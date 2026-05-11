.class Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;
.super Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;
.source "MediaSession2ImplBase.java"


# instance fields
.field private final mSession:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaSession2ImplBase$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/MediaItem2;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;->getMediaItem(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/MediaItem2;

    move-result-object p0

    return-object p0
.end method

.method private getMediaItem(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/MediaItem2;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaylistAgent()Landroid/support/v4/media/MediaPlaylistAgent;

    move-result-object p0

    const-string p1, "MS2ImplBase"

    if-nez p0, :cond_1

    .line 2
    sget-boolean p0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p2, "Session is closed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v4/media/MediaPlaylistAgent;->getMediaItem(Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/MediaItem2;

    move-result-object p0

    if-nez p0, :cond_2

    .line 5
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find matching item for dsd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object p0
.end method

.method private getSession()Landroid/support/v4/media/MediaSession2ImplBase;
    .locals 3

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaSession2ImplBase;

    if-nez p0, :cond_0

    .line 2
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "MS2ImplBase"

    const-string v2, "Session is closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p0
.end method


# virtual methods
.method public onBufferingStateChanged(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/DataSourceDesc;I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroid/support/v4/media/MediaSession2ImplBase;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$4;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$4;-><init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/BaseMediaPlayer;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCurrentDataSourceChanged(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/DataSourceDesc;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroid/support/v4/media/MediaSession2ImplBase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$1;

    invoke-direct {v2, p0, p2, v0, p1}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$1;-><init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/BaseMediaPlayer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaPrepared(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/DataSourceDesc;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroid/support/v4/media/MediaSession2ImplBase;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;-><init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/BaseMediaPlayer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlaybackSpeedChanged(Landroid/support/v4/media/BaseMediaPlayer;F)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroid/support/v4/media/MediaSession2ImplBase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;

    invoke-direct {v2, p0, v0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;-><init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/BaseMediaPlayer;F)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayerStateChanged(Landroid/support/v4/media/BaseMediaPlayer;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroid/support/v4/media/MediaSession2ImplBase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$3;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$3;-><init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/MediaSession2ImplBase;ILandroid/support/v4/media/BaseMediaPlayer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSeekCompleted(Landroid/support/v4/media/BaseMediaPlayer;J)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroid/support/v4/media/MediaSession2ImplBase;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;-><init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/BaseMediaPlayer;J)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
