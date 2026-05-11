.class public Landroid/support/v4/media/MediaSession2;
.super Ljava/lang/Object;
.source "MediaSession2.java"

# interfaces
.implements Landroid/support/v4/media/MediaInterface2$SessionPlayer;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field public static final ERROR_CODE_ACTION_ABORTED:I = 0xa

.field public static final ERROR_CODE_APP_ERROR:I = 0x1

.field public static final ERROR_CODE_AUTHENTICATION_EXPIRED:I = 0x3

.field public static final ERROR_CODE_CONCURRENT_STREAM_LIMIT:I = 0x5

.field public static final ERROR_CODE_CONTENT_ALREADY_PLAYING:I = 0x8

.field public static final ERROR_CODE_END_OF_QUEUE:I = 0xb

.field public static final ERROR_CODE_NOT_AVAILABLE_IN_REGION:I = 0x7

.field public static final ERROR_CODE_NOT_SUPPORTED:I = 0x2

.field public static final ERROR_CODE_PARENTAL_CONTROL_RESTRICTED:I = 0x6

.field public static final ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED:I = 0x4

.field public static final ERROR_CODE_SETUP_REQUIRED:I = 0xc

.field public static final ERROR_CODE_SKIP_LIMIT_REACHED:I = 0x9

.field public static final ERROR_CODE_UNKNOWN_ERROR:I = 0x0

.field static final TAG:Ljava/lang/String; = "MediaSession2"


# instance fields
.field private final mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p8}, Landroid/support/v4/media/MediaSession2;->createImpl(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->addPlaylistItem(ILandroid/support/v4/media/MediaItem2;)V

    return-void
.end method

.method public clearOnDataSourceMissingHelper()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->clearOnDataSourceMissingHelper()V

    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method createImpl(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;
    .locals 11

    .line 1
    new-instance v10, Landroid/support/v4/media/MediaSession2ImplBase;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/support/v4/media/MediaSession2ImplBase;-><init>(Landroid/support/v4/media/MediaSession2;Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V

    return-object v10
.end method

.method getAudioFocusHandler()Landroid/support/v4/media/AudioFocusHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getAudioFocusHandler()Landroid/support/v4/media/AudioFocusHandler;

    move-result-object p0

    return-object p0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingState()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->getBufferingState()I

    move-result p0

    return p0
.end method

.method getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-result-object p0

    return-object p0
.end method

.method getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getConnectedControllers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getImpl()Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    return-object p0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->getPlaybackSpeed()F

    move-result p0

    return p0
.end method

.method public getPlayer()Landroid/support/v4/media/BaseMediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getPlayer()Landroid/support/v4/media/BaseMediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public getPlayerState()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->getPlayerState()I

    move-result p0

    return p0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->getPlaylist()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistAgent()Landroid/support/v4/media/MediaPlaylistAgent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getPlaylistAgent()Landroid/support/v4/media/MediaPlaylistAgent;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method getSessionBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getSessionBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p0

    return-object p0
.end method

.method public getShuffleMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->getShuffleMode()I

    move-result p0

    return p0
.end method

.method public getToken()Landroid/support/v4/media/SessionToken2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getToken()Landroid/support/v4/media/SessionToken2;

    move-result-object p0

    return-object p0
.end method

.method public getVolumeProvider()Landroid/support/v4/media/VolumeProviderCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getVolumeProvider()Landroid/support/v4/media/VolumeProviderCompat;

    move-result-object p0

    return-object p0
.end method

.method public notifyError(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaInterface2$SessionPlayer;->notifyError(ILandroid/os/Bundle;)V

    return-void
.end method

.method public notifyRoutesInfoChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->notifyRoutesInfoChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/util/List;)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->play()V

    return-void
.end method

.method public prepare()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->prepare()V

    return-void
.end method

.method public removePlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->removePlaylistItem(Landroid/support/v4/media/MediaItem2;)V

    return-void
.end method

.method public replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->seekTo(J)V

    return-void
.end method

.method public sendCustomCommand(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->sendCustomCommand(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public sendCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->sendCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;)V

    return-void
.end method

.method public setAllowedCommands(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommandGroup2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->setAllowedCommands(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommandGroup2;)V

    return-void
.end method

.method public setCustomLayout(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->setCustomLayout(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/util/List;)V

    return-void
.end method

.method public setOnDataSourceMissingHelper(Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->setOnDataSourceMissingHelper(Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->setShuffleMode(I)V

    return-void
.end method

.method public skipBackward()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlayer;->skipBackward()V

    return-void
.end method

.method public skipForward()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlayer;->skipForward()V

    return-void
.end method

.method public skipToNextItem()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->skipToNextItem()V

    return-void
.end method

.method public skipToPlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->skipToPlaylistItem(Landroid/support/v4/media/MediaItem2;)V

    return-void
.end method

.method public skipToPreviousItem()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->skipToPreviousItem()V

    return-void
.end method

.method public updatePlayer(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->updatePlayer(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;)V

    return-void
.end method

.method public updatePlaylistMetadata(Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2;->mImpl:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->updatePlaylistMetadata(Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method
