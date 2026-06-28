.class Landroid/support/v4/media/MediaController2Stub$2;
.super Ljava/lang/Object;
.source "MediaController2Stub.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2Stub;

.field final synthetic val$browser:Landroid/support/v4/media/MediaBrowser2;

.field final synthetic val$itemBundle:Landroid/os/Bundle;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2Stub$2;->this$0:Landroid/support/v4/media/MediaController2Stub;

    iput-object p2, p0, Landroid/support/v4/media/MediaController2Stub$2;->val$browser:Landroid/support/v4/media/MediaBrowser2;

    iput-object p3, p0, Landroid/support/v4/media/MediaController2Stub$2;->val$mediaId:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaController2Stub$2;->val$itemBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2Stub$2;->val$browser:Landroid/support/v4/media/MediaBrowser2;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowser2;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaController2Stub$2;->val$browser:Landroid/support/v4/media/MediaBrowser2;

    iget-object v2, p0, Landroid/support/v4/media/MediaController2Stub$2;->val$mediaId:Ljava/lang/String;

    iget-object p0, p0, Landroid/support/v4/media/MediaController2Stub$2;->val$itemBundle:Landroid/os/Bundle;

    .line 2
    invoke-static {p0}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object p0

    .line 3
    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;->onGetItemDone(Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;Landroid/support/v4/media/MediaItem2;)V

    return-void
.end method
