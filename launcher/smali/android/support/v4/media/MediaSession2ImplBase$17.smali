.class Landroid/support/v4/media/MediaSession2ImplBase$17;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$metadata:Landroid/support/v4/media/MediaMetadata2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$17;->this$0:Landroid/support/v4/media/MediaSession2ImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$17;->val$list:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase$17;->val$metadata:Landroid/support/v4/media/MediaMetadata2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$17;->val$list:Ljava/util/List;

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$17;->val$metadata:Landroid/support/v4/media/MediaMetadata2;

    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onPlaylistChanged(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method
