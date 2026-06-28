.class Landroid/support/v4/media/MediaPlayer2Impl$33;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$33;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$33;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$33;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->onError(Landroid/media/MediaPlayer;)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$33;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$800(Landroid/support/v4/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$33;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$900(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$33;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    .line 4
    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$900(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->access$1200(Landroid/support/v4/media/MediaPlayer2Impl$Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$33;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$900(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->access$1300(Landroid/support/v4/media/MediaPlayer2Impl$Task;I)V

    .line 6
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$33;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$902(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Task;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    .line 7
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$33;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$1400(Landroid/support/v4/media/MediaPlayer2Impl;)V

    .line 8
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$33;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$33$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/v4/media/MediaPlayer2Impl$33$1;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$33;II)V

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$300(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
