.class Landroid/support/v4/media/MediaPlayer2Impl$29;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$29;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$29;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iput-object p3, p0, Landroid/support/v4/media/MediaPlayer2Impl$29;->val$preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$29;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/DataSourceDesc;->getStartPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$29;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/DataSourceDesc;->getStartPosition()J

    move-result-wide v0

    long-to-int p0, v0

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-virtual {p1, v0, v1, p0}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$29;->val$preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {p0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :goto_0
    return-void
.end method
