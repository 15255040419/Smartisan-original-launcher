.class Landroid/support/v4/media/MediaController2Stub;
.super Landroid/support/v4/media/IMediaController2$Stub;
.source "MediaController2Stub.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaController2Stub"


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/IMediaController2$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getBrowser()Landroid/support/v4/media/MediaBrowser2;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplBase;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/media/MediaBrowser2;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplBase;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaBrowser2;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getController()Landroid/support/v4/media/MediaController2ImplBase;
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaController2ImplBase;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Controller is released"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onAllowedCommandsChanged(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "MediaController2Stub"

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/SessionCommandGroup2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommandGroup2;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "onAllowedCommandsChanged(): Ignoring null commands"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->onAllowedCommandsChanged(Landroid/support/v4/media/SessionCommandGroup2;)V

    return-void

    :catch_0
    const-string p0, "Don\'t fail silently here. Highly likely a bug"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBufferingStateChanged(Landroid/os/Bundle;IJ)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaController2ImplBase;->notifyBufferingStateChanged(Landroid/support/v4/media/MediaItem2;IJ)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 8

    const-string v0, "MediaController2Stub"

    if-nez p1, :cond_0

    const-string p0, "onChildrenChanged(): Ignoring null parentId"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/media/MediaController2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroid/support/v4/media/MediaController2Stub$6;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaController2Stub$6;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    const-string p0, "Don\'t fail silently here. Highly likely a bug"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnected(Landroid/support/v4/media/IMediaSession2;Landroid/os/Bundle;ILandroid/os/Bundle;JJFJLandroid/os/Bundle;IILjava/util/List;Landroid/app/PendingIntent;)V
    .locals 19

    move-object/from16 v0, p15

    move-object/from16 v1, p0

    .line 1
    iget-object v1, v1, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/support/v4/media/MediaController2ImplBase;

    if-nez v2, :cond_0

    const-string v0, "MediaController2Stub"

    const-string v1, "onConnected after MediaController2.close()"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v17, v1

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/support/v4/media/SessionCommandGroup2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommandGroup2;

    move-result-object v4

    .line 8
    invoke-static/range {p4 .. p4}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v6

    .line 9
    invoke-static/range {p12 .. p12}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object v14

    move-object/from16 v3, p1

    move/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-wide/from16 v12, p10

    move/from16 v15, p14

    move/from16 v16, p13

    move-object/from16 v18, p16

    .line 10
    invoke-virtual/range {v2 .. v18}, Landroid/support/v4/media/MediaController2ImplBase;->onConnectedNotLocked(Landroid/support/v4/media/IMediaSession2;Landroid/support/v4/media/SessionCommandGroup2;ILandroid/support/v4/media/MediaItem2;JJFJLandroid/support/v4/media/MediaController2$PlaybackInfo;IILjava/util/List;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public onCurrentMediaItemChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyCurrentMediaItemChanged(Landroid/support/v4/media/MediaItem2;)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCustomCommand(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    const-string v0, "MediaController2Stub"

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/media/SessionCommand2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommand2;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "onCustomCommand(): Ignoring null command"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/media/MediaController2ImplBase;->onCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    :catch_0
    const-string p0, "Don\'t fail silently here. Highly likely a bug"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCustomLayoutChanged(Ljava/util/List;)V
    .locals 3

    const-string v0, "MediaController2Stub"

    if-nez p1, :cond_0

    const-string p0, "onCustomLayoutChanged(): Ignoring null commandButtonlist"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroid/support/v4/media/MediaSession2$CommandButton;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaSession2$CommandButton;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaController2ImplBase;->onCustomLayoutChanged(Ljava/util/List;)V

    return-void

    :catch_0
    const-string p0, "Don\'t fail silently here. Highly likely a bug"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2Stub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaController2ImplBase;

    if-nez p0, :cond_0

    const-string p0, "MediaController2Stub"

    const-string v0, "onDisconnected after MediaController2.close()"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplBase;->getInstance()Landroid/support/v4/media/MediaController2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2;->close()V

    return-void
.end method

.method public onError(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaController2ImplBase;->notifyError(ILandroid/os/Bundle;)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetChildrenDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "MediaController2Stub"

    if-nez p1, :cond_0

    const-string p0, "onGetChildrenDone(): Ignoring null parentId"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/media/MediaController2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v9, Landroid/support/v4/media/MediaController2Stub$3;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/support/v4/media/MediaController2Stub$3;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    const-string p0, "Don\'t fail silently here. Highly likely a bug"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetItemDone(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "MediaController2Stub"

    if-nez p1, :cond_0

    const-string p0, "onGetItemDone(): Ignoring null mediaId"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/MediaController2Stub$2;

    invoke-direct {v2, p0, v0, p1, p2}, Landroid/support/v4/media/MediaController2Stub$2;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    const-string p0, "Don\'t fail silently here. Highly likely a bug"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/media/MediaController2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/support/v4/media/MediaController2Stub$1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaController2Stub$1;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaController2Stub"

    if-eqz v0, :cond_0

    const-string p0, "onGetSearchResultDone(): Ignoring empty query"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v4}, Landroid/support/v4/media/MediaController2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaController2Stub$5;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Landroid/support/v4/media/MediaController2Stub$5;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    const-string p0, "Don\'t fail silently here. Highly likely a bug"

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackInfoChanged(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MediaController2Stub"

    const-string v1, "onPlaybackInfoChanged"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {p1}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "onPlaybackInfoChanged(): Ignoring null playbackInfo"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaybackInfoChanges(Landroid/support/v4/media/MediaController2$PlaybackInfo;)V

    return-void

    :catch_0
    const-string p0, "Don\'t fail silently here. Highly likely a bug"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackSpeedChanged(JJF)V
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaybackSpeedChanges(JJF)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayerStateChanged(JJI)V
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlayerStateChanges(JJI)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaylistChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "MediaController2Stub"

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPlaylistChanged(): Ignoring null playlist from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 5
    invoke-static {v2}, Landroid/support/v4/media/MediaItem2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaItem2;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "onPlaylistChanged(): Ignoring null item in playlist"

    .line 6
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p2}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object p1

    .line 9
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaylistChanges(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void

    :catch_0
    const-string p0, "Don\'t fail silently here. Highly likely a bug"

    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyPlaylistMetadataChanges(Landroid/support/v4/media/MediaMetadata2;)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyRepeatModeChanges(I)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRoutesInfoChanged(Ljava/util/List;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyRoutesInfoChanged(Ljava/util/List;)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaController2Stub"

    if-eqz v0, :cond_0

    const-string p0, "onSearchResultChanged(): Ignoring empty query"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getBrowser()Landroid/support/v4/media/MediaBrowser2;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v4}, Landroid/support/v4/media/MediaController2;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaController2Stub$4;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/MediaController2Stub$4;-><init>(Landroid/support/v4/media/MediaController2Stub;Landroid/support/v4/media/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    const-string p0, "Don\'t fail silently here. Highly likely a bug"

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSeekCompleted(JJJ)V
    .locals 7

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/MediaController2ImplBase;->notifySeekCompleted(JJJ)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaController2Stub;->getController()Landroid/support/v4/media/MediaController2ImplBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->notifyShuffleModeChanges(I)V

    return-void

    :catch_0
    const-string p0, "MediaController2Stub"

    const-string p1, "Don\'t fail silently here. Highly likely a bug"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
