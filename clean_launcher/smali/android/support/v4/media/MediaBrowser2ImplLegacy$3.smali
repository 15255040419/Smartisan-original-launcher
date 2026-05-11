.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;
.super Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.source "MediaBrowser2ImplLegacy.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$2;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$2;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$1;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
