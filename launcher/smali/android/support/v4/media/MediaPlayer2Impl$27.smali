.class Landroid/support/v4/media/MediaPlayer2Impl$27;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field final synthetic val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$27;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$27;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iput-object p3, p0, Landroid/support/v4/media/MediaPlayer2Impl$27;->val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$27;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$27;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$27;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->pause()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$27;->val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$27;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, p0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    return-void
.end method
