.class Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$1$1;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$1;

.field final synthetic val$item:Landroid/support/v4/media/MediaItem2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$1;Landroid/support/v4/media/MediaItem2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$1$1;->this$1:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$1;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$1$1;->val$item:Landroid/support/v4/media/MediaItem2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$1$1;->val$item:Landroid/support/v4/media/MediaItem2;

    invoke-virtual {p1, p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onCurrentMediaItemChanged(Landroid/support/v4/media/MediaItem2;)V

    return-void
.end method
