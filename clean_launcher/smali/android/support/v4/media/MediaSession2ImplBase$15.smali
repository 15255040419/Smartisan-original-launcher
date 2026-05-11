.class Landroid/support/v4/media/MediaSession2ImplBase$15;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase;

.field final synthetic val$bufferedPositionMs:J

.field final synthetic val$bufferingState:I

.field final synthetic val$item:Landroid/support/v4/media/MediaItem2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaItem2;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$15;->this$0:Landroid/support/v4/media/MediaSession2ImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$15;->val$item:Landroid/support/v4/media/MediaItem2;

    iput p3, p0, Landroid/support/v4/media/MediaSession2ImplBase$15;->val$bufferingState:I

    iput-wide p4, p0, Landroid/support/v4/media/MediaSession2ImplBase$15;->val$bufferedPositionMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$15;->val$item:Landroid/support/v4/media/MediaItem2;

    iget v1, p0, Landroid/support/v4/media/MediaSession2ImplBase$15;->val$bufferingState:I

    iget-wide v2, p0, Landroid/support/v4/media/MediaSession2ImplBase$15;->val$bufferedPositionMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onBufferingStateChanged(Landroid/support/v4/media/MediaItem2;IJ)V

    return-void
.end method
