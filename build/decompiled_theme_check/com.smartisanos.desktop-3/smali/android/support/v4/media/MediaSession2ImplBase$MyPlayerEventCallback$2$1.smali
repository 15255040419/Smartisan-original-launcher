.class Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2$1;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2$1;->this$1:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2$1;->this$1:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;

    iget-object v0, v0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaylist()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2$1;->this$1:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object p0

    .line 3
    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onPlaylistChanged(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method
