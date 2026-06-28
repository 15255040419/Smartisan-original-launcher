.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

.field final synthetic val$browser:Landroid/support/v4/media/MediaBrowserCompat;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;->val$extras:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;->val$browser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getInstance()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;->val$extras:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;->val$browser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 2
    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat;->getRoot()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;->val$browser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 3
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;->onGetLibraryRootDone(Landroid/support/v4/media/MediaBrowser2;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
