.class Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$3;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

.field final synthetic val$src2:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$3;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$3;->val$src2:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$3;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$600(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;

    move-result-object v0

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue$3;->val$src2:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mDSD:Landroid/support/v4/media/DataSourceDesc;

    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;->onCurrentDataSourceChanged(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/DataSourceDesc;)V

    return-void
.end method
