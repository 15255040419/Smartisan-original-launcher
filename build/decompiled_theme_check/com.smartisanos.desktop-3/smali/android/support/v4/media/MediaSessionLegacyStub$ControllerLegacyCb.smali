.class final Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;
.super Landroid/support/v4/media/MediaSession2$ControllerCb;
.source "MediaSessionLegacyStub.java"


# instance fields
.field private final mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

.field final synthetic this$0:Landroid/support/v4/media/MediaSessionLegacyStub;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSessionLegacyStub;Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-direct {p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    return-void
.end method


# virtual methods
.method getId()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method onAllowedCommandsChanged(Landroid/support/v4/media/SessionCommandGroup2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/media/SessionCommandGroup2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.support.v4.media.argument.ALLOWED_COMMANDS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.ON_ALLOWED_COMMANDS_CHANGED"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onBufferingStateChanged(Landroid/support/v4/media/MediaItem2;IJ)V
    .locals 0

    .line 1
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/media/MediaItem2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p4, "android.support.v4.media.argument.MEDIA_ITEM"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "android.support.v4.media.argument.BUFFERING_STATE"

    .line 3
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object p1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object p1, p1, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    .line 5
    invoke-interface {p1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    const-string p2, "android.support.v4.media.argument.PLAYBACK_STATE_COMPAT"

    .line 6
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.ON_BUFFERING_STATE_CHANGED"

    invoke-interface {p0, p1, p3}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method onCurrentMediaItemChanged(Landroid/support/v4/media/MediaItem2;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaItem2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const-string v1, "android.support.v4.media.argument.MEDIA_ITEM"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.ON_CURRENT_MEDIA_ITEM_CHANGED"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/media/SessionCommand2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.support.v4.media.argument.CUSTOM_COMMAND"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "android.support.v4.media.argument.ARGUMENTS"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "android.support.v4.media.argument.RESULT_RECEIVER"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.SEND_CUSTOM_COMMAND"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onCustomLayoutChanged(Ljava/util/List;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/media/MediaUtils2;->convertCommandButtonListToParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;

    move-result-object p1

    const-string v1, "android.support.v4.media.argument.COMMAND_BUTTONS"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.SET_CUSTOM_LAYOUT"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onDisconnected()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    invoke-interface {p0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V

    return-void
.end method

.method onError(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.argument.ERROR_CODE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "android.support.v4.media.argument.EXTRAS"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.ON_ERROR"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onGetChildrenDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method onGetItemDone(Ljava/lang/String;Landroid/support/v4/media/MediaItem2;)V
    .locals 0

    return-void
.end method

.method onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method onPlaybackInfoChanged(Landroid/support/v4/media/MediaController2$PlaybackInfo;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.support.v4.media.argument.PLAYBACK_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.ON_PLAYBACK_INFO_CHANGED"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onPlaybackSpeedChanged(JJF)V
    .locals 0

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object p2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object p2, p2, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    .line 3
    invoke-interface {p2}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    const-string p3, "android.support.v4.media.argument.PLAYBACK_STATE_COMPAT"

    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p2, "android.support.v4.media.session.event.ON_PLAYBACK_SPEED_CHANGED"

    invoke-interface {p0, p2, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onPlayerStateChanged(JJI)V
    .locals 0

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "android.support.v4.media.argument.PLAYER_STATE"

    .line 2
    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object p2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object p2, p2, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p2}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    const-string p3, "android.support.v4.media.argument.PLAYBACK_STATE_COMPAT"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p2, "android.support.v4.media.session.event.ON_PLAYER_STATE_CHANGED"

    invoke-interface {p0, p2, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onPlaylistChanged(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
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

    .line 5
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.ON_PLAYLIST_CHANGED"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onPlaylistMetadataChanged(Landroid/support/v4/media/MediaMetadata2;)V
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

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.ON_PLAYLIST_METADATA_CHANGED"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onRepeatModeChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.argument.REPEAT_MODE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.ON_REPEAT_MODE_CHANGED"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onRoutesInfoChanged(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Bundle;

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    const-string v1, "android.support.v4.media.argument.ROUTE_BUNDLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.ON_ROUTES_INFO_CHANGED"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method onSeekCompleted(JJJ)V
    .locals 0

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "android.support.v4.media.argument.SEEK_POSITION"

    .line 2
    invoke-virtual {p1, p2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    iget-object p2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object p2, p2, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    .line 4
    invoke-interface {p2}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    const-string p3, "android.support.v4.media.argument.PLAYBACK_STATE_COMPAT"

    .line 5
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p2, "android.support.v4.media.session.event.ON_SEEK_COMPLETED"

    invoke-interface {p0, p2, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onShuffleModeChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.argument.SHUFFLE_MODE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$ControllerLegacyCb;->mIControllerCallback:Landroid/support/v4/media/session/IMediaControllerCallback;

    const-string p1, "android.support.v4.media.session.event.ON_SHUFFLE_MODE_CHANGED"

    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
