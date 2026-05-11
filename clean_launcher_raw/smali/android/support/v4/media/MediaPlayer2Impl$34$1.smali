.class Landroid/support/v4/media/MediaPlayer2Impl$34$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$34;

.field final synthetic val$seekPos:J


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$34;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$34$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$34;

    iput-wide p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$34$1;->val$seekPos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$34$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$34;

    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$34;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$600(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$BaseMediaPlayerImpl;

    move-result-object v0

    iget-wide v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$34$1;->val$seekPos:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;->onSeekCompleted(Landroid/support/v4/media/BaseMediaPlayer;J)V

    return-void
.end method
