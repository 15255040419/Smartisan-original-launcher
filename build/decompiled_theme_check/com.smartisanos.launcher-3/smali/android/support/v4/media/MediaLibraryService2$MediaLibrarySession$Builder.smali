.class public final Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;
.super Landroid/support/v4/media/MediaSession2$BuilderBase;
.source "MediaLibraryService2.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaLibraryService2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setSessionCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;
    .locals 10

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/support/v4/media/MediaSession2$MainHandlerExecutor;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/media/MediaSession2$MainHandlerExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder$1;-><init>(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    .line 6
    :cond_1
    new-instance v0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    iget-object v2, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mId:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    iget-object v5, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    iget-object v6, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    iget-object v7, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mSessionActivity:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V

    return-object v0
.end method

.method public bridge synthetic build()Landroid/support/v4/media/MediaSession2;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;->build()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object p0

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setId(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object p0
.end method

.method public bridge synthetic setId(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;->setId(Ljava/lang/String;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPlayer(Landroid/support/v4/media/BaseMediaPlayer;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setPlayer(Landroid/support/v4/media/BaseMediaPlayer;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object p0
.end method

.method public bridge synthetic setPlayer(Landroid/support/v4/media/BaseMediaPlayer;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;->setPlayer(Landroid/support/v4/media/BaseMediaPlayer;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPlaylistAgent(Landroid/support/v4/media/MediaPlaylistAgent;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setPlaylistAgent(Landroid/support/v4/media/MediaPlaylistAgent;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object p0
.end method

.method public bridge synthetic setPlaylistAgent(Landroid/support/v4/media/MediaPlaylistAgent;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;->setPlaylistAgent(Landroid/support/v4/media/MediaPlaylistAgent;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setSessionActivity(Landroid/app/PendingIntent;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object p0
.end method

.method public bridge synthetic setSessionActivity(Landroid/app/PendingIntent;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;->setSessionActivity(Landroid/app/PendingIntent;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setVolumeProvider(Landroid/support/v4/media/VolumeProviderCompat;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v4/media/MediaSession2$BuilderBase;->setVolumeProvider(Landroid/support/v4/media/VolumeProviderCompat;)Landroid/support/v4/media/MediaSession2$BuilderBase;

    check-cast p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object p0
.end method

.method public bridge synthetic setVolumeProvider(Landroid/support/v4/media/VolumeProviderCompat;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;->setVolumeProvider(Landroid/support/v4/media/VolumeProviderCompat;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p0

    return-object p0
.end method
