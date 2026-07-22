.class interface abstract Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;
.super Ljava/lang/Object;
.source "MediaSession2.java"

# interfaces
.implements Landroid/support/v4/media/MediaInterface2$SessionPlayer;
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract getAudioFocusHandler()Landroid/support/v4/media/AudioFocusHandler;
.end method

.method public abstract getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;
.end method

.method public abstract getCallbackExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getConnectedControllers()Ljava/util/List;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getInstance()Landroid/support/v4/media/MediaSession2;
.end method

.method public abstract getPlaybackInfo()Landroid/support/v4/media/MediaController2$PlaybackInfo;
.end method

.method public abstract getPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;
.end method

.method public abstract getPlayer()Landroid/support/v4/media/BaseMediaPlayer;
.end method

.method public abstract getPlaylistAgent()Landroid/support/v4/media/MediaPlaylistAgent;
.end method

.method public abstract getSessionActivity()Landroid/app/PendingIntent;
.end method

.method public abstract getSessionBinder()Landroid/os/IBinder;
.end method

.method public abstract getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
.end method

.method public abstract getToken()Landroid/support/v4/media/SessionToken2;
.end method

.method public abstract getVolumeProvider()Landroid/support/v4/media/VolumeProviderCompat;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract notifyRoutesInfoChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/util/List;)V
.end method

.method public abstract sendCustomCommand(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end method

.method public abstract sendCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;)V
.end method

.method public abstract setAllowedCommands(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommandGroup2;)V
.end method

.method public abstract setCustomLayout(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/util/List;)V
.end method

.method public abstract updatePlayer(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;)V
.end method
