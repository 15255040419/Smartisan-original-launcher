.class Landroid/support/v4/media/MediaPlayer2Impl$38;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field final synthetic val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$38;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$38;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iput-object p3, p0, Landroid/support/v4/media/MediaPlayer2Impl$38;->val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaTimeDiscontinuity(Landroid/media/MediaPlayer;Landroid/media/MediaTimestamp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$38;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$38$1;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaPlayer2Impl$38$1;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$38;Landroid/media/MediaTimestamp;)V

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$300(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$38;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$38;->val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$38;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-static {p1, v0, p0, p2}, Landroid/support/v4/media/MediaPlayer2Impl;->access$1700(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaTimestamp;)V

    return-void
.end method
