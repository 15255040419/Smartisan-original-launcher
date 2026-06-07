.class public final Lf/r$b;
.super Lf/z/b;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Lokhttp3/Callback;

.field public final synthetic c:Lf/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lf/r;

    return-void
.end method

.method public constructor <init>(Lf/r;Lokhttp3/Callback;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf/r$b;->c:Lf/r;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lf/r;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lf/z/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lf/r$b;->b:Lokhttp3/Callback;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 7
    iget-object v0, p0, Lf/r$b;->c:Lf/r;

    iget-object v0, v0, Lf/r;->c:Lg/a;

    invoke-virtual {v0}, Lg/a;->g()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8
    :try_start_0
    iget-object v2, p0, Lf/r$b;->c:Lf/r;

    invoke-virtual {v2}, Lf/r;->b()Lf/u;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lf/r$b;->c:Lf/r;

    iget-object v3, v3, Lf/r;->b:Lf/z/g/i;

    invoke-virtual {v3}, Lf/z/g/i;->b()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 10
    :try_start_1
    iget-object v1, p0, Lf/r$b;->b:Lokhttp3/Callback;

    iget-object v2, p0, Lf/r$b;->c:Lf/r;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lf/r$b;->b:Lokhttp3/Callback;

    iget-object v3, p0, Lf/r$b;->c:Lf/r;

    invoke-interface {v1, v3, v2}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lf/u;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_0
    iget-object v0, p0, Lf/r$b;->c:Lf/r;

    iget-object v0, v0, Lf/r;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->h()Lf/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/i;->b(Lf/r$b;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 13
    :goto_1
    :try_start_2
    iget-object v2, p0, Lf/r$b;->c:Lf/r;

    invoke-virtual {v2, v1}, Lf/r;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Lf/z/j/f;->c()Lf/z/j/f;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf/r$b;->c:Lf/r;

    invoke-virtual {v4}, Lf/r;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lf/z/j/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lf/r$b;->c:Lf/r;

    invoke-static {v0}, Lf/r;->a(Lf/r;)Lokhttp3/EventListener;

    move-result-object v0

    iget-object v2, p0, Lf/r$b;->c:Lf/r;

    invoke-virtual {v0, v2, v1}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 16
    iget-object v0, p0, Lf/r$b;->b:Lokhttp3/Callback;

    iget-object v2, p0, Lf/r$b;->c:Lf/r;

    invoke-interface {v0, v2, v1}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 17
    :goto_3
    iget-object v1, p0, Lf/r$b;->c:Lf/r;

    iget-object v1, v1, Lf/r;->a:Lf/p;

    invoke-virtual {v1}, Lf/p;->h()Lf/i;

    move-result-object v1

    invoke-virtual {v1, p0}, Lf/i;->b(Lf/r$b;)V

    throw v0
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    iget-object p1, p0, Lf/r$b;->c:Lf/r;

    invoke-static {p1}, Lf/r;->a(Lf/r;)Lokhttp3/EventListener;

    move-result-object p1

    iget-object v1, p0, Lf/r$b;->c:Lf/r;

    invoke-virtual {p1, v1, v0}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 5
    iget-object p1, p0, Lf/r$b;->b:Lokhttp3/Callback;

    iget-object v1, p0, Lf/r$b;->c:Lf/r;

    invoke-interface {p1, v1, v0}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object p1, p0, Lf/r$b;->c:Lf/r;

    iget-object p1, p1, Lf/r;->a:Lf/p;

    invoke-virtual {p1}, Lf/p;->h()Lf/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lf/i;->b(Lf/r$b;)V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lf/r$b;->c:Lf/r;

    iget-object v0, v0, Lf/r;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->h()Lf/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/i;->b(Lf/r$b;)V

    throw p1
.end method

.method public b()Lf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r$b;->c:Lf/r;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r$b;->c:Lf/r;

    iget-object v0, v0, Lf/r;->e:Lf/s;

    invoke-virtual {v0}, Lf/s;->g()Lf/m;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
