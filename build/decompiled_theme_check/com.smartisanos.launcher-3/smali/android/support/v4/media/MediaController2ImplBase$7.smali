.class Landroid/support/v4/media/MediaController2ImplBase$7;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplBase;

.field final synthetic val$metadata:Landroid/support/v4/media/MediaMetadata2;

.field final synthetic val$playlist:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplBase;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase$7;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaController2ImplBase$7;->val$playlist:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v4/media/MediaController2ImplBase$7;->val$metadata:Landroid/support/v4/media/MediaMetadata2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase$7;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplBase;->access$000(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase$7;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplBase;->access$200(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplBase$7;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v1}, Landroid/support/v4/media/MediaController2ImplBase;->access$000(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplBase$7;->val$playlist:Ljava/util/List;

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplBase$7;->val$metadata:Landroid/support/v4/media/MediaMetadata2;

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/media/MediaController2$ControllerCallback;->onPlaylistChanged(Landroid/support/v4/media/MediaController2;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method
