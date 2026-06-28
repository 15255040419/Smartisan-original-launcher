.class public Landroid/support/v4/media/MediaController2;
.super Ljava/lang/Object;
.source "MediaController2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

.field mTimeDiff:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaController2;->createImpl(Landroid/content/Context;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "executor shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 0

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->addPlaylistItem(ILandroid/support/v4/media/MediaItem2;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index shouldn\'t be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public adjustVolume(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->adjustVolume(II)V

    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method createImpl(Landroid/content/Context;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)Landroid/support/v4/media/MediaController2$SupportLibraryImpl;
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/support/v4/media/SessionToken2;->isLegacySession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaController2ImplLegacy;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaController2;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaController2ImplBase;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaController2ImplBase;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaController2;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)V

    return-object v0
.end method

.method public fastForward()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->fastForward()V

    return-void
.end method

.method getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object p0

    return-object p0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingState()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getBufferingState()I

    move-result p0

    return p0
.end method

.method getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object p0

    return-object p0
.end method

.method getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getImpl()Landroid/support/v4/media/MediaController2$SupportLibraryImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    return-object p0
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getPlaybackInfo()Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getPlaybackSpeed()F

    move-result p0

    return p0
.end method

.method public getPlayerState()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getPlayerState()I

    move-result p0

    return p0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getPlaylist()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getSessionToken()Landroid/support/v4/media/SessionToken2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getSessionToken()Landroid/support/v4/media/SessionToken2;

    move-result-object p0

    return-object p0
.end method

.method public getShuffleMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->getShuffleMode()I

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->isConnected()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->play()V

    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mediaId shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "query shouldn\'t be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "uri shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prepare()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->prepare()V

    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mediaId shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "query shouldn\'t be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "uri shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->removePlaylistItem(Landroid/support/v4/media/MediaItem2;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 0

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index shouldn\'t be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->reset()V

    return-void
.end method

.method public rewind()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->rewind()V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->seekTo(J)V

    return-void
.end method

.method public selectRoute(Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->selectRoute(Landroid/os/Bundle;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "route shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->sendCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "list shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRating(Ljava/lang/String;Landroid/support/mediacompat/a;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->setRating(Ljava/lang/String;Landroid/support/mediacompat/a;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rating shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mediaId shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->setShuffleMode(I)V

    return-void
.end method

.method public setTimeDiff(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2;->mTimeDiff:Ljava/lang/Long;

    return-void
.end method

.method public setVolumeTo(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->setVolumeTo(II)V

    return-void
.end method

.method public skipBackward()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->skipBackward()V

    return-void
.end method

.method public skipForward()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->skipForward()V

    return-void
.end method

.method public skipToNextItem()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->skipToNextItem()V

    return-void
.end method

.method public skipToPlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->skipToPlaylistItem(Landroid/support/v4/media/MediaItem2;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skipToPreviousItem()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->skipToPreviousItem()V

    return-void
.end method

.method public subscribeRoutesInfo()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->subscribeRoutesInfo()V

    return-void
.end method

.method public unsubscribeRoutesInfo()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->unsubscribeRoutesInfo()V

    return-void
.end method

.method public updatePlaylistMetadata(Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2;->mImpl:Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaController2$SupportLibraryImpl;->updatePlaylistMetadata(Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method
