.class abstract Landroid/support/v4/media/MediaSession2$BuilderBase;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# instance fields
.field mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

.field mCallbackExecutor:Ljava/util/concurrent/Executor;

.field final mContext:Landroid/content/Context;

.field mId:Ljava/lang/String;

.field mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

.field mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

.field mSessionActivity:Landroid/app/PendingIntent;

.field mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mContext:Landroid/content/Context;

    const-string p1, "MediaSession2"

    .line 3
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mId:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method abstract build()Landroid/support/v4/media/MediaSession2;
.end method

.method setId(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mId:Ljava/lang/String;

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setPlayer(Landroid/support/v4/media/BaseMediaPlayer;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "player shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setPlaylistAgent(Landroid/support/v4/media/MediaPlaylistAgent;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "playlistAgent shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setSessionActivity(Landroid/app/PendingIntent;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mSessionActivity:Landroid/app/PendingIntent;

    return-object p0
.end method

.method setSessionCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 2
    iput-object p2, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "executor shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setVolumeProvider(Landroid/support/v4/media/VolumeProviderCompat;)Landroid/support/v4/media/MediaSession2$BuilderBase;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2$BuilderBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    return-object p0
.end method
