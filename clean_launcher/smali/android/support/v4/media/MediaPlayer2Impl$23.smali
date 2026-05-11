.class Landroid/support/v4/media/MediaPlayer2Impl$23;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$params:Landroid/media/PlaybackParams;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/media/PlaybackParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$23;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$23;->val$params:Landroid/media/PlaybackParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$23;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$600(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;

    move-result-object v0

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$23;->val$params:Landroid/media/PlaybackParams;

    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;->onPlaybackSpeedChanged(Landroid/support/v4/media/BaseMediaPlayer;F)V

    return-void
.end method
