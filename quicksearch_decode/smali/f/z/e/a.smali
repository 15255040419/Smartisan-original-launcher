.class public final Lf/z/e/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final a:Lokhttp3/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/InternalCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/z/e/a;->a:Lokhttp3/internal/cache/InternalCache;

    return-void
.end method

.method public static a(Lf/l;Lf/l;)Lf/l;
    .locals 7

    .line 12
    new-instance v0, Lf/l$a;

    invoke-direct {v0}, Lf/l$a;-><init>()V

    .line 13
    invoke-virtual {p0}, Lf/l;->b()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 14
    invoke-virtual {p0, v3}, Lf/l;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p0, v3}, Lf/l;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    .line 16
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    invoke-static {v4}, Lf/z/e/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Lf/z/e/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 18
    invoke-virtual {p1, v4}, Lf/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 19
    :cond_1
    sget-object v6, Lf/z/a;->a:Lf/z/a;

    invoke-virtual {v6, v0, v4, v5}, Lf/z/a;->a(Lf/l$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lf/l;->b()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_5

    .line 21
    invoke-virtual {p1, v2}, Lf/l;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Lf/z/e/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lf/z/e/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 23
    sget-object v3, Lf/z/a;->a:Lf/z/a;

    invoke-virtual {p1, v2}, Lf/l;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lf/z/a;->a(Lf/l$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {v0}, Lf/l$a;->a()Lf/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lf/u;)Lf/u;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lf/u;->a()Lf/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/u;->h()Lf/u$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf/u$a;->a(Lf/v;)Lf/u$a;

    invoke-virtual {p0}, Lf/u$a;->a()Lf/u;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Lokhttp3/internal/cache/CacheRequest;Lf/u;)Lf/u;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-interface {p1}, Lokhttp3/internal/cache/CacheRequest;->body()Lokio/Sink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    .line 4
    :cond_1
    invoke-virtual {p2}, Lf/u;->a()Lf/v;

    move-result-object v1

    invoke-virtual {v1}, Lf/v;->e()Lokio/BufferedSource;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lg/j;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 6
    new-instance v2, Lf/z/e/a$a;

    invoke-direct {v2, p0, v1, p1, v0}, Lf/z/e/a$a;-><init>(Lf/z/e/a;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V

    const-string p1, "Content-Type"

    .line 7
    invoke-virtual {p2, p1}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lf/u;->a()Lf/v;

    move-result-object v0

    invoke-virtual {v0}, Lf/v;->c()J

    move-result-wide v0

    .line 9
    invoke-virtual {p2}, Lf/u;->h()Lf/u$a;

    move-result-object p2

    new-instance v3, Lf/z/g/g;

    .line 10
    invoke-static {v2}, Lg/j;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lf/z/g/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    invoke-virtual {p2, v3}, Lf/u$a;->a(Lf/v;)Lf/u$a;

    .line 11
    invoke-virtual {p2}, Lf/u$a;->a()Lf/u;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lf/u;
    .locals 5

    .line 1
    iget-object v0, p0, Lf/z/e/a;->a:Lokhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lf/s;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/cache/InternalCache;->get(Lf/s;)Lf/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    new-instance v3, Lf/z/e/b$a;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lf/s;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lf/z/e/b$a;-><init>(JLf/s;Lf/u;)V

    invoke-virtual {v3}, Lf/z/e/b$a;->c()Lf/z/e/b;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lf/z/e/b;->a:Lf/s;

    .line 6
    iget-object v3, v1, Lf/z/e/b;->b:Lf/u;

    .line 7
    iget-object v4, p0, Lf/z/e/a;->a:Lokhttp3/internal/cache/InternalCache;

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v4, v1}, Lokhttp3/internal/cache/InternalCache;->trackResponse(Lf/z/e/b;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v0}, Lf/u;->a()Lf/v;

    move-result-object v1

    invoke-static {v1}, Lf/z/c;->a(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 10
    new-instance v0, Lf/u$a;

    invoke-direct {v0}, Lf/u$a;-><init>()V

    .line 11
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lf/s;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/u$a;->a(Lf/s;)Lf/u$a;

    sget-object p1, Lf/q;->c:Lf/q;

    .line 12
    invoke-virtual {v0, p1}, Lf/u$a;->a(Lf/q;)Lf/u$a;

    const/16 p1, 0x1f8

    .line 13
    invoke-virtual {v0, p1}, Lf/u$a;->a(I)Lf/u$a;

    const-string p1, "Unsatisfiable Request (only-if-cached)"

    .line 14
    invoke-virtual {v0, p1}, Lf/u$a;->a(Ljava/lang/String;)Lf/u$a;

    sget-object p1, Lf/z/c;->c:Lf/v;

    .line 15
    invoke-virtual {v0, p1}, Lf/u$a;->a(Lf/v;)Lf/u$a;

    const-wide/16 v1, -0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lf/u$a;->b(J)Lf/u$a;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lf/u$a;->a(J)Lf/u$a;

    .line 18
    invoke-virtual {v0}, Lf/u$a;->a()Lf/u;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    .line 19
    invoke-virtual {v3}, Lf/u;->h()Lf/u$a;

    move-result-object p1

    .line 20
    invoke-static {v3}, Lf/z/e/a;->a(Lf/u;)Lf/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/u$a;->a(Lf/u;)Lf/u$a;

    .line 21
    invoke-virtual {p1}, Lf/u$a;->a()Lf/u;

    move-result-object p1

    return-object p1

    .line 22
    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lf/s;)Lf/u;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v0}, Lf/u;->a()Lf/v;

    move-result-object v0

    invoke-static {v0}, Lf/z/c;->a(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    .line 24
    invoke-virtual {p1}, Lf/u;->c()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    .line 25
    invoke-virtual {v3}, Lf/u;->h()Lf/u$a;

    move-result-object v0

    .line 26
    invoke-virtual {v3}, Lf/u;->e()Lf/l;

    move-result-object v1

    invoke-virtual {p1}, Lf/u;->e()Lf/l;

    move-result-object v2

    invoke-static {v1, v2}, Lf/z/e/a;->a(Lf/l;Lf/l;)Lf/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/u$a;->a(Lf/l;)Lf/u$a;

    .line 27
    invoke-virtual {p1}, Lf/u;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lf/u$a;->b(J)Lf/u$a;

    .line 28
    invoke-virtual {p1}, Lf/u;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lf/u$a;->a(J)Lf/u$a;

    .line 29
    invoke-static {v3}, Lf/z/e/a;->a(Lf/u;)Lf/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/u$a;->a(Lf/u;)Lf/u$a;

    .line 30
    invoke-static {p1}, Lf/z/e/a;->a(Lf/u;)Lf/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/u$a;->c(Lf/u;)Lf/u$a;

    .line 31
    invoke-virtual {v0}, Lf/u$a;->a()Lf/u;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lf/u;->a()Lf/v;

    move-result-object p1

    invoke-virtual {p1}, Lf/v;->close()V

    .line 33
    iget-object p1, p0, Lf/z/e/a;->a:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {p1}, Lokhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 34
    iget-object p1, p0, Lf/z/e/a;->a:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {p1, v3, v0}, Lokhttp3/internal/cache/InternalCache;->update(Lf/u;Lf/u;)V

    return-object v0

    .line 35
    :cond_6
    invoke-virtual {v3}, Lf/u;->a()Lf/v;

    move-result-object v0

    invoke-static {v0}, Lf/z/c;->a(Ljava/io/Closeable;)V

    .line 36
    :cond_7
    invoke-virtual {p1}, Lf/u;->h()Lf/u$a;

    move-result-object v0

    .line 37
    invoke-static {v3}, Lf/z/e/a;->a(Lf/u;)Lf/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/u$a;->a(Lf/u;)Lf/u$a;

    .line 38
    invoke-static {p1}, Lf/z/e/a;->a(Lf/u;)Lf/u;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/u$a;->c(Lf/u;)Lf/u$a;

    .line 39
    invoke-virtual {v0}, Lf/u$a;->a()Lf/u;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lf/z/e/a;->a:Lokhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_9

    .line 41
    invoke-static {p1}, Lf/z/g/d;->b(Lf/u;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v2}, Lf/z/e/b;->a(Lf/u;Lf/s;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    iget-object v0, p0, Lf/z/e/a;->a:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v0, p1}, Lokhttp3/internal/cache/InternalCache;->put(Lf/u;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0, p1}, Lf/z/e/a;->a(Lokhttp3/internal/cache/CacheRequest;Lf/u;)Lf/u;

    move-result-object p1

    return-object p1

    .line 44
    :cond_8
    invoke-virtual {v2}, Lf/s;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/z/g/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    :try_start_1
    iget-object v0, p0, Lf/z/e/a;->a:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v0, v2}, Lokhttp3/internal/cache/InternalCache;->remove(Lf/s;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_a

    .line 46
    invoke-virtual {v0}, Lf/u;->a()Lf/v;

    move-result-object v0

    invoke-static {v0}, Lf/z/c;->a(Ljava/io/Closeable;)V

    :cond_a
    throw p1
.end method
