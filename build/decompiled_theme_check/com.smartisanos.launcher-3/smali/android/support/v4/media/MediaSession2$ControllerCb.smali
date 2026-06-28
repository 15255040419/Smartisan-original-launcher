.class abstract Landroid/support/v4/media/MediaSession2$ControllerCb;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/media/MediaSession2$ControllerCb;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/media/MediaSession2$ControllerCb;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->getId()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2$ControllerCb;->getId()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method abstract getId()Landroid/os/IBinder;
.end method

.method public hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->getId()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method abstract onAllowedCommandsChanged(Landroid/support/v4/media/SessionCommandGroup2;)V
.end method

.method abstract onBufferingStateChanged(Landroid/support/v4/media/MediaItem2;IJ)V
.end method

.method abstract onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method abstract onCurrentMediaItemChanged(Landroid/support/v4/media/MediaItem2;)V
.end method

.method abstract onCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end method

.method abstract onCustomLayoutChanged(Ljava/util/List;)V
.end method

.method abstract onDisconnected()V
.end method

.method abstract onError(ILandroid/os/Bundle;)V
.end method

.method abstract onGetChildrenDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
.end method

.method abstract onGetItemDone(Ljava/lang/String;Landroid/support/v4/media/MediaItem2;)V
.end method

.method abstract onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method abstract onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
.end method

.method abstract onPlaybackInfoChanged(Landroid/support/v4/media/MediaController2$PlaybackInfo;)V
.end method

.method abstract onPlaybackSpeedChanged(JJF)V
.end method

.method abstract onPlayerStateChanged(JJI)V
.end method

.method abstract onPlaylistChanged(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
.end method

.method abstract onPlaylistMetadataChanged(Landroid/support/v4/media/MediaMetadata2;)V
.end method

.method abstract onRepeatModeChanged(I)V
.end method

.method abstract onRoutesInfoChanged(Ljava/util/List;)V
.end method

.method abstract onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method abstract onSeekCompleted(JJJ)V
.end method

.method abstract onShuffleModeChanged(I)V
.end method
