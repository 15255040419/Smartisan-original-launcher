.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$2;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$2;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$2;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$2;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getInstance()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v1

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3$2;->this$1:Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;->val$mediaId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;->onGetItemDone(Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;Landroid/support/v4/media/MediaItem2;)V

    return-void
.end method
