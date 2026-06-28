.class public final Landroid/support/v4/media/MediaSession2$Builder;
.super Landroid/support/v4/media/MediaSession2$BuilderBase;
.source "MediaSession2.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/MediaSession2;
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/media/MediaSession2$MainHandlerExecutor;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/media/MediaSession2$MainHandlerExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/support/v4/media/MediaSession2$Builder$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaSession2$Builder$1;-><init>(Landroid/support/v4/media/MediaSession2$Builder;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    .line 5
    :cond_1
    new-instance v0, Landroid/support/v4/media/MediaSession2;

    iget-object v2, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mId:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    iget-object v5, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    iget-object v6, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    iget-object v7, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mSessionActivity:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/support/v4/media/MediaSession2;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setId(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaSession2$Builder;

    return-object p0
.end method

.method public bridge synthetic setId(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2$Builder;->setId(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPlayer(Landroid/support/v4/media/BaseMediaPlayer;)Landroid/support/v4/media/MediaSession2$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setPlayer(Landroid/support/v4/media/BaseMediaPlayer;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaSession2$Builder;

    return-object p0
.end method

.method public bridge synthetic setPlayer(Landroid/support/v4/media/BaseMediaPlayer;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2$Builder;->setPlayer(Landroid/support/v4/media/BaseMediaPlayer;)Landroid/support/v4/media/MediaSession2$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPlaylistAgent(Landroid/support/v4/media/MediaPlaylistAgent;)Landroid/support/v4/media/MediaSession2$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setPlaylistAgent(Landroid/support/v4/media/MediaPlaylistAgent;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaSession2$Builder;

    return-object p0
.end method

.method public bridge synthetic setPlaylistAgent(Landroid/support/v4/media/MediaPlaylistAgent;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2$Builder;->setPlaylistAgent(Landroid/support/v4/media/MediaPlaylistAgent;)Landroid/support/v4/media/MediaSession2$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)Landroid/support/v4/media/MediaSession2$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setSessionActivity(Landroid/app/PendingIntent;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaSession2$Builder;

    return-object p0
.end method

.method public bridge synthetic setSessionActivity(Landroid/app/PendingIntent;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2$Builder;->setSessionActivity(Landroid/app/PendingIntent;)Landroid/support/v4/media/MediaSession2$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSessionCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaSession2$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setSessionCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaSession2$Builder;

    return-object p0
.end method

.method public bridge synthetic setSessionCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaSession2$Builder;->setSessionCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaSession2$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setVolumeProvider(Landroid/support/v4/media/VolumeProviderCompat;)Landroid/support/v4/media/MediaSession2$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setVolumeProvider(Landroid/support/v4/media/VolumeProviderCompat;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaSession2$Builder;

    return-object p0
.end method

.method public bridge synthetic setVolumeProvider(Landroid/support/v4/media/VolumeProviderCompat;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2$Builder;->setVolumeProvider(Landroid/support/v4/media/VolumeProviderCompat;)Landroid/support/v4/media/MediaSession2$Builder;

    move-result-object p0

    return-object p0
.end method
