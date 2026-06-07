.class public interface abstract Lcom/smartisanos/music/ISmartisanosMusicService;
.super Ljava/lang/Object;
.source "ISmartisanosMusicService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/music/ISmartisanosMusicService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addToFavorites(J)V
.end method

.method public abstract cancelSleepMode()V
.end method

.method public abstract cycleRepeat()V
.end method

.method public abstract delayPlay(J)V
.end method

.method public abstract duration()J
.end method

.method public abstract enqueue([JI)V
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method

.method public abstract getAlbumBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getAlbumId()J
.end method

.method public abstract getAlbumName()Ljava/lang/String;
.end method

.method public abstract getArtistId()J
.end method

.method public abstract getArtistName()Ljava/lang/String;
.end method

.method public abstract getAudioId()J
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getBufferProgress()J
.end method

.method public abstract getMediaMountedCount()I
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPlayingMode()I
.end method

.method public abstract getQueue()[J
.end method

.method public abstract getQueuePosition()I
.end method

.method public abstract getRemainingTime()J
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleMode()I
.end method

.method public abstract getTrackName()Ljava/lang/String;
.end method

.method public abstract isBuffering()Z
.end method

.method public abstract isFavorite(J)Z
.end method

.method public abstract isHifi()Z
.end method

.method public abstract isNetResource()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPlayingState()Z
.end method

.method public abstract next()V
.end method

.method public abstract open([JI)V
.end method

.method public abstract openFile(Ljava/lang/String;)V
.end method

.method public abstract pause()V
.end method

.method public abstract pauseNow()V
.end method

.method public abstract play()V
.end method

.method public abstract playAll([JIZ)V
.end method

.method public abstract position()J
.end method

.method public abstract prev()V
.end method

.method public abstract removeFromFavorites(J)V
.end method

.method public abstract removeTrack(J)I
.end method

.method public abstract removeTracks(II)I
.end method

.method public abstract replace([J)V
.end method

.method public abstract rollback()V
.end method

.method public abstract seek(J)J
.end method

.method public abstract seekAndPlay(JZZJ)V
.end method

.method public abstract setPlayingMode(I)V
.end method

.method public abstract setQueuePosition(I)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleMode(I)V
.end method

.method public abstract shuffleAllAlbums([J[JII)V
.end method

.method public abstract stop()V
.end method

.method public abstract toSleepMode(J)V
.end method

.method public abstract toggleFavorite()V
.end method

.method public abstract toggleShuffle()V
.end method

.method public abstract tonggleHifi()V
.end method
