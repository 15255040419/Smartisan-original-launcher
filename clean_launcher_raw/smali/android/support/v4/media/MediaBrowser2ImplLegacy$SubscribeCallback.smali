.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.source "MediaBrowser2ImplLegacy.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;)V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p3, :cond_0

    const-string v0, "android.media.browse.extra.ITEM_COUNT"

    .line 2
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 5
    :goto_0
    iget-object p3, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    .line 6
    invoke-virtual {p3}, Landroid/support/v4/media/MediaController2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/media/MediaBrowserCompat;->getNotifyChildrenChangedOptions()Landroid/os/Bundle;

    move-result-object p3

    .line 7
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback$1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback$1;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
