.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    iget-object v0, v0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->access$000(Landroid/support/v4/media/MediaBrowser2ImplLegacy;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->access$200(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getInstance()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v2

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    .line 5
    invoke-static {p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->access$200(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->getRoot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v2, p0, v3, v1}, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;->onGetLibraryRootDone(Landroid/support/v4/media/MediaBrowser2;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
