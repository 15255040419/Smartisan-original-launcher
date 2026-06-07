.class public final Lf/z/g/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final a:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/z/g/a;->a:Lokhttp3/CookieJar;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/h;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/h;

    .line 5
    invoke-virtual {v3}, Lf/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lf/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lf/u;
    .locals 10

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lf/s;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lf/s;->f()Lf/s$a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lf/s;->a()Lf/t;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lf/t;->b()Lf/n;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v7}, Lf/n;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    .line 6
    :cond_0
    invoke-virtual {v2}, Lf/t;->a()J

    move-result-wide v7

    cmp-long v2, v7, v4

    const-string v9, "Transfer-Encoding"

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    .line 8
    invoke-virtual {v1, v9}, Lf/s$a;->a(Ljava/lang/String;)Lf/s$a;

    goto :goto_0

    :cond_1
    const-string v2, "chunked"

    .line 9
    invoke-virtual {v1, v9, v2}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    .line 10
    invoke-virtual {v1, v6}, Lf/s$a;->a(Ljava/lang/String;)Lf/s$a;

    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 11
    invoke-virtual {v0, v2}, Lf/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    .line 12
    invoke-virtual {v0}, Lf/s;->g()Lf/m;

    move-result-object v7

    invoke-static {v7, v8}, Lf/z/c;->a(Lf/m;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    :cond_3
    const-string v2, "Connection"

    .line 13
    invoke-virtual {v0, v2}, Lf/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    .line 14
    invoke-virtual {v1, v2, v7}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    .line 15
    invoke-virtual {v0, v2}, Lf/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lf/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    .line 16
    invoke-virtual {v1, v2, v9}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    .line 17
    :cond_5
    iget-object v2, p0, Lf/z/g/a;->a:Lokhttp3/CookieJar;

    invoke-virtual {v0}, Lf/s;->g()Lf/m;

    move-result-object v7

    invoke-interface {v2, v7}, Lokhttp3/CookieJar;->loadForRequest(Lf/m;)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 19
    invoke-virtual {p0, v2}, Lf/z/g/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Cookie"

    invoke-virtual {v1, v7, v2}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    :cond_6
    const-string v2, "User-Agent"

    .line 20
    invoke-virtual {v0, v2}, Lf/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    .line 21
    invoke-static {}, Lf/z/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    .line 22
    :cond_7
    invoke-virtual {v1}, Lf/s$a;->a()Lf/s;

    move-result-object v1

    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lf/s;)Lf/u;

    move-result-object p1

    .line 23
    iget-object v1, p0, Lf/z/g/a;->a:Lokhttp3/CookieJar;

    invoke-virtual {v0}, Lf/s;->g()Lf/m;

    move-result-object v2

    invoke-virtual {p1}, Lf/u;->e()Lf/l;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lf/z/g/d;->a(Lokhttp3/CookieJar;Lf/m;Lf/l;)V

    .line 24
    invoke-virtual {p1}, Lf/u;->h()Lf/u$a;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lf/u$a;->a(Lf/s;)Lf/u$a;

    if-eqz v8, :cond_8

    const-string v0, "Content-Encoding"

    .line 26
    invoke-virtual {p1, v0}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    invoke-static {p1}, Lf/z/g/d;->b(Lf/u;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    new-instance v2, Lg/h;

    invoke-virtual {p1}, Lf/u;->a()Lf/v;

    move-result-object v7

    invoke-virtual {v7}, Lf/v;->e()Lokio/BufferedSource;

    move-result-object v7

    invoke-direct {v2, v7}, Lg/h;-><init>(Lokio/Source;)V

    .line 29
    invoke-virtual {p1}, Lf/u;->e()Lf/l;

    move-result-object v7

    invoke-virtual {v7}, Lf/l;->a()Lf/l$a;

    move-result-object v7

    .line 30
    invoke-virtual {v7, v0}, Lf/l$a;->b(Ljava/lang/String;)Lf/l$a;

    .line 31
    invoke-virtual {v7, v6}, Lf/l$a;->b(Ljava/lang/String;)Lf/l$a;

    .line 32
    invoke-virtual {v7}, Lf/l$a;->a()Lf/l;

    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Lf/u$a;->a(Lf/l;)Lf/u$a;

    .line 34
    invoke-virtual {p1, v3}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Lf/z/g/g;

    invoke-static {v2}, Lg/j;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v0, p1, v4, v5, v2}, Lf/z/g/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    invoke-virtual {v1, v0}, Lf/u$a;->a(Lf/v;)Lf/u$a;

    .line 36
    :cond_8
    invoke-virtual {v1}, Lf/u$a;->a()Lf/u;

    move-result-object p1

    return-object p1
.end method
