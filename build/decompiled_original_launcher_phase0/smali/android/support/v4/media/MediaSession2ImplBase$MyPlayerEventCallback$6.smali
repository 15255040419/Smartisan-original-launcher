.class Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;

.field final synthetic val$mpb:Landroid/support/v4/media/BaseMediaPlayer;

.field final synthetic val$position:J

.field final synthetic val$session:Landroid/support/v4/media/MediaSession2ImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/BaseMediaPlayer;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;->this$0:Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    iput-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$mpb:Landroid/support/v4/media/BaseMediaPlayer;

    iput-wide p4, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2ImplBase;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$mpb:Landroid/support/v4/media/BaseMediaPlayer;

    iget-wide v3, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$position:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onSeekCompleted(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/BaseMediaPlayer;J)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$session:Landroid/support/v4/media/MediaSession2ImplBase;

    new-instance v1, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6$1;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6$1;-><init>(Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback$6;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method
