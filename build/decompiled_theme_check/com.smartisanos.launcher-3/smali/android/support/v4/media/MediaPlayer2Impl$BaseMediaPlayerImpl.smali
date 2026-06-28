.class Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;
.super Landroid/support/v4/media/BaseMediaPlayer;
.source "MediaPlayer2Impl.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-direct {p0}, Landroid/support/v4/media/BaseMediaPlayer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;-><init>(Landroid/support/v4/media/MediaPlayer2Impl;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->close()V

    return-void
.end method

.method public getAudioAttributes()Landroid/support/v4/media/AudioAttributesCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->getAudioAttributes()Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object p0

    return-object p0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingState()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$2400(Landroid/support/v4/media/MediaPlayer2Impl;)I

    move-result p0

    return p0
.end method

.method public getCurrentDataSource()Landroid/support/v4/media/DataSourceDesc;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->getCurrentDataSource()Landroid/support/v4/media/DataSourceDesc;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->getPlaybackParams()Landroid/support/v4/media/PlaybackParams2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/PlaybackParams2;->getSpeed()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getPlayerState()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$2300(Landroid/support/v4/media/MediaPlayer2Impl;)I

    move-result p0

    return p0
.end method

.method public getPlayerVolume()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->getPlayerVolume()F

    move-result p0

    return p0
.end method

.method public loopCurrent(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl;->loopCurrent(Z)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->play()V

    return-void
.end method

.method public prepare()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->prepare()V

    return-void
.end method

.method public registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/MediaPlayer2Impl;->access$2500(Landroid/support/v4/media/MediaPlayer2Impl;Ljava/util/concurrent/Executor;Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaPlayer2;->seekTo(J)V

    return-void
.end method

.method public setAudioAttributes(Landroid/support/v4/media/AudioAttributesCompat;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl;->setAudioAttributes(Landroid/support/v4/media/AudioAttributesCompat;)V

    return-void
.end method

.method public setDataSource(Landroid/support/v4/media/DataSourceDesc;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl;->setDataSource(Landroid/support/v4/media/DataSourceDesc;)V

    return-void
.end method

.method public setNextDataSource(Landroid/support/v4/media/DataSourceDesc;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl;->setNextDataSource(Landroid/support/v4/media/DataSourceDesc;)V

    return-void
.end method

.method public setNextDataSources(Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl;->setNextDataSources(Ljava/util/List;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v0, Landroid/support/v4/media/PlaybackParams2$Builder;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->getPlaybackParams()Landroid/support/v4/media/PlaybackParams2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/PlaybackParams2;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/PlaybackParams2$Builder;-><init>(Landroid/media/PlaybackParams;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/media/PlaybackParams2$Builder;->setSpeed(F)Landroid/support/v4/media/PlaybackParams2$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/PlaybackParams2$Builder;->build()Landroid/support/v4/media/PlaybackParams2;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl;->setPlaybackParams(Landroid/support/v4/media/PlaybackParams2;)V

    return-void
.end method

.method public setPlayerVolume(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl;->setPlayerVolume(F)V

    return-void
.end method

.method public skipToNext()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->skipToNext()V

    return-void
.end method

.method public unregisterPlayerEventCallback(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$2600(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    return-void
.end method
