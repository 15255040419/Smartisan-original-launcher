.class Landroid/support/v4/media/MediaSessionLegacyStub$7;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

.field final synthetic val$cb:Landroid/os/ResultReceiver;

.field final synthetic val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSessionLegacyStub;Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iput-object p2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    iput-object p3, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$cb:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-static {v0}, Landroid/support/v4/media/MediaSessionLegacyStub;->access$400(Landroid/support/v4/media/MediaSessionLegacyStub;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-static {v1}, Landroid/support/v4/media/MediaSessionLegacyStub;->access$500(Landroid/support/v4/media/MediaSessionLegacyStub;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->getId()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v1, v1, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    .line 6
    invoke-interface {v1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onConnect(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaSession2$ControllerInfo;)Landroid/support/v4/media/SessionCommandGroup2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 8
    iget-object v2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->isTrusted()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 9
    invoke-static {}, Landroid/support/v4/media/MediaSessionLegacyStub;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accepting connection, controllerInfo="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " allowedCommands="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MediaSessionLegacyStub"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v0, :cond_4

    .line 11
    new-instance v0, Landroid/support/v4/media/SessionCommandGroup2;

    invoke-direct {v0}, Landroid/support/v4/media/SessionCommandGroup2;-><init>()V

    .line 12
    :cond_4
    iget-object v2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-static {v2}, Landroid/support/v4/media/MediaSessionLegacyStub;->access$400(Landroid/support/v4/media/MediaSessionLegacyStub;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 13
    :try_start_1
    iget-object v4, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-static {v4}, Landroid/support/v4/media/MediaSessionLegacyStub;->access$500(Landroid/support/v4/media/MediaSessionLegacyStub;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {v5}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->getId()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object v4, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-static {v4}, Landroid/support/v4/media/MediaSessionLegacyStub;->access$600(Landroid/support/v4/media/MediaSessionLegacyStub;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {v5}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->getId()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v4, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-static {v4}, Landroid/support/v4/media/MediaSessionLegacyStub;->access$700(Landroid/support/v4/media/MediaSessionLegacyStub;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {v4, v5, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 18
    invoke-virtual {v0}, Landroid/support/v4/media/SessionCommandGroup2;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.support.v4.media.argument.ALLOWED_COMMANDS"

    .line 19
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    iget-object v4, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v4, v4, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v4}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->getPlayerState()I

    move-result v4

    const-string v5, "android.support.v4.media.argument.PLAYER_STATE"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    iget-object v4, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v4, v4, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v4}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->getBufferingState()I

    move-result v4

    const-string v5, "android.support.v4.media.argument.BUFFERING_STATE"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    iget-object v4, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v4, v4, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    .line 23
    invoke-interface {v4}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v4

    const-string v5, "android.support.v4.media.argument.PLAYBACK_STATE_COMPAT"

    .line 24
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    iget-object v4, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v4, v4, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v4}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->getRepeatMode()I

    move-result v4

    const-string v5, "android.support.v4.media.argument.REPEAT_MODE"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-object v4, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v4, v4, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v4}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->getShuffleMode()I

    move-result v4

    const-string v5, "android.support.v4.media.argument.SHUFFLE_MODE"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0x12

    .line 27
    invoke-virtual {v0, v4}, Landroid/support/v4/media/SessionCommandGroup2;->hasCommand(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v4, v4, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    .line 28
    invoke-interface {v4}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->getPlaylist()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_6

    .line 29
    invoke-static {v4}, Landroid/support/v4/media/MediaUtils2;->convertMediaItem2ListToParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;

    move-result-object v4

    const-string v5, "android.support.v4.media.argument.PLAYLIST"

    .line 30
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_6
    const/16 v4, 0x14

    .line 31
    invoke-virtual {v0, v4}, Landroid/support/v4/media/SessionCommandGroup2;->hasCommand(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    .line 32
    invoke-interface {v0}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object v3

    :cond_7
    if-eqz v3, :cond_8

    .line 33
    invoke-virtual {v3}, Landroid/support/v4/media/MediaItem2;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "android.support.v4.media.argument.MEDIA_ITEM"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    :cond_8
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    .line 35
    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getPlaybackInfo()Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "android.support.v4.media.argument.PLAYBACK_INFO"

    .line 36
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaInterface2$SessionPlaylistControl;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 38
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "android.support.v4.media.argument.PLAYLIST_METADATA"

    .line 39
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 41
    :cond_a
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$cb:Landroid/os/ResultReceiver;

    invoke-virtual {p0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 43
    :cond_b
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-static {v0}, Landroid/support/v4/media/MediaSessionLegacyStub;->access$400(Landroid/support/v4/media/MediaSessionLegacyStub;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 44
    :try_start_3
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-static {v0}, Landroid/support/v4/media/MediaSessionLegacyStub;->access$500(Landroid/support/v4/media/MediaSessionLegacyStub;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->getId()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    invoke-static {}, Landroid/support/v4/media/MediaSessionLegacyStub;->access$300()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rejecting connection, controllerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionLegacyStub"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_c
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$7;->val$cb:Landroid/os/ResultReceiver;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_3
    return-void

    :catchall_1
    move-exception p0

    .line 49
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 50
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method
