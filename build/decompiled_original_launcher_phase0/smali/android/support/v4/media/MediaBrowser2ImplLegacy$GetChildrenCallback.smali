.class Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.source "MediaBrowser2ImplLegacy.java"


# instance fields
.field private final mPage:I

.field private final mPageSize:I

.field private final mParentId:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    .line 2
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 3
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->mParentId:Ljava/lang/String;

    .line 4
    iput p3, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->mPage:I

    .line 5
    iput p4, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->mPageSize:I

    return-void
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->mPage:I

    return p0
.end method

.method static synthetic access$500(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->mPageSize:I

    return p0
.end method

.method static synthetic access$600(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->mParentId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {v2}, Landroid/support/v4/media/MediaUtils2;->convertToMediaItem2(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroid/support/v4/media/MediaItem2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 5
    :goto_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-static {v0, p3}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->access$300(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 6
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback$1;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
