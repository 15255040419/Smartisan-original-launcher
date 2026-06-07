.class public Lb/a/a/h1/a$a;
.super Ljava/lang/Object;
.source "MusicServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/h1/a;->a([JIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[J

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lb/a/a/h1/a;


# direct methods
.method public constructor <init>(Lb/a/a/h1/a;I[JII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/h1/a$a;->e:Lb/a/a/h1/a;

    iput p2, p0, Lb/a/a/h1/a$a;->a:I

    iput-object p3, p0, Lb/a/a/h1/a$a;->b:[J

    iput p4, p0, Lb/a/a/h1/a$a;->c:I

    iput p5, p0, Lb/a/a/h1/a$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/h1/a$a;->e:Lb/a/a/h1/a;

    invoke-static {v0}, Lb/a/a/h1/a;->a(Lb/a/a/h1/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lb/a/a/h1/a$a;->e:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lb/a/a/h1/a$a;->e:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v1

    invoke-interface {v1}, Lcom/smartisanos/music/ISmartisanosMusicService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lb/a/a/h1/a$a;->e:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v1

    invoke-interface {v1}, Lcom/smartisanos/music/ISmartisanosMusicService;->pause()V

    .line 5
    :cond_0
    iget-object v1, p0, Lb/a/a/h1/a$a;->e:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v1

    iget v2, p0, Lb/a/a/h1/a$a;->a:I

    invoke-interface {v1, v2}, Lcom/smartisanos/music/ISmartisanosMusicService;->setPlayingMode(I)V

    .line 6
    iget v1, p0, Lb/a/a/h1/a$a;->a:I

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lb/a/a/h1/a$a;->e:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/smartisanos/music/ISmartisanosMusicService;->setShuffleMode(I)V

    .line 8
    :cond_1
    iget-object v1, p0, Lb/a/a/h1/a$a;->e:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/h1/a$a;->b:[J

    iget v3, p0, Lb/a/a/h1/a$a;->c:I

    invoke-interface {v1, v2, v3}, Lcom/smartisanos/music/ISmartisanosMusicService;->open([JI)V

    .line 9
    iget-object v1, p0, Lb/a/a/h1/a$a;->e:Lb/a/a/h1/a;

    invoke-static {v1}, Lb/a/a/h1/a;->b(Lb/a/a/h1/a;)Lcom/smartisanos/music/ISmartisanosMusicService;

    move-result-object v1

    invoke-interface {v1}, Lcom/smartisanos/music/ISmartisanosMusicService;->play()V

    .line 10
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x2

    .line 11
    :try_start_2
    iget v1, p0, Lb/a/a/h1/a$a;->d:I

    invoke-static {v0, v1}, Lb/a/a/n1/d$l;->a(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "playNewMusic"

    .line 13
    invoke-static {v1, v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
