.class Landroid/support/v4/media/MediaSession2Stub$12;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2Stub;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2Stub;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$12;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iput-wide p2, p0, Landroid/support/v4/media/MediaSession2Stub$12;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$12;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object p1, p1, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    iget-wide v0, p0, Landroid/support/v4/media/MediaSession2Stub$12;->val$pos:J

    invoke-interface {p1, v0, v1}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->seekTo(J)V

    return-void
.end method
