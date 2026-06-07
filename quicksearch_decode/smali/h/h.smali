.class public final Lh/h;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/h$b;,
        Lh/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lh/m;

.field public final b:[Ljava/lang/Object;

.field public final c:Lokhttp3/Call$Factory;

.field public final d:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter<",
            "Lf/v;",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public f:Lokhttp3/Call;

.field public g:Ljava/lang/Throwable;

.field public h:Z


# direct methods
.method public constructor <init>(Lh/m;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/m;",
            "[",
            "Ljava/lang/Object;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter<",
            "Lf/v;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh/h;->a:Lh/m;

    .line 3
    iput-object p2, p0, Lh/h;->b:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lh/h;->c:Lokhttp3/Call$Factory;

    .line 5
    iput-object p4, p0, Lh/h;->d:Lretrofit2/Converter;

    return-void
.end method


# virtual methods
.method public a(Lf/u;)Lh/n;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/u;",
            ")",
            "Lh/n<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lf/u;->a()Lf/v;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lf/u;->h()Lf/u$a;

    move-result-object p1

    new-instance v1, Lh/h$c;

    .line 5
    invoke-virtual {v0}, Lf/v;->d()Lf/n;

    move-result-object v2

    invoke-virtual {v0}, Lf/v;->c()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lh/h$c;-><init>(Lf/n;J)V

    invoke-virtual {p1, v1}, Lf/u$a;->a(Lf/v;)Lf/u$a;

    .line 6
    invoke-virtual {p1}, Lf/u$a;->a()Lf/u;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lf/u;->c()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lh/h$b;

    invoke-direct {v1, v0}, Lh/h$b;-><init>(Lf/v;)V

    .line 9
    :try_start_0
    iget-object v0, p0, Lh/h;->d:Lretrofit2/Converter;

    invoke-interface {v0, v1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lh/n;->a(Ljava/lang/Object;Lf/u;)Lh/n;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {v1}, Lh/h$b;->g()V

    .line 12
    throw p1

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lf/v;->close()V

    const/4 v0, 0x0

    .line 14
    invoke-static {v0, p1}, Lh/n;->a(Ljava/lang/Object;Lf/u;)Lh/n;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {v0}, Lh/q;->a(Lf/v;)Lf/v;

    move-result-object v1

    .line 16
    invoke-static {v1, p1}, Lh/n;->a(Lf/v;Lf/u;)Lh/n;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {v0}, Lf/v;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lf/v;->close()V

    throw p1
.end method

.method public final a()Lokhttp3/Call;
    .locals 3

    .line 1
    iget-object v0, p0, Lh/h;->c:Lokhttp3/Call$Factory;

    iget-object v1, p0, Lh/h;->a:Lh/m;

    iget-object v2, p0, Lh/h;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lh/m;->a([Ljava/lang/Object;)Lf/s;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/Call$Factory;->newCall(Lf/s;)Lokhttp3/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lh/h;->e:Z

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lh/h;->f:Lokhttp3/Call;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clone()Lh/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/h<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lh/h;

    iget-object v1, p0, Lh/h;->a:Lh/m;

    iget-object v2, p0, Lh/h;->b:[Ljava/lang/Object;

    iget-object v3, p0, Lh/h;->c:Lokhttp3/Call$Factory;

    iget-object v4, p0, Lh/h;->d:Lretrofit2/Converter;

    invoke-direct {v0, v1, v2, v3, v4}, Lh/h;-><init>(Lh/m;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh/h;->clone()Lh/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lretrofit2/Call;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lh/h;->clone()Lh/h;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lretrofit2/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Lh/q;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lh/h;->h:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lh/h;->h:Z

    .line 5
    iget-object v0, p0, Lh/h;->f:Lokhttp3/Call;

    .line 6
    iget-object v1, p0, Lh/h;->g:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lh/h;->a()Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lh/h;->f:Lokhttp3/Call;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-static {v1}, Lh/q;->a(Ljava/lang/Throwable;)V

    .line 9
    iput-object v1, p0, Lh/h;->g:Ljava/lang/Throwable;

    .line 10
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {p1, p0, v1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_1
    iget-boolean v1, p0, Lh/h;->e:Z

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 14
    :cond_2
    new-instance v1, Lh/h$a;

    invoke-direct {v1, p0, p1}, Lh/h$a;-><init>(Lh/h;Lretrofit2/Callback;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    .line 15
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public execute()Lh/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lh/h;->h:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lh/h;->h:Z

    .line 4
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 8
    :cond_0
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 9
    :cond_1
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 10
    :cond_2
    iget-object v0, p0, Lh/h;->f:Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lh/h;->a()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lh/h;->f:Lokhttp3/Call;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 12
    :goto_0
    :try_start_2
    invoke-static {v0}, Lh/q;->a(Ljava/lang/Throwable;)V

    .line 13
    iput-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    .line 14
    throw v0

    .line 15
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    iget-boolean v1, p0, Lh/h;->e:Z

    if-eqz v1, :cond_4

    .line 17
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 18
    :cond_4
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lf/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/h;->a(Lf/u;)Lh/n;

    move-result-object v0

    return-object v0

    .line 19
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public isCanceled()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lh/h;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lh/h;->f:Lokhttp3/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/h;->f:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lh/h;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized request()Lf/s;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lh/h;->f:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lokhttp3/Call;->request()Lf/s;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create request."

    iget-object v2, p0, Lh/h;->g:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lh/h;->a()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lh/h;->f:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->request()Lf/s;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    :try_start_3
    iput-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 12
    :goto_0
    invoke-static {v0}, Lh/q;->a(Ljava/lang/Throwable;)V

    .line 13
    iput-object v0, p0, Lh/h;->g:Ljava/lang/Throwable;

    .line 14
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
