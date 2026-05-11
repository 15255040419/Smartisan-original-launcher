.class public Landroid/support/v4/media/MediaBrowser2;
.super Landroid/support/v4/media/MediaController2;
.source "MediaBrowser2.java"


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MediaBrowser2"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaBrowser2"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowser2;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaBrowser2$BrowserCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaController2;-><init>(Landroid/content/Context;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)V

    return-void
.end method


# virtual methods
.method createImpl(Landroid/content/Context;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;
    .locals 13

    .line 2
    invoke-virtual {p2}, Landroid/support/v4/media/SessionToken2;->isLegacySession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/support/v4/media/MediaBrowser2ImplLegacy;

    move-object/from16 v6, p4

    check-cast v6, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaBrowser2ImplLegacy;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowser2;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaBrowser2$BrowserCallback;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaBrowser2ImplBase;

    move-object/from16 v12, p4

    check-cast v12, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-object v7, v0

    move-object v8, p1

    move-object v9, p0

    move-object v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v12}, Landroid/support/v4/media/MediaBrowser2ImplBase;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaController2;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaBrowser2$BrowserCallback;)V

    return-object v0
.end method

.method bridge synthetic createImpl(Landroid/content/Context;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)Landroid/support/v4/media/MediaController2$SupportLibraryImpl;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowser2;->createImpl(Landroid/content/Context;Landroid/support/v4/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaController2$ControllerCallback;)Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;

    move-result-object p0

    return-object p0
.end method

.method getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;
    .locals 0

    .line 2
    invoke-super {p0}, Landroid/support/v4/media/MediaController2;->getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    return-object p0
.end method

.method bridge synthetic getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2;->getCallback()Landroid/support/v4/media/MediaBrowser2$BrowserCallback;

    move-result-object p0

    return-object p0
.end method

.method public getChildren(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2;->getImpl()Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;->getChildren(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method getImpl()Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;
    .locals 0

    .line 2
    invoke-super {p0}, Landroid/support/v4/media/MediaController2;->getImpl()Landroid/support/v4/media/MediaController2$SupportLibraryImpl;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;

    return-object p0
.end method

.method bridge synthetic getImpl()Landroid/support/v4/media/MediaController2$SupportLibraryImpl;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2;->getImpl()Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;

    move-result-object p0

    return-object p0
.end method

.method public getItem(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2;->getImpl()Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;->getItem(Ljava/lang/String;)V

    return-void
.end method

.method public getLibraryRoot(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2;->getImpl()Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;->getLibraryRoot(Landroid/os/Bundle;)V

    return-void
.end method

.method public getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2;->getImpl()Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;->getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2;->getImpl()Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;->search(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2;->getImpl()Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;->subscribe(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowser2;->getImpl()Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/support/v4/media/MediaBrowser2$SupportLibraryImpl;->unsubscribe(Ljava/lang/String;)V

    return-void
.end method
