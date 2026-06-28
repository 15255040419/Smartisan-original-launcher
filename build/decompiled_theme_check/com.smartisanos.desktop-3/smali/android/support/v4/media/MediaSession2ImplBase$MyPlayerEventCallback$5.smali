.class Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;

.field final synthetic val$mpb:Landroid/support/v4/media/BaseMediaPlayer;

.field final synthetic val$session:Landroid/support/v4/media/MediaSession2ImplBase;

.field final synthetic val$speed:F


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/BaseMediaPlayer;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->this$0:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    iput-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$mpb:Landroid/support/v4/media/BaseMediaPlayer;

    iput p4, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$speed:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2ImplBase;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$mpb:Landroid/support/v4/media/BaseMediaPlayer;

    iget v3, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$speed:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onPlaybackSpeedChanged(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/BaseMediaPlayer;F)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    new-instance v1, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5$1;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5$1;-><init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method
