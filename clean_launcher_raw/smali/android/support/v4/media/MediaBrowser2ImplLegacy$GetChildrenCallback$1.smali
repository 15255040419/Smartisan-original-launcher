.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->val$items:Ljava/util/List;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object v2

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getInstance()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->val$parentId:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->access$400(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;)I

    move-result v5

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->access$500(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;)I

    move-result v6

    iget-object v7, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->val$items:Ljava/util/List;

    iget-object v8, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->val$extras:Landroid/os/Bundle;

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;->onGetChildrenDone(Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->access$600(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/media/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void
.end method
