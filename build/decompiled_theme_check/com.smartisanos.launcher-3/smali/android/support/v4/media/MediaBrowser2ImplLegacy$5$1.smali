.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;->val$items:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;->val$items:Ljava/util/List;

    .line 2
    invoke-static {v0}, Landroid/support/v4/media/MediaUtils2;->convertMediaItemListToMediaItem2List(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 3
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getInstance()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;->val$query:Ljava/lang/String;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5$1;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;

    iget v4, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->val$page:I

    iget v5, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->val$pageSize:I

    iget-object v7, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;->val$extras:Landroid/os/Bundle;

    .line 5
    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;->onGetSearchResultDone(Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
