.class Landroid/support/v4/media/MediaPlayer2Impl$28;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->onPrepared(Landroid/media/MediaPlayer;)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$200(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$28$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaPlayer2Impl$28$1;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$28;)V

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$300(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;)V

    .line 3
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$28$2;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaPlayer2Impl$28$2;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$28;)V

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$700(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$PlayerEventNotifier;)V

    .line 4
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$800(Landroid/support/v4/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$900(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    .line 6
    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$900(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->access$1000(Landroid/support/v4/media/MediaPlayer2Impl$Task;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    .line 7
    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$900(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->access$1100(Landroid/support/v4/media/MediaPlayer2Impl$Task;)Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    .line 8
    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$900(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->access$1200(Landroid/support/v4/media/MediaPlayer2Impl$Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$900(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->access$1300(Landroid/support/v4/media/MediaPlayer2Impl$Task;I)V

    .line 10
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$902(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Task;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    .line 11
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$28;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$1400(Landroid/support/v4/media/MediaPlayer2Impl;)V

    .line 12
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
