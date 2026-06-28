.class Landroid/support/v4/media/MediaSessionService2ImplBase;
.super Ljava/lang/Object;
.source "MediaSessionService2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MSS2ImplBase"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mSession:Landroid/support/v4/media/MediaSession2;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSession()Landroid/support/v4/media/MediaSession2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

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

.method public getSessionType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.MediaSessionService2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2;->getSessionBinder()Landroid/os/IBinder;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_0
    const-string p0, "MSS2ImplBase"

    const-string v0, "Session hasn\'t created"

    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/support/v4/media/MediaSessionService2;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/media/SessionToken2;

    new-instance v1, Landroid/content/ComponentName;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/SessionToken2;->getType()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSessionService2ImplBase;->getSessionType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/media/SessionToken2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/media/MediaSessionService2;->onCreateSession(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2;

    move-result-object p1

    .line 5
    iget-object v1, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    .line 7
    iget-object p1, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/SessionToken2;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaSession2;->getToken()Landroid/support/v4/media/SessionToken2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/SessionToken2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    .line 8
    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2;->getToken()Landroid/support/v4/media/SessionToken2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/SessionToken2;->getType()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSessionService2ImplBase;->getSessionType()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 9
    monitor-exit v1

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    .line 11
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected session with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/v4/media/SessionToken2;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Landroid/support/v4/media/SessionToken2;->getType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but got "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mSession:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected session type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSessionService2ImplBase;->getSessionType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but was "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Landroid/support/v4/media/SessionToken2;->getType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onUpdateNotification()Landroid/support/v4/media/MediaSessionService2$MediaNotification;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
