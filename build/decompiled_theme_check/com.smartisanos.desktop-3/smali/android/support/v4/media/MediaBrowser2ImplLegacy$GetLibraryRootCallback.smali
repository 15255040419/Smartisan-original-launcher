.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaBrowser2ImplLegacy.java"


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    .line 2
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    .line 3
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->close()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->close()V

    return-void
.end method
