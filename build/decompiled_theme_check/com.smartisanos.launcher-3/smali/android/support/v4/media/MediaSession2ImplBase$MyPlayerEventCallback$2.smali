.class Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;

.field final synthetic val$dsd:Landroid/support/v4/media/DataSourceDesc;

.field final synthetic val$mpb:Landroid/support/v4/media/BaseMediaPlayer;

.field final synthetic val$session:Landroid/support/v4/media/MediaSession2ImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/BaseMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->this$0:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    iput-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$dsd:Landroid/support/v4/media/DataSourceDesc;

    iput-object p4, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$mpb:Landroid/support/v4/media/BaseMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->this$0:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$dsd:Landroid/support/v4/media/DataSourceDesc;

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;->access$300(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/MediaItem2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2ImplBase;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaItem2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2ImplBase;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaItem2;->getMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v3

    const-string v4, "android.media.metadata.DURATION"

    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaMetadata2;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 6
    new-instance v5, Landroid/support/v4/media/MediaMetadata2$Builder;

    invoke-direct {v5, v3}, Landroid/support/v4/media/MediaMetadata2$Builder;-><init>(Landroid/support/v4/media/MediaMetadata2;)V

    invoke-virtual {v5, v4, v1, v2}, Landroid/support/v4/media/MediaMetadata2$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadata2$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadata2$Builder;->build()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaMetadata2;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "duration mismatch for an item. duration from player="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " duration from metadata="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ". May be a timing issue?"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MS2ImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 10
    :cond_4
    new-instance v3, Landroid/support/v4/media/MediaMetadata2$Builder;

    invoke-direct {v3}, Landroid/support/v4/media/MediaMetadata2$Builder;-><init>()V

    .line 11
    invoke-virtual {v3, v4, v1, v2}, Landroid/support/v4/media/MediaMetadata2$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadata2$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Landroid/support/v4/media/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.metadata.MEDIA_ID"

    .line 13
    invoke-virtual {v1, v3, v2}, Landroid/support/v4/media/MediaMetadata2$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadata2$Builder;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadata2$Builder;->build()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaItem2;->setMetadata(Landroid/support/v4/media/MediaMetadata2;)V

    .line 16
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2$1;

    invoke-direct {v2, p0}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2$1;-><init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 17
    :cond_5
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaSession2ImplBase;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v2

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$mpb:Landroid/support/v4/media/BaseMediaPlayer;

    invoke-virtual {v1, v2, p0, v0}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onMediaPrepared(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaItem2;)V

    return-void
.end method
