.class Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"


# instance fields
.field mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

.field mAudioSessionId:Ljava/lang/Integer;

.field mAuxEffect:Ljava/lang/Integer;

.field mAuxEffectSendLevel:Ljava/lang/Float;

.field mPlaybackParams:Landroid/media/PlaybackParams;

.field mQueue:Ljava/util/List;

.field mSurface:Landroid/view/Surface;

.field mSyncParams:Landroid/media/SyncParams;

.field mVolume:Ljava/lang/Float;

.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;-><init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/DataSourceDesc;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method declared-synchronized attachAuxEffect(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->attachAuxEffect(I)V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffect:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized deselectTrack(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->deselectTrack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getAudioAttributes()Landroid/support/v4/media/AudioAttributesCompat;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getAudioSessionId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getBufferedPosition()J
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 2
    iget-object v1, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mBufferedPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getBufferingState()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mBufferingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentPlayer()Landroid/media/MediaPlayer;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentPosition()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDrmInfo()Landroid/media/MediaPlayer$DrmInfo;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDrmInfo()Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDuration()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFirst()Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->getKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getMediaPlayer2State()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPlayerState()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSelectedTrack(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getSourceForPlayer(Landroid/media/MediaPlayer;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 2
    iget-object v2, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getSyncParams()Landroid/media/SyncParams;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getSyncParams()Landroid/media/SyncParams;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getTimestamp()Landroid/support/v4/media/MediaTimestamp2;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTimestamp()Landroid/media/MediaTimestamp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/support/v4/media/MediaTimestamp2;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaTimestamp2;-><init>(Landroid/media/MediaTimestamp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getVideoHeight()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getVideoWidth()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getVolume()F
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized moveToNext()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 2
    iget-object v2, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 3
    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 5
    iget v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    iget v2, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    if-eq v0, v2, :cond_0

    .line 6
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$2;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$2;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaPlayer2Impl;->access$700(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;)V

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$3;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$3;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaPlayer2Impl;->access$700(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "player/source queue emptied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onCompletion(Landroid/media/MediaPlayer;)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3eb

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    .line 4
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object p1

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$1;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroid/support/v4/media/DataSourceDesc;)V

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$300(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 6
    monitor-exit p0

    return-object p1

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->moveToNext()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->playCurrent()Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onError(Landroid/media/MediaPlayer;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x3ed

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onPrepared(Landroid/media/MediaPlayer;)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 3
    iget-object v3, v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v3, :cond_2

    if-nez v1, :cond_1

    .line 4
    iget-boolean p1, v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayPending:Z

    if-eqz p1, :cond_0

    .line 5
    iput-boolean v0, v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayPending:Z

    .line 6
    iget-object p1, v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 7
    iget-object p1, v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    const/16 v0, 0x3ec

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    :cond_1
    :goto_1
    const/4 p1, 0x2

    .line 9
    iput p1, v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    .line 10
    iget-object p1, v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V

    add-int/2addr v1, v0

    .line 11
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 12
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/16 v1, 0x3eb

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized play()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 2
    iget v1, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 4
    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized playCurrent()Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 2
    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 4
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 6
    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    if-eqz v3, :cond_2

    .line 7
    iget-object v3, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioAttributes;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 8
    :cond_2
    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffect:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffect:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->attachAuxEffect(I)V

    .line 10
    :cond_3
    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffectSendLevel:Ljava/lang/Float;

    if-eqz v3, :cond_4

    .line 11
    iget-object v3, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffectSendLevel:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAuxEffectSendLevel(F)V

    .line 12
    :cond_4
    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSyncParams:Landroid/media/SyncParams;

    if-eqz v3, :cond_5

    .line 13
    iget-object v3, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSyncParams:Landroid/media/SyncParams;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setSyncParams(Landroid/media/SyncParams;)V

    .line 14
    :cond_5
    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParams:Landroid/media/PlaybackParams;

    if-eqz v3, :cond_6

    .line 15
    iget-object v3, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 16
    :cond_6
    iget v3, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 17
    iget-object v2, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 18
    iget-object v2, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0x3ec

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    .line 19
    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v3, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$4;

    invoke-direct {v3, p0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$4;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaPlayer2Impl;->access$300(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;)V

    goto :goto_0

    .line 20
    :cond_7
    iget v3, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    if-nez v3, :cond_8

    .line 21
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object v0

    :cond_8
    const/4 v2, 0x1

    .line 22
    iput-boolean v2, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized prepare()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized prepareAsync()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized prepareAt(I)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getPlayerState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 5
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioSessionId:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioSessionId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 7
    :cond_1
    iput v0, p1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    .line 8
    invoke-static {p1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$2100(Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V

    .line 9
    iget-object v2, p1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-object v1

    .line 11
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v1

    .line 12
    iget-object p1, p1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    const/16 v2, 0x3ed

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    .line 13
    new-instance p1, Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    const/16 v2, -0x3f2

    invoke-direct {p1, v1, v0, v2}, Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;-><init>(Landroid/support/v4/media/DataSourceDesc;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 14
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized prepareDrm(Ljava/util/UUID;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->prepareDrm(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized provideKeyResponse([B[B)[B
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->provideKeyResponse([B[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized releaseDrm()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->releaseDrm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reset()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 2
    iget-object v2, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 3
    iget-object v2, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mBufferedPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSurface:Landroid/view/Surface;

    .line 6
    iput-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffect:Ljava/lang/Integer;

    .line 7
    iput-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffectSendLevel:Ljava/lang/Float;

    .line 8
    iput-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    .line 9
    iput-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioSessionId:Ljava/lang/Integer;

    .line 10
    iput-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSyncParams:Landroid/media/SyncParams;

    .line 11
    iput-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParams:Landroid/media/PlaybackParams;

    .line 12
    iget-object v2, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0x3e9

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    .line 13
    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized restoreKeys([B)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->restoreKeys([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized seekTo(JI)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->seekTo(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized selectTrack(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAudioAttributes(Landroid/support/v4/media/AudioAttributesCompat;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroid/support/v4/media/AudioAttributesCompat;

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioAttributes;

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAudioSessionId(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAuxEffectSendLevel(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAuxEffectSendLevel(F)V

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffectSendLevel:Ljava/lang/Float;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setBufferingState(Landroid/media/MediaPlayer;I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 2
    iget-object v2, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mBufferingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    iput p2, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mBufferingState:I

    .line 6
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$6;

    invoke-direct {v0, p0, v1, p2}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$6;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;I)V

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$700(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setFirst(Landroid/support/v4/media/DataSourceDesc;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    new-instance v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-direct {v2, v3, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;-><init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/DataSourceDesc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iput-object p1, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mDSD:Landroid/support/v4/media/DataSourceDesc;

    .line 4
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$2000(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V

    .line 5
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-static {p1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$2100(Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setLooping(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setMp2State(Landroid/media/MediaPlayer;I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 2
    iget-object v2, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    iput p2, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I

    .line 6
    invoke-static {}, Landroid/support/v4/media/MediaPlayer2Impl;->access$2200()Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    iget p2, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, p1, :cond_2

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    :try_start_2
    iput p1, v1, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    .line 10
    iget-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$5;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$5;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;I)V

    invoke-static {p2, v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$700(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setNext(Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;-><init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/DataSourceDesc;)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    :try_start_1
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setNextMultiple(Ljava/util/List;)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/DataSourceDesc;

    .line 3
    new-instance v2, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-direct {v2, v3, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;-><init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/DataSourceDesc;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_1
    :try_start_1
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 8
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setOnDrmConfigHelper(Landroid/media/MediaPlayer$OnDrmConfigHelper;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnDrmConfigHelper(Landroid/media/MediaPlayer$OnDrmConfigHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParams:Landroid/media/PlaybackParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSurface(Landroid/view/Surface;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSurface:Landroid/view/Surface;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSyncParams(Landroid/media/SyncParams;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSyncParams(Landroid/media/SyncParams;)V

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSyncParams:Landroid/media/SyncParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setVolume(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized skipToNext()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->moveToNext()V

    .line 4
    iget v1, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayPending:Z

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->playCurrent()Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No next source available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
