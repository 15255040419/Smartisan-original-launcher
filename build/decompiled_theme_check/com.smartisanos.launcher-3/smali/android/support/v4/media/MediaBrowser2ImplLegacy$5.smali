.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;
.super Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
.source "MediaBrowser2ImplLegacy.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$page:I

.field final synthetic val$pageSize:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    iput p2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->val$page:I

    iput p3, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->val$pageSize:I

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$2;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;

    invoke-direct {v0, p0, p3, p1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
