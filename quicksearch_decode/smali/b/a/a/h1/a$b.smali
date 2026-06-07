.class public Lb/a/a/h1/a$b;
.super Ljava/lang/Object;
.source "MusicServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/h1/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/h1/a;


# direct methods
.method public constructor <init>(Lb/a/a/h1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v0}, Lb/a/a/h1/a;->a(Lb/a/a/h1/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->c(Lb/a/a/h1/a;)Lb/a/a/h1/b;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v2}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v2

    invoke-interface {v2}, Lcom/smartisanos/music/ISmartisanosMusicService;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Lb/a/a/h1/b;->a(Z)V

    .line 4
    iget-object v1, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->c(Lb/a/a/h1/a;)Lb/a/a/h1/b;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v2}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v2

    invoke-interface {v2}, Lcom/smartisanos/music/ISmartisanosMusicService;->getAudioId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lb/a/a/h1/b;->c(J)V

    .line 5
    iget-object v1, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->c(Lb/a/a/h1/a;)Lb/a/a/h1/b;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v2}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v2

    invoke-interface {v2}, Lcom/smartisanos/music/ISmartisanosMusicService;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lb/a/a/h1/b;->a(J)V

    .line 6
    iget-object v1, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->c(Lb/a/a/h1/a;)Lb/a/a/h1/b;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v2}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v2

    invoke-interface {v2}, Lcom/smartisanos/music/ISmartisanosMusicService;->getArtistId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lb/a/a/h1/b;->b(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMusicState, mMusicState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->c(Lb/a/a/h1/a;)Lb/a/a/h1/b;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "null"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->c(Lb/a/a/h1/a;)Lb/a/a/h1/b;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lb/a/a/h1/a$b;->a:Lb/a/a/h1/a;

    invoke-static {v0}, Lb/a/a/h1/a;->e(Lb/a/a/h1/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lb/a/a/h1/a$b$a;

    invoke-direct {v1, p0}, Lb/a/a/h1/a$b$a;-><init>(Lb/a/a/h1/a$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
