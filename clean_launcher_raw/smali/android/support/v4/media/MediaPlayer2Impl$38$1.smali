.class Landroid/support/v4/media/MediaPlayer2Impl$38$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$38;

.field final synthetic val$timestamp:Landroid/media/MediaTimestamp;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$38;Landroid/media/MediaTimestamp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$38$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$38;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$38$1;->val$timestamp:Landroid/media/MediaTimestamp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/MediaPlayer2$EventCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$38$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$38;

    iget-object v1, v0, Landroid/support/v4/media/MediaPlayer2Impl$38;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$38;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    new-instance v2, Landroid/support/v4/media/MediaTimestamp2;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$38$1;->val$timestamp:Landroid/media/MediaTimestamp;

    invoke-direct {v2, p0}, Landroid/support/v4/media/MediaTimestamp2;-><init>(Landroid/media/MediaTimestamp;)V

    .line 3
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/media/MediaPlayer2$EventCallback;->onMediaTimeDiscontinuity(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/MediaTimestamp2;)V

    return-void
.end method
