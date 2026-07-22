.class abstract Landroid/support/v4/media/MediaPlayer2Impl$Task;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mDSD:Landroid/support/v4/media/DataSourceDesc;

.field private final mMediaCallType:I

.field private final mNeedToWaitForEventToComplete:Z

.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mMediaCallType:I

    .line 3
    iput-boolean p3, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v4/media/MediaPlayer2Impl$Task;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mMediaCallType:I

    return p0
.end method

.method static synthetic access$1100(Landroid/support/v4/media/MediaPlayer2Impl$Task;)Landroid/support/v4/media/DataSourceDesc;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mDSD:Landroid/support/v4/media/DataSourceDesc;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/support/v4/media/MediaPlayer2Impl$Task;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    return p0
.end method

.method static synthetic access$1300(Landroid/support/v4/media/MediaPlayer2Impl$Task;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    return-void
.end method

.method private sendCompleteNotification(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    new-instance v1, Landroid/support/v4/media/MediaPlayer2Impl$Task$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$Task$1;-><init>(Landroid/support/v4/media/MediaPlayer2Impl$Task;I)V

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$300(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;)V

    return-void
.end method


# virtual methods
.method abstract process()V
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->process()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    const/high16 v0, -0x80000000

    goto :goto_0

    :catch_1
    const/4 v0, 0x4

    goto :goto_0

    :catch_2
    const/4 v0, 0x3

    goto :goto_0

    :catch_3
    const/4 v0, 0x2

    goto :goto_0

    :catch_4
    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlayer2Impl;->getCurrentDataSource()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mDSD:Landroid/support/v4/media/DataSourceDesc;

    .line 3
    iget-boolean v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$800(Landroid/support/v4/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/media/MediaPlayer2Impl;->access$902(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$Task;)Landroid/support/v4/media/MediaPlayer2Impl$Task;

    .line 7
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$Task;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$1400(Landroid/support/v4/media/MediaPlayer2Impl;)V

    .line 8
    monitor-exit v0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
