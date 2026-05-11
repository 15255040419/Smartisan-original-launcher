.class final Landroid/support/v4/media/SessionToken2$1;
.super Ljava/lang/Object;
.source "SessionToken2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;

.field final synthetic val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/SessionToken2$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/media/SessionToken2$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p3, p0, Landroid/support/v4/media/SessionToken2$1;->val$listener:Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroid/support/v4/media/SessionToken2$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/SessionToken2$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 2
    new-instance v1, Landroid/support/v4/media/SessionToken2$1$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/media/SessionToken2$1$1;-><init>(Landroid/support/v4/media/SessionToken2$1;Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->isSessionReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Landroid/support/v4/media/SessionToken2$1;->val$listener:Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;

    iget-object v2, p0, Landroid/support/v4/media/SessionToken2$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getSessionToken2()Landroid/support/v4/media/SessionToken2;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;->onSessionToken2Created(Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/support/v4/media/SessionToken2;)V

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/SessionToken2$1;->val$listener:Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/SessionToken2$1;->val$listener:Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 8
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->isSessionReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Landroid/support/v4/media/SessionToken2;

    new-instance v2, Landroid/support/v4/media/SessionToken2ImplLegacy;

    iget-object v3, p0, Landroid/support/v4/media/SessionToken2$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v2, v3}, Landroid/support/v4/media/SessionToken2ImplLegacy;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-direct {v0, v2}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    .line 10
    iget-object v2, p0, Landroid/support/v4/media/SessionToken2$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSessionToken2(Landroid/support/v4/media/SessionToken2;)V

    .line 11
    iget-object v2, p0, Landroid/support/v4/media/SessionToken2$1;->val$listener:Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;

    iget-object p0, p0, Landroid/support/v4/media/SessionToken2$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-interface {v2, p0, v0}, Landroid/support/v4/media/SessionToken2$OnSessionToken2CreatedListener;->onSessionToken2Created(Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/support/v4/media/SessionToken2;)V

    .line 12
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "SessionToken2"

    const-string v1, "Failed to create session token2."

    .line 13
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "SessionToken2"

    const-string v1, "Failed to create session token2."

    .line 14
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
