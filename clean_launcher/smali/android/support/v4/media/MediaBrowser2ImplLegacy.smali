.class Landroid/support/v4/media/MediaBrowser2ImplLegacy;
.super Landroid/support/v4/media/MediaController2ImplLegacy;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;


# static fields
.field public static final EXTRA_ITEM_COUNT:Ljava/lang/String; = "android.media.browse.extra.ITEM_COUNT"


# instance fields
.field private final mBrowserCompats:Ljava/util/HashMap;

.field private final mSubscribeCallbacks:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowser2;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaBrowser2$BrowserCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/media/MediaController2ImplLegacy;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaController2;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/MediaBrowser2ImplLegacy;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getExtrasWithoutPagination(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private getBrowserCompat(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaBrowserCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getExtrasWithoutPagination(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :try_start_0
    const-string p0, "android.media.browse.extra.PAGE"

    .line 2
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.media.browse.extra.PAGE_SIZE"

    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat;

    .line 3
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 5
    invoke-super {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->close()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;
    .locals 0

    .line 2
    invoke-super {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    return-object p0
.end method

.method public bridge synthetic getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object p0

    return-object p0
.end method

.method public getChildren(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    if-lt p3, v0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p4}, Landroid/support/v4/media/MediaUtils2;->createBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    const-string v1, "android.media.browse.extra.PAGE"

    .line 3
    invoke-virtual {p4, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.media.browse.extra.PAGE_SIZE"

    .line 4
    invoke-virtual {p4, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$GetChildrenCallback;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Ljava/lang/String;II)V

    invoke-virtual {v0, p1, p4, v1}, Landroid/support/v4/media/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Neither page nor pageSize should be less than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parentId shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstance()Landroid/support/v4/media/MediaBrowser2;
    .locals 0

    .line 2
    invoke-super {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaBrowser2;

    return-object p0
.end method

.method public bridge synthetic getInstance()Landroid/support/v4/media/MediaController2;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getInstance()Landroid/support/v4/media/MediaBrowser2;

    move-result-object p0

    return-object p0
.end method

.method public getItem(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$3;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat;->getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V

    return-void
.end method

.method public getLibraryRoot(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->getBrowserCompat(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;

    invoke-direct {v2, p0, p1, v0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$2;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p4}, Landroid/support/v4/media/MediaUtils2;->createBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.media.browse.extra.PAGE"

    .line 3
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 4
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    new-instance v2, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;

    invoke-direct {v2, p0, p2, p3, p4}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$5;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;IILandroid/os/Bundle;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;)V

    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$4;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$4;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v4/media/MediaBrowser2ImplLegacy$SubscribeCallback;-><init>(Landroid/support/v4/media/MediaBrowser2ImplLegacy;Landroid/support/v4/media/MediaBrowser2ImplLegacy$1;)V

    .line 3
    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.argument.EXTRAS"

    .line 10
    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {v0, p1, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parentId shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    .line 4
    monitor-exit v1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parentId shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
