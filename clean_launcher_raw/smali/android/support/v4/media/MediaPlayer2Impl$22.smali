.class Landroid/support/v4/media/MediaPlayer2Impl$22;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnDrmConfigHelper;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$listener:Landroid/support/v4/media/MediaPlayer2$OnDrmConfigHelper;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2$OnDrmConfigHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$22;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$22;->val$listener:Landroid/support/v4/media/MediaPlayer2$OnDrmConfigHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmConfig(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$22;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getSourceForPlayer(Landroid/media/MediaPlayer;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$22;->val$listener:Landroid/support/v4/media/MediaPlayer2$OnDrmConfigHelper;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$22;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/media/MediaPlayer2$OnDrmConfigHelper;->onDrmConfig(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;)V

    return-void
.end method
