.class Landroid/support/v4/media/SessionPlaylistAgentImplBase;
.super Landroid/support/v4/media/MediaPlaylistAgent;
.source "SessionPlaylistAgentImplBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field static final END_OF_PLAYLIST:I = -0x1

.field static final NO_VALID_ITEMS:I = -0x2


# instance fields
.field private mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

.field private mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

.field private final mEopPlayItem:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

.field private mItemDsdMap:Ljava/util/Map;

.field private final mLock:Ljava/lang/Object;

.field private mMetadata:Landroid/support/v4/media/MediaMetadata2;

.field private mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

.field private final mPlayerCallback:Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

.field private mPlaylist:Ljava/util/ArrayList;

.field private mRepeatMode:I

.field private final mSession:Landroid/support/v4/media/MediaSession2ImplBase;

.field private mShuffleMode:I

.field private mShuffledList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/BaseMediaPlayer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaPlaylistAgent;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v2, v1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;-><init>(Landroid/support/v4/media/SessionPlaylistAgentImplBase;ILandroid/support/v4/media/DataSourceDesc;)V

    iput-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 7
    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mSession:Landroid/support/v4/media/MediaSession2ImplBase;

    .line 8
    iput-object p2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 9
    new-instance p1, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

    invoke-direct {p1, p0, v1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;-><init>(Landroid/support/v4/media/SessionPlaylistAgentImplBase;Landroid/support/v4/media/SessionPlaylistAgentImplBase$1;)V

    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayerCallback:Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

    .line 10
    iget-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    iget-object p2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mSession:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {p2}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayerCallback:Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

    invoke-virtual {p1, p2, p0}, Landroid/support/v4/media/BaseMediaPlayer;->registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "player shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sessionImpl shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Landroid/support/v4/media/BaseMediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    return-object p0
.end method

.method static synthetic access$202(Landroid/support/v4/media/SessionPlaylistAgentImplBase;Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v4/media/SessionPlaylistAgentImplBase;II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/v4/media/SessionPlaylistAgentImplBase;Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/DataSourceDesc;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->retrieveDataSourceDescLocked(Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/DataSourceDesc;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    return-object p0
.end method

.method private applyShuffleModeLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffleMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private static clamp(II)I
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    move p0, p1

    :cond_1
    return p0
.end method

.method private getNextValidPlayItemLocked(II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    if-lez p2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    move v2, p1

    move p1, v1

    :goto_1
    const/4 v3, 0x0

    if-ge p1, v0, :cond_8

    add-int/2addr v2, p2

    if-ltz v2, :cond_2

    .line 2
    iget-object v4, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_6

    .line 3
    :cond_2
    iget v4, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mRepeatMode:I

    if-nez v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    iget-object v3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    :goto_2
    return-object v3

    :cond_4
    if-gez v2, :cond_5

    .line 5
    iget-object v2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    move v2, v1

    .line 6
    :cond_6
    :goto_3
    iget-object v3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaItem2;

    invoke-direct {p0, v3}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->retrieveDataSourceDescLocked(Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/DataSourceDesc;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 7
    new-instance p1, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    invoke-direct {p1, p0, v2, v3}, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;-><init>(Landroid/support/v4/media/SessionPlaylistAgentImplBase;ILandroid/support/v4/media/DataSourceDesc;)V

    return-object p1

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    return-object v3
.end method

.method private hasValidItem()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private retrieveDataSourceDescLocked(Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/DataSourceDesc;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/media/MediaItem2;->getDataSourceDesc()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/DataSourceDesc;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

    if-eqz v1, :cond_2

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mSession:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2ImplBase;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;->onDataSourceMissing(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private updateCurrentIfNeededLocked()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    invoke-virtual {v0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v1, v1, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroid/support/v4/media/MediaItem2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iput v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget v0, v0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    iget v3, v0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaItem2;

    iput-object v1, v0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroid/support/v4/media/MediaItem2;

    .line 7
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v0, v0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroid/support/v4/media/MediaItem2;

    invoke-direct {p0, v0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->retrieveDataSourceDescLocked(Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget v0, v0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    invoke-direct {p0, v0, v2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    .line 9
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updatePlayerDataSourceLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    invoke-virtual {v0}, Landroid/support/v4/media/BaseMediaPlayer;->getCurrentDataSource()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v1, v1, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroid/support/v4/media/DataSourceDesc;

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/BaseMediaPlayer;->setDataSource(Landroid/support/v4/media/DataSourceDesc;)V

    .line 4
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    iget p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mRepeatMode:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/media/BaseMediaPlayer;->loopCurrent(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 7

    if-eqz p2, :cond_2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->clamp(II)I

    move-result p1

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4
    iget v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffleMode:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v2

    int-to-double v5, p1

    mul-double/2addr v3, v5

    double-to-int p1, v3

    .line 7
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 9
    invoke-direct {p0, p1, v2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    .line 10
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 12
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->notifyPlaylistChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearOnDataSourceMissingHelper()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

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

.method getCurShuffledIndex()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroid/support/v4/media/MediaItem2;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMediaItem(Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/MediaItem2;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mRepeatMode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffleMode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->notifyPlaylistChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 5

    if-eqz p2, :cond_2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->clamp(II)I

    move-result p1

    .line 5
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 6
    iget-object v3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    iget-object v4, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 10
    invoke-direct {p0, p1, v2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    .line 11
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 13
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->notifyPlaylistChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnDataSourceMissingHelper(Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

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

.method public setPlayer(Landroid/support/v4/media/BaseMediaPlayer;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    if-ne p1, v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    iget-object v2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayerCallback:Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/BaseMediaPlayer;->unregisterPlayerEventCallback(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    .line 5
    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 6
    iget-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mSession:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayerCallback:Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/media/BaseMediaPlayer;->registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    .line 7
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "player shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->applyShuffleModeLocked()V

    .line 6
    iput-object p2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    const/4 p1, -0x1

    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    .line 8
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->notifyPlaylistChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "list shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRepeatMode(I)V
    .locals 4

    if-ltz p1, :cond_6

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget v2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mRepeatMode:I

    if-ne v2, p1, :cond_1

    .line 3
    monitor-exit v1

    return-void

    .line 4
    :cond_1
    iput p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mRepeatMode:I

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    .line 6
    invoke-direct {p0, p1, v2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    .line 7
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    if-eq p1, v0, :cond_5

    .line 9
    iget-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    invoke-virtual {p1, v2}, Landroid/support/v4/media/BaseMediaPlayer;->loopCurrent(Z)V

    goto :goto_1

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/BaseMediaPlayer;->loopCurrent(Z)V

    .line 11
    :cond_5
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->notifyRepeatModeChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffleMode:I

    if-ne v1, p1, :cond_1

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_1
    iput p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffleMode:I

    .line 5
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->applyShuffleModeLocked()V

    .line 6
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->notifyShuffleModeChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public skipToNextItem()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget v1, v1, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object v1

    .line 4
    iget-object v2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    if-eq v1, v2, :cond_1

    .line 5
    iput-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    .line 6
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public skipToPlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v1, v1, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroid/support/v4/media/MediaItem2;

    invoke-virtual {p1, v1}, Landroid/support/v4/media/MediaItem2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    new-instance v1, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;-><init>(Landroid/support/v4/media/SessionPlaylistAgentImplBase;I)V

    iput-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    .line 6
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "item shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skipToPreviousItem()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    iget v1, v1, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object v1

    .line 5
    iget-object v2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    if-eq v1, v2, :cond_1

    .line 6
    iput-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mCurrent:Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    .line 7
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updatePlaylistMetadata(Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    if-ne p1, v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadata2;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->notifyPlaylistMetadataChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
