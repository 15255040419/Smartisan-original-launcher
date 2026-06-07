.class public final Lf/r;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/r$b;
    }
.end annotation


# instance fields
.field public final a:Lf/p;

.field public final b:Lf/z/g/i;

.field public final c:Lg/a;

.field public d:Lokhttp3/EventListener;

.field public final e:Lf/s;

.field public final f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lf/p;Lf/s;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/r;->a:Lf/p;

    .line 3
    iput-object p2, p0, Lf/r;->e:Lf/s;

    .line 4
    iput-boolean p3, p0, Lf/r;->f:Z

    .line 5
    new-instance p2, Lf/z/g/i;

    invoke-direct {p2, p1, p3}, Lf/z/g/i;-><init>(Lf/p;Z)V

    iput-object p2, p0, Lf/r;->b:Lf/z/g/i;

    .line 6
    new-instance p2, Lf/r$a;

    invoke-direct {p2, p0}, Lf/r$a;-><init>(Lf/r;)V

    iput-object p2, p0, Lf/r;->c:Lg/a;

    .line 7
    iget-object p2, p0, Lf/r;->c:Lg/a;

    invoke-virtual {p1}, Lf/p;->b()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lg/q;->a(JLjava/util/concurrent/TimeUnit;)Lg/q;

    return-void
.end method

.method public static a(Lf/p;Lf/s;Z)Lf/r;
    .locals 1

    .line 2
    new-instance v0, Lf/r;

    invoke-direct {v0, p0, p1, p2}, Lf/r;-><init>(Lf/p;Lf/s;Z)V

    .line 3
    invoke-virtual {p0}, Lf/p;->j()Lokhttp3/EventListener$Factory;

    move-result-object p0

    invoke-interface {p0, v0}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p0

    iput-object p0, v0, Lf/r;->d:Lokhttp3/EventListener;

    return-object v0
.end method

.method public static synthetic a(Lf/r;)Lokhttp3/EventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/r;->d:Lokhttp3/EventListener;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 4
    iget-object v0, p0, Lf/r;->c:Lg/a;

    invoke-virtual {v0}, Lg/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public final a()V
    .locals 2

    .line 7
    invoke-static {}, Lf/z/j/f;->c()Lf/z/j/f;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lf/z/j/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lf/r;->b:Lf/z/g/i;

    invoke-virtual {v1, v0}, Lf/z/g/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Lf/u;
    .locals 13

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lf/r;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lf/r;->b:Lf/z/g/i;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lf/z/g/a;

    iget-object v2, p0, Lf/r;->a:Lf/p;

    invoke-virtual {v2}, Lf/p;->g()Lokhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lf/z/g/a;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lf/z/e/a;

    iget-object v2, p0, Lf/r;->a:Lf/p;

    invoke-virtual {v2}, Lf/p;->o()Lokhttp3/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v0, v2}, Lf/z/e/a;-><init>(Lokhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lf/z/f/a;

    iget-object v2, p0, Lf/r;->a:Lf/p;

    invoke-direct {v0, v2}, Lf/z/f/a;-><init>(Lf/p;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean v0, p0, Lf/r;->f:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lf/r;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_0
    new-instance v0, Lf/z/g/b;

    iget-boolean v2, p0, Lf/r;->f:Z

    invoke-direct {v0, v2}, Lf/z/g/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v12, Lf/z/g/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lf/r;->e:Lf/s;

    iget-object v8, p0, Lf/r;->d:Lokhttp3/EventListener;

    iget-object v0, p0, Lf/r;->a:Lf/p;

    .line 11
    invoke-virtual {v0}, Lf/p;->d()I

    move-result v9

    iget-object v0, p0, Lf/r;->a:Lf/p;

    .line 12
    invoke-virtual {v0}, Lf/p;->w()I

    move-result v10

    iget-object v0, p0, Lf/r;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->A()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lf/z/g/f;-><init>(Ljava/util/List;Lf/z/f/g;Lokhttp3/internal/http/HttpCodec;Lf/z/f/c;ILf/s;Lokhttp3/Call;Lokhttp3/EventListener;III)V

    .line 13
    iget-object v0, p0, Lf/r;->e:Lf/s;

    invoke-interface {v12, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lf/s;)Lf/u;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r;->e:Lf/s;

    invoke-virtual {v0}, Lf/s;->g()Lf/m;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r;->b:Lf/z/g/i;

    invoke-virtual {v0}, Lf/z/g/i;->a()V

    return-void
.end method

.method public clone()Lf/r;
    .locals 3

    .line 3
    iget-object v0, p0, Lf/r;->a:Lf/p;

    iget-object v1, p0, Lf/r;->e:Lf/s;

    iget-boolean v2, p0, Lf/r;->f:Z

    invoke-static {v0, v1, v2}, Lf/r;->a(Lf/p;Lf/s;Z)Lf/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/r;->clone()Lf/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lokhttp3/Call;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lf/r;->clone()Lf/r;

    move-result-object v0

    return-object v0
.end method

.method public d()Lf/z/f/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r;->b:Lf/z/g/i;

    invoke-virtual {v0}, Lf/z/g/i;->c()Lf/z/f/g;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf/r;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v1, p0, Lf/r;->f:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lf/r;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lf/r;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/r;->g:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lf/r;->a()V

    .line 6
    iget-object v0, p0, Lf/r;->d:Lokhttp3/EventListener;

    invoke-virtual {v0, p0}, Lokhttp3/EventListener;->b(Lokhttp3/Call;)V

    .line 7
    iget-object v0, p0, Lf/r;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->h()Lf/i;

    move-result-object v0

    new-instance v1, Lf/r$b;

    invoke-direct {v1, p0, p1}, Lf/r$b;-><init>(Lf/r;Lokhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lf/i;->a(Lf/r$b;)V

    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public execute()Lf/u;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lf/r;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/r;->g:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-virtual {p0}, Lf/r;->a()V

    .line 6
    iget-object v0, p0, Lf/r;->c:Lg/a;

    invoke-virtual {v0}, Lg/a;->g()V

    .line 7
    iget-object v0, p0, Lf/r;->d:Lokhttp3/EventListener;

    invoke-virtual {v0, p0}, Lokhttp3/EventListener;->b(Lokhttp3/Call;)V

    .line 8
    :try_start_1
    iget-object v0, p0, Lf/r;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->h()Lf/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/i;->a(Lf/r;)V

    .line 9
    invoke-virtual {p0}, Lf/r;->b()Lf/u;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lf/r;->a:Lf/p;

    invoke-virtual {v1}, Lf/p;->h()Lf/i;

    move-result-object v1

    invoke-virtual {v1, p0}, Lf/i;->b(Lf/r;)V

    return-object v0

    .line 11
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_3
    invoke-virtual {p0, v0}, Lf/r;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lf/r;->d:Lokhttp3/EventListener;

    invoke-virtual {v1, p0, v0}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 14
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :goto_0
    iget-object v1, p0, Lf/r;->a:Lf/p;

    invoke-virtual {v1}, Lf/p;->h()Lf/i;

    move-result-object v1

    invoke-virtual {v1, p0}, Lf/i;->b(Lf/r;)V

    throw v0

    .line 16
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r;->b:Lf/z/g/i;

    invoke-virtual {v0}, Lf/z/g/i;->b()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lf/r;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lf/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r;->e:Lf/s;

    return-object v0
.end method

.method public timeout()Lg/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r;->c:Lg/a;

    return-object v0
.end method
