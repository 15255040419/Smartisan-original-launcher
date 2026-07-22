.class Landroid/support/v4/media/MediaSession2Stub$7;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2Stub;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2Stub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$7;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub$7;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->pause()V

    return-void
.end method
