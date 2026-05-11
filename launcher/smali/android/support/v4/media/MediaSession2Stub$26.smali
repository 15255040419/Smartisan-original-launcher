.class Landroid/support/v4/media/MediaSession2Stub$26;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2Stub;

.field final synthetic val$index:I

.field final synthetic val$mediaItem:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2Stub;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$26;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iput p2, p0, Landroid/support/v4/media/MediaSession2Stub$26;->val$index:I

    iput-object p3, p0, Landroid/support/v4/media/MediaSession2Stub$26;->val$mediaItem:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$26;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object p1, p1, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object p1

    iget v0, p0, Landroid/support/v4/media/MediaSession2Stub$26;->val$index:I

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub$26;->val$mediaItem:Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;Ljava/util/UUID;)Landroid/support/v4/media/MediaItem2;

    move-result-object p0

    .line 3
    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/MediaSession2;->replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V

    return-void
.end method
