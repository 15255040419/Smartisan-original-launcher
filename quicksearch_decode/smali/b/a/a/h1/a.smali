.class public Lb/a/a/h1/a;
.super Ljava/lang/Object;
.source "MusicServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/h1/a$c;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:J

.field public d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/smartisanos/music/ISmartisanosMusicService;

.field public f:Lb/a/a/h1/a$c;

.field public g:Landroid/content/Context;

.field public h:Landroid/os/Handler;

.field public i:Ljava/util/concurrent/ExecutorService;

.field public j:Lb/a/a/h1/b;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/a/h1/a;->b:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lb/a/a/h1/a;->c:J

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/h1/a;->k:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lb/a/a/h1/a;->g:Landroid/content/Context;

    .line 6
    new-instance p1, Lb/a/a/h1/b;

    invoke-direct {p1}, Lb/a/a/h1/b;-><init>()V

    iput-object p1, p0, Lb/a/a/h1/a;->j:Lb/a/a/h1/b;

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lb/a/a/h1/a;->h:Landroid/os/Handler;

    .line 8
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lb/a/a/h1/a;->d:Ljava/util/HashSet;

    .line 9
    new-instance p1, Lb/a/a/h1/a$c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lb/a/a/h1/a$c;-><init>(Lb/a/a/h1/a;Lb/a/a/h1/a$a;)V

    iput-object p1, p0, Lb/a/a/h1/a;->f:Lb/a/a/h1/a$c;

    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/h1/a;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lb/a/a/h1/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/h1/a;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/h1/a;->e:Lcom/smartisanos/music/ISmartisanosMusicService;

    return-object p0
.end method

.method public static synthetic c(Lb/a/a/h1/a;)Lb/a/a/h1/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/h1/a;->j:Lb/a/a/h1/b;

    return-object p0
.end method

.method public static synthetic d(Lb/a/a/h1/a;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/h1/a;->d:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic e(Lb/a/a/h1/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/h1/a;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic f(Lb/a/a/h1/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/h1/a;->d()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/h1/b;
    .locals 1

    .line 10
    iget-object v0, p0, Lb/a/a/h1/a;->j:Lb/a/a/h1/b;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 12
    iget-object v0, p0, Lb/a/a/h1/a;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lb/a/a/h1/a;->e:Lcom/smartisanos/music/ISmartisanosMusicService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 14
    :try_start_1
    iget-object v1, p0, Lb/a/a/h1/a;->e:Lcom/smartisanos/music/ISmartisanosMusicService;

    invoke-interface {v1}, Lcom/smartisanos/music/ISmartisanosMusicService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    iget-object v1, p0, Lb/a/a/h1/a;->e:Lcom/smartisanos/music/ISmartisanosMusicService;

    invoke-interface {v1}, Lcom/smartisanos/music/ISmartisanosMusicService;->pause()V

    const/4 v1, 0x1

    .line 16
    invoke-static {v1, p1}, Lb/a/a/n1/d$l;->a(II)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lb/a/a/h1/a;->e:Lcom/smartisanos/music/ISmartisanosMusicService;

    invoke-interface {v1}, Lcom/smartisanos/music/ISmartisanosMusicService;->play()V

    const/4 v1, 0x2

    .line 18
    invoke-static {v1, p1}, Lb/a/a/n1/d$l;->a(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "continuePlayOrPause"

    .line 19
    invoke-static {v1, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindMusicService, mIsBinded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb/a/a/h1/a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lb/a/a/h1/a;->a:Z

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.smartisanos.music"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 8
    invoke-virtual {p0}, Lb/a/a/h1/a;->b()V

    .line 9
    iput-boolean v1, p0, Lb/a/a/h1/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/h1/a;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a([JIII)V
    .locals 8

    .line 11
    iget-object v0, p0, Lb/a/a/h1/a;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lb/a/a/h1/a$a;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lb/a/a/h1/a$a;-><init>(Lb/a/a/h1/a;I[JII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.smartisanos.music.metachanged"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.smartisanos.music.playstatechanged"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lb/a/a/h1/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lb/a/a/h1/a;->f:Lb/a/a/h1/a$c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unBindMusicService, mIsBinded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb/a/a/h1/a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lb/a/a/h1/a;->a:Z

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6
    invoke-virtual {p0}, Lb/a/a/h1/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_0
    iget-object p1, p0, Lb/a/a/h1/a;->k:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 8
    :try_start_1
    iput-object v0, p0, Lb/a/a/h1/a;->e:Lcom/smartisanos/music/ISmartisanosMusicService;

    .line 9
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/a/a/h1/a;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lb/a/a/h1/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lb/a/a/h1/a;->f:Lb/a/a/h1/a$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lb/a/a/h1/a;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lb/a/a/h1/a$b;

    invoke-direct {v1, p0}, Lb/a/a/h1/a$b;-><init>(Lb/a/a/h1/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/h1/a;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/smartisanos/music/ISmartisanosMusicService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/h1/a;->e:Lcom/smartisanos/music/ISmartisanosMusicService;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", IBinder="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mMusicService="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/a/a/h1/a;->e:Lcom/smartisanos/music/ISmartisanosMusicService;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lb/a/a/h1/a;->d()V

    .line 6
    iget-object p1, p0, Lb/a/a/h1/a;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;

    .line 7
    invoke-interface {p2}, Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;->onMusicServiceConnected()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/h1/a;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/a/h1/a;->e:Lcom/smartisanos/music/ISmartisanosMusicService;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lb/a/a/h1/a;->e:Lcom/smartisanos/music/ISmartisanosMusicService;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lb/a/a/h1/a;->c:J

    sub-long/2addr v0, v2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected ComponentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", repeat connect num="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lb/a/a/h1/a;->b:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", repeatInterval= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    const-wide/32 v2, 0xa4cb80

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lb/a/a/h1/a;->b:I

    .line 8
    :cond_1
    iget p1, p0, Lb/a/a/h1/a;->b:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    .line 9
    iget-object p1, p0, Lb/a/a/h1/a;->g:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lb/a/a/h1/a;->a(Landroid/content/Context;)V

    .line 10
    iget p1, p0, Lb/a/a/h1/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a/a/h1/a;->b:I

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/h1/a;->c:J

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "repeat connect music service need waiting: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
