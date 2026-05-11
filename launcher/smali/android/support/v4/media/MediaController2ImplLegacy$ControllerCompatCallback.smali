.class final Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaController2ImplLegacy.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplLegacy;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaController2ImplLegacy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaController2ImplLegacy$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, v0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1402(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;

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

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, v0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1302(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

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

.method public onSessionDestroyed()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->close()V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    const-class v0, Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "android.support.v4.media.session.event.ON_SEEK_COMPLETED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "android.support.v4.media.session.event.ON_ALLOWED_COMMANDS_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "android.support.v4.media.session.event.ON_SHUFFLE_MODE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "android.support.v4.media.session.event.ON_PLAYLIST_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "android.support.v4.media.session.event.SET_CUSTOM_LAYOUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "android.support.v4.media.session.event.ON_PLAYLIST_METADATA_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "android.support.v4.media.session.event.SEND_CUSTOM_COMMAND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_7
    const-string v1, "android.support.v4.media.session.event.ON_REPEAT_MODE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "android.support.v4.media.session.event.ON_ROUTES_INFO_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_9
    const-string v1, "android.support.v4.media.session.event.ON_CURRENT_MEDIA_ITEM_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_a
    const-string v1, "android.support.v4.media.session.event.ON_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_b
    const-string v1, "android.support.v4.media.session.event.ON_PLAYER_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_c
    const-string v1, "android.support.v4.media.session.event.ON_PLAYBACK_INFO_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_d
    const-string v1, "android.support.v4.media.session.event.ON_PLAYBACK_SPEED_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :sswitch_e
    const-string v1, "android.support.v4.media.session.event.ON_BUFFERING_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xd

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "android.support.v4.media.argument.SEEK_POSITION"

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string p1, "android.support.v4.media.argument.PLAYBACK_STATE_COMPAT"

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v2, p2, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1302(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$16;

    invoke-direct {p2, p0, v0, v1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$16;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;J)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    const-string p1, "android.support.v4.media.argument.MEDIA_ITEM"

    .line 10
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object p1

    const-string v0, "android.support.v4.media.argument.BUFFERING_STATE"

    .line 12
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.support.v4.media.argument.PLAYBACK_STATE_COMPAT"

    .line 13
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v1, v1, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_2
    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v2, v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$2302(Landroid/support/v4/media/MediaController2ImplLegacy;I)I

    .line 16
    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v2, p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1302(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 17
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v1, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$15;

    invoke-direct {v1, p0, p1, v0}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$15;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/MediaItem2;I)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    .line 19
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_4
    :goto_1
    return-void

    :pswitch_2
    const-string p1, "android.support.v4.media.argument.PLAYBACK_STATE_COMPAT"

    .line 20
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez p1, :cond_5

    return-void

    .line 21
    :cond_5
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, p2, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_4
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1302(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 23
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 24
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$14;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$14;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :catchall_2
    move-exception p0

    .line 25
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_3
    const-string p1, "android.support.v4.media.argument.PLAYBACK_INFO"

    .line 26
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 28
    :cond_6
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, p2, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_6
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$2202(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaController2$PlaybackInfo;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    .line 30
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 31
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$13;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$13;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/MediaController2$PlaybackInfo;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :catchall_3
    move-exception p0

    .line 32
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :pswitch_4
    const-string p1, "android.support.v4.media.argument.COMMAND_BUTTONS"

    .line 33
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/support/v4/media/MediaUtils2;->convertToCommandButtonList([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 35
    :cond_7
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$12;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$12;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_5
    const-string p1, "android.support.v4.media.argument.CUSTOM_COMMAND"

    .line 36
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 37
    :cond_8
    invoke-static {p1}, Landroid/support/v4/media/SessionCommand2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommand2;

    move-result-object p1

    const-string v0, "android.support.v4.media.argument.ARGUMENTS"

    .line 38
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.v4.media.argument.RESULT_RECEIVER"

    .line 39
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/ResultReceiver;

    .line 40
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$11;

    invoke-direct {v2, p0, p1, v0, p2}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$11;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_6
    const-string p1, "android.support.v4.media.argument.SHUFFLE_MODE"

    .line 41
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 42
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, p2, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_8
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$2102(Landroid/support/v4/media/MediaController2ImplLegacy;I)I

    .line 44
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 45
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$10;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$10;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :catchall_4
    move-exception p0

    .line 46
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0

    :pswitch_7
    const-string p1, "android.support.v4.media.argument.REPEAT_MODE"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 48
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, p2, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_a
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$2002(Landroid/support/v4/media/MediaController2ImplLegacy;I)I

    .line 50
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 51
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$9;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$9;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :catchall_5
    move-exception p0

    .line 52
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw p0

    :pswitch_8
    const-string p1, "android.support.v4.media.argument.PLAYLIST_METADATA"

    .line 53
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object p1

    .line 55
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, p2, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_c
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1902(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaMetadata2;)Landroid/support/v4/media/MediaMetadata2;

    .line 57
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 58
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$8;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$8;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/MediaMetadata2;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :catchall_6
    move-exception p0

    .line 59
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p0

    :pswitch_9
    const-string p1, "android.support.v4.media.argument.PLAYLIST_METADATA"

    .line 60
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object p1

    const-string v0, "android.support.v4.media.argument.PLAYLIST"

    .line 62
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p2

    .line 63
    invoke-static {p2}, Landroid/support/v4/media/MediaUtils2;->convertToMediaItem2List([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object p2

    .line 64
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, v0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_e
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v1, p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1802(Landroid/support/v4/media/MediaController2ImplLegacy;Ljava/util/List;)Ljava/util/List;

    .line 66
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v1, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1902(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaMetadata2;)Landroid/support/v4/media/MediaMetadata2;

    .line 67
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 68
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$7;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$7;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :catchall_7
    move-exception p0

    .line 69
    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw p0

    :pswitch_a
    const-string p1, "android.support.v4.media.argument.ROUTE_BUNDLE"

    .line 70
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 71
    invoke-static {p1}, Landroid/support/v4/media/MediaUtils2;->convertToBundleList([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object p1

    .line 72
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$6;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$6;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_b
    const-string p1, "android.support.v4.media.argument.ERROR_CODE"

    .line 73
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "android.support.v4.media.argument.EXTRAS"

    .line 74
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 75
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$5;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_c
    const-string p1, "android.support.v4.media.argument.MEDIA_ITEM"

    .line 76
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object p1

    .line 78
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, p2, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_10
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1702(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/MediaItem2;

    .line 80
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 81
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$4;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$4;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/MediaItem2;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_8
    move-exception p0

    .line 82
    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw p0

    :pswitch_d
    const-string p1, "android.support.v4.media.argument.PLAYER_STATE"

    .line 83
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "android.support.v4.media.argument.PLAYBACK_STATE_COMPAT"

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez p2, :cond_9

    return-void

    .line 85
    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, v0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_12
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v1, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1602(Landroid/support/v4/media/MediaController2ImplLegacy;I)I

    .line 87
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v1, p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1302(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 88
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 89
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$3;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$3;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_9
    move-exception p0

    .line 90
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw p0

    :pswitch_e
    const-string p1, "android.support.v4.media.argument.ALLOWED_COMMANDS"

    .line 91
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 92
    invoke-static {p1}, Landroid/support/v4/media/SessionCommandGroup2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommandGroup2;

    move-result-object p1

    .line 93
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object p2, p2, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 94
    :try_start_14
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1502(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/SessionCommandGroup2;)Landroid/support/v4/media/SessionCommandGroup2;

    .line 95
    monitor-exit p2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 96
    iget-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$2;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/SessionCommandGroup2;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_a
    move-exception p0

    .line 97
    :try_start_15
    monitor-exit p2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    throw p0

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bcae3fc -> :sswitch_e
        -0x7ad14943 -> :sswitch_d
        -0x5eb3585e -> :sswitch_c
        -0x57afe373 -> :sswitch_b
        -0x3ce9341d -> :sswitch_a
        -0x24c97c72 -> :sswitch_9
        -0x57d366d -> :sswitch_8
        -0x3313129 -> :sswitch_7
        0xdb556b9 -> :sswitch_6
        0x124216cc -> :sswitch_5
        0x18606080 -> :sswitch_4
        0x300da84c -> :sswitch_3
        0x3570ac43 -> :sswitch_2
        0x6518bbd9 -> :sswitch_1
        0x6f922989 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionReady()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$1;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1100(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$1;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/os/Handler;)V

    const-string p0, "android.support.v4.media.controller.command.CONNECT"

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$1200(Landroid/support/v4/media/MediaController2ImplLegacy;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method
