.class Landroid/support/v4/media/MediaSession2Stub$34;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2Stub;

.field final synthetic val$route:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2Stub;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$34;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2Stub$34;->val$route:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$34;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2Stub$34;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object v1, v1, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v1

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub$34;->val$route:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, p0}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onSelectRoute(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/os/Bundle;)V

    return-void
.end method
