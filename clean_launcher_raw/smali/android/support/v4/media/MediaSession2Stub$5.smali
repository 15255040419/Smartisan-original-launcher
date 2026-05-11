.class Landroid/support/v4/media/MediaSession2Stub$5;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2Stub;

.field final synthetic val$direction:I

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2Stub;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$5;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iput p2, p0, Landroid/support/v4/media/MediaSession2Stub$5;->val$direction:I

    iput p3, p0, Landroid/support/v4/media/MediaSession2Stub$5;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$5;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object p1, p1, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getVolumeProvider()Landroid/support/v4/media/VolumeProviderCompat;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$5;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object p1, p1, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    iget v0, p0, Landroid/support/v4/media/MediaSession2Stub$5;->val$direction:I

    iget p0, p0, Landroid/support/v4/media/MediaSession2Stub$5;->val$flags:I

    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat;->adjustVolume(II)V

    goto :goto_0

    .line 4
    :cond_0
    iget p0, p0, Landroid/support/v4/media/MediaSession2Stub$5;->val$direction:I

    invoke-virtual {p1, p0}, Landroid/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V

    :cond_1
    :goto_0
    return-void
.end method
