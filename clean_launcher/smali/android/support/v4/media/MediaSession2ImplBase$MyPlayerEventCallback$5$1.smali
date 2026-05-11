.class Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5$1;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5$1;->this$1:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5$1;->this$1:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;

    iget-object v0, v0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCurrentPosition()J

    move-result-wide v3

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5$1;->this$1:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;

    iget v5, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$speed:F

    move-object v0, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onPlaybackSpeedChanged(JJF)V

    return-void
.end method
