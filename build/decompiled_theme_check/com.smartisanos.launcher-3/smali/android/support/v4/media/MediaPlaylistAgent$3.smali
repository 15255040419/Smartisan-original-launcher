.class Landroid/support/v4/media/MediaPlaylistAgent$3;
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
    iput-object p1, p0, Landroid/support/v4/media/MediaPlaylistAgent$3;->this$0:Landroid/support/v4/media/MediaPlaylistAgent;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlaylistAgent$3;->val$callback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlaylistAgent$3;->val$callback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlaylistAgent$3;->this$0:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaPlaylistAgent;->getShuffleMode()I

    move-result v1

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;->onShuffleModeChanged(Landroid/support/v4/media/MediaPlaylistAgent;I)V

    return-void
.end method
