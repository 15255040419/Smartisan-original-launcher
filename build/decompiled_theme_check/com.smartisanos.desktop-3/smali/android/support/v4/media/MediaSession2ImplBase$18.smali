.class Landroid/support/v4/media/MediaSession2ImplBase$18;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase;

.field final synthetic val$metadata:Landroid/support/v4/media/MediaMetadata2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$18;->this$0:Landroid/support/v4/media/MediaSession2ImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$18;->val$metadata:Landroid/support/v4/media/MediaMetadata2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$18;->val$metadata:Landroid/support/v4/media/MediaMetadata2;

    invoke-virtual {p1, p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onPlaylistMetadataChanged(Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method
