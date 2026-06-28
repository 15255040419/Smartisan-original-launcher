.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaController2ImplLegacy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    .line 2
    invoke-virtual {v2}, Landroid/support/v4/media/MediaController2ImplLegacy;->getSessionToken()Landroid/support/v4/media/SessionToken2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/SessionToken2;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;->val$extras:Landroid/os/Bundle;

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetLibraryRootCallback;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/os/Bundle;)V

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;->val$extras:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    iget-object v1, v1, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->access$000(Landroid/support/v4/media/MediaBrowser2ImplLegacy;)Ljava/util/HashMap;

    move-result-object v2

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
