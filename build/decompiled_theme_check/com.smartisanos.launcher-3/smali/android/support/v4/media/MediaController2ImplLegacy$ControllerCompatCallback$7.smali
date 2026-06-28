.class Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$7;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

.field final synthetic val$playlist:Ljava/util/List;

.field final synthetic val$playlistMetadata:Landroid/support/v4/media/MediaMetadata2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$7;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    iput-object p2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$7;->val$playlist:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$7;->val$playlistMetadata:Landroid/support/v4/media/MediaMetadata2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$7;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$100(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$7;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v1, v1, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$000(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaController2;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$7;->val$playlist:Ljava/util/List;

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$7;->val$playlistMetadata:Landroid/support/v4/media/MediaMetadata2;

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/media/MediaController2$ControllerCallback;->onPlaylistChanged(Landroid/support/v4/media/MediaController2;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method
