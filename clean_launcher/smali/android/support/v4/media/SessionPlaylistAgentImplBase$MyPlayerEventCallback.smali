.class Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;
.super Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;
.source "SessionPlaylistAgentImplBase.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-direct {p0}, Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/SessionPlaylistAgentImplBase;Landroid/support/v4/media/SessionPlaylistAgentImplBase$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;-><init>(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)V

    return-void
.end method


# virtual methods
.method public onCurrentDataSourceChanged(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/DataSourceDesc;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-static {v0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$000(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-static {v1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$100(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Landroid/support/v4/media/BaseMediaPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 4
    iget-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-static {p1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$200(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    iget-object p2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    iget-object v1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-static {v1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$200(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object v1

    iget v1, v1, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$300(Landroid/support/v4/media/SessionPlaylistAgentImplBase;II)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$202(Landroid/support/v4/media/SessionPlaylistAgentImplBase;Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    .line 6
    iget-object p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-static {p0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$400(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)V

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
