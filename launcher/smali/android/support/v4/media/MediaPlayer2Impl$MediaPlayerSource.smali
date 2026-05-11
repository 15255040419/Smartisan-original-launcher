.class Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"


# instance fields
.field final mBufferedPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

.field mBufferingState:I

.field volatile mDSD:Landroid/support/v4/media/DataSourceDesc;

.field mMp2State:I

.field mPlayPending:Z

.field final mPlayer:Landroid/media/MediaPlayer;

.field mPlayerState:I

.field mSourceState:I

.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/DataSourceDesc;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mBufferedPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    iput v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    const/16 v0, 0x3e9

    .line 5
    iput v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I

    .line 6
    iput v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mBufferingState:I

    .line 7
    iput v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    .line 8
    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mDSD:Landroid/support/v4/media/DataSourceDesc;

    .line 9
    invoke-static {p1, p0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$2000(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V

    return-void
.end method


# virtual methods
.method getDSD()Landroid/support/v4/media/DataSourceDesc;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mDSD:Landroid/support/v4/media/DataSourceDesc;

    return-object p0
.end method
