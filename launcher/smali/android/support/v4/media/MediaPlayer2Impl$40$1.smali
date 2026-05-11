.class Landroid/support/v4/media/MediaPlayer2Impl$40$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$DrmEventNotifier;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaPlayer2Impl$40;

.field final synthetic val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl$40;Landroid/media/MediaPlayer$DrmInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$40$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$40;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$40$1;->val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/MediaPlayer2$DrmEventCallback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$40$1;->this$1:Landroid/support/v4/media/MediaPlayer2Impl$40;

    iget-object v1, v0, Landroid/support/v4/media/MediaPlayer2Impl$40;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iget-object v0, v0, Landroid/support/v4/media/MediaPlayer2Impl$40;->val$src:Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v0

    new-instance v2, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;

    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$40$1;->val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;

    .line 2
    invoke-virtual {v3}, Landroid/media/MediaPlayer$DrmInfo;->getPssh()Ljava/util/Map;

    move-result-object v3

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$40$1;->val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-virtual {p0}, Landroid/media/MediaPlayer$DrmInfo;->getSupportedSchemes()[Ljava/util/UUID;

    move-result-object p0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;-><init>(Ljava/util/Map;[Ljava/util/UUID;Landroid/support/v4/media/MediaPlayer2Impl$1;)V

    .line 3
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/media/MediaPlayer2$DrmEventCallback;->onDrmInfo(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/MediaPlayer2$DrmInfo;)V

    return-void
.end method
