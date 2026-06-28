.class Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;
.super Ljava/lang/Object;
.source "SessionPlaylistAgentImplBase.java"


# instance fields
.field public dsd:Landroid/support/v4/media/DataSourceDesc;

.field public mediaItem:Landroid/support/v4/media/MediaItem2;

.field public shuffledIdx:I

.field final synthetic this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/SessionPlaylistAgentImplBase;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;-><init>(Landroid/support/v4/media/SessionPlaylistAgentImplBase;ILandroid/support/v4/media/DataSourceDesc;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/media/SessionPlaylistAgentImplBase;ILandroid/support/v4/media/DataSourceDesc;)V
    .locals 1

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    if-ltz p2, :cond_1

    .line 4
    invoke-static {p1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$500(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/MediaItem2;

    iput-object p2, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroid/support/v4/media/MediaItem2;

    if-nez p3, :cond_0

    .line 5
    invoke-static {p1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$000(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 6
    :try_start_0
    iget-object p3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroid/support/v4/media/MediaItem2;

    invoke-static {p1, p3}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$600(Landroid/support/v4/media/SessionPlaylistAgentImplBase;Landroid/support/v4/media/MediaItem2;)Landroid/support/v4/media/DataSourceDesc;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroid/support/v4/media/DataSourceDesc;

    .line 7
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_0
    iput-object p3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroid/support/v4/media/DataSourceDesc;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method isValid()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-static {v0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$700(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroid/support/v4/media/MediaItem2;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroid/support/v4/media/DataSourceDesc;

    if-nez v3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/media/MediaItem2;->getDataSourceDesc()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroid/support/v4/media/MediaItem2;

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/media/MediaItem2;->getDataSourceDesc()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroid/support/v4/media/DataSourceDesc;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-static {v0}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$000(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7
    :try_start_0
    iget v3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    iget-object v4, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-static {v4}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$500(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 8
    monitor-exit v0

    return v2

    .line 9
    :cond_4
    iget-object v3, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroid/support/v4/media/MediaItem2;

    iget-object v4, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->this$0:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-static {v4}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->access$500(Landroid/support/v4/media/SessionPlaylistAgentImplBase;)Ljava/util/ArrayList;

    move-result-object v4

    iget p0, p0, Landroid/support/v4/media/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eq v3, p0, :cond_5

    .line 10
    monitor-exit v0

    return v2

    .line 11
    :cond_5
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
