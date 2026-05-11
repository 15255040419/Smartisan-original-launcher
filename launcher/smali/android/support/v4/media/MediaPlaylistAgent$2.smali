.class Landroid/support/v4/media/MediaPlaylistAgent$2;
.super Ljava/lang/Object;
.source "MediaPlaylistAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlaylistAgent;

.field final synthetic val$callback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlaylistAgent$2;->this$0:Landroid/support/v4/media/MediaPlaylistAgent;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlaylistAgent$2;->val$callback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlaylistAgent$2;->val$callback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlaylistAgent$2;->this$0:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;->onPlaylistMetadataChanged(Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method
