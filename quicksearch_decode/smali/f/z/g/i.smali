.class public final Lf/z/g/i;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final a:Lf/p;

.field public volatile b:Lf/z/f/g;

.field public c:Ljava/lang/Object;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Lf/p;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/z/g/i;->a:Lf/p;

    return-void
.end method


# virtual methods
.method public final a(Lf/u;I)I
    .locals 1

    const-string v0, "Retry-After"

    .line 61
    invoke-virtual {p1, v0}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string p2, "\\d+"

    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method public final a(Lf/m;)Lf/a;
    .locals 17

    move-object/from16 v0, p0

    .line 5
    invoke-virtual/range {p1 .. p1}, Lf/m;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v1}, Lf/p;->z()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 7
    iget-object v1, v0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v1}, Lf/p;->m()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 8
    iget-object v3, v0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v3}, Lf/p;->c()Lf/d;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 9
    :goto_0
    new-instance v1, Lf/a;

    invoke-virtual/range {p1 .. p1}, Lf/m;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lf/m;->k()I

    move-result v6

    iget-object v2, v0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v2}, Lf/p;->i()Lokhttp3/Dns;

    move-result-object v7

    iget-object v2, v0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v2}, Lf/p;->y()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lf/z/g/i;->a:Lf/p;

    .line 10
    invoke-virtual {v2}, Lf/p;->u()Lokhttp3/Authenticator;

    move-result-object v12

    iget-object v2, v0, Lf/z/g/i;->a:Lf/p;

    .line 11
    invoke-virtual {v2}, Lf/p;->t()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v2}, Lf/p;->s()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v2}, Lf/p;->f()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v2}, Lf/p;->v()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lf/a;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lf/d;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method public final a(Lf/u;Lf/w;)Lf/s;
    .locals 6

    if-eqz p1, :cond_16

    .line 23
    invoke-virtual {p1}, Lf/u;->c()I

    move-result v0

    .line 24
    invoke-virtual {p1}, Lf/u;->k()Lf/s;

    move-result-object v1

    invoke-virtual {v1}, Lf/s;->e()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_c

    const/16 v2, 0x134

    if-eq v0, v2, :cond_c

    const/16 v2, 0x191

    if-eq v0, v2, :cond_b

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_8

    const/16 v2, 0x197

    if-eq v0, v2, :cond_5

    const/16 p2, 0x198

    if-eq v0, p2, :cond_0

    packed-switch v0, :pswitch_data_0

    return-object v4

    .line 25
    :cond_0
    iget-object v0, p0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->x()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    .line 26
    :cond_1
    invoke-virtual {p1}, Lf/u;->k()Lf/s;

    move-result-object v0

    invoke-virtual {v0}, Lf/s;->a()Lf/t;

    move-result-object v0

    instance-of v0, v0, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_2

    return-object v4

    .line 27
    :cond_2
    invoke-virtual {p1}, Lf/u;->i()Lf/u;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {p1}, Lf/u;->i()Lf/u;

    move-result-object v0

    invoke-virtual {v0}, Lf/u;->c()I

    move-result v0

    if-ne v0, p2, :cond_3

    return-object v4

    :cond_3
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p0, p1, p2}, Lf/z/g/i;->a(Lf/u;I)I

    move-result p2

    if-lez p2, :cond_4

    return-object v4

    .line 30
    :cond_4
    invoke-virtual {p1}, Lf/u;->k()Lf/s;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz p2, :cond_6

    .line 31
    invoke-virtual {p2}, Lf/w;->b()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_6
    iget-object v0, p0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->t()Ljava/net/Proxy;

    move-result-object v0

    .line 33
    :goto_0
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_7

    .line 34
    iget-object v0, p0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->u()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lf/w;Lf/u;)Lf/s;

    move-result-object p1

    return-object p1

    .line 35
    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_8
    invoke-virtual {p1}, Lf/u;->i()Lf/u;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 37
    invoke-virtual {p1}, Lf/u;->i()Lf/u;

    move-result-object p2

    invoke-virtual {p2}, Lf/u;->c()I

    move-result p2

    if-ne p2, v2, :cond_9

    return-object v4

    :cond_9
    const p2, 0x7fffffff

    .line 38
    invoke-virtual {p0, p1, p2}, Lf/z/g/i;->a(Lf/u;I)I

    move-result p2

    if-nez p2, :cond_a

    .line 39
    invoke-virtual {p1}, Lf/u;->k()Lf/s;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v4

    .line 40
    :cond_b
    iget-object v0, p0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->a()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lf/w;Lf/u;)Lf/s;

    move-result-object p1

    return-object p1

    .line 41
    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    return-object v4

    .line 42
    :cond_d
    :pswitch_0
    iget-object p2, p0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {p2}, Lf/p;->k()Z

    move-result p2

    if-nez p2, :cond_e

    return-object v4

    :cond_e
    const-string p2, "Location"

    .line 43
    invoke-virtual {p1, p2}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_f

    return-object v4

    .line 44
    :cond_f
    invoke-virtual {p1}, Lf/u;->k()Lf/s;

    move-result-object v0

    invoke-virtual {v0}, Lf/s;->g()Lf/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lf/m;->b(Ljava/lang/String;)Lf/m;

    move-result-object p2

    if-nez p2, :cond_10

    return-object v4

    .line 45
    :cond_10
    invoke-virtual {p2}, Lf/m;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lf/u;->k()Lf/s;

    move-result-object v2

    invoke-virtual {v2}, Lf/s;->g()Lf/m;

    move-result-object v2

    invoke-virtual {v2}, Lf/m;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 46
    iget-object v0, p0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->l()Z

    move-result v0

    if-nez v0, :cond_11

    return-object v4

    .line 47
    :cond_11
    invoke-virtual {p1}, Lf/u;->k()Lf/s;

    move-result-object v0

    invoke-virtual {v0}, Lf/s;->f()Lf/s$a;

    move-result-object v0

    .line 48
    invoke-static {v1}, Lf/z/g/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 49
    invoke-static {v1}, Lf/z/g/e;->d(Ljava/lang/String;)Z

    move-result v2

    .line 50
    invoke-static {v1}, Lf/z/g/e;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 51
    invoke-virtual {v0, v3, v4}, Lf/s$a;->a(Ljava/lang/String;Lf/t;)Lf/s$a;

    goto :goto_1

    :cond_12
    if-eqz v2, :cond_13

    .line 52
    invoke-virtual {p1}, Lf/u;->k()Lf/s;

    move-result-object v3

    invoke-virtual {v3}, Lf/s;->a()Lf/t;

    move-result-object v4

    .line 53
    :cond_13
    invoke-virtual {v0, v1, v4}, Lf/s$a;->a(Ljava/lang/String;Lf/t;)Lf/s$a;

    :goto_1
    if-nez v2, :cond_14

    const-string v1, "Transfer-Encoding"

    .line 54
    invoke-virtual {v0, v1}, Lf/s$a;->a(Ljava/lang/String;)Lf/s$a;

    const-string v1, "Content-Length"

    .line 55
    invoke-virtual {v0, v1}, Lf/s$a;->a(Ljava/lang/String;)Lf/s$a;

    const-string v1, "Content-Type"

    .line 56
    invoke-virtual {v0, v1}, Lf/s$a;->a(Ljava/lang/String;)Lf/s$a;

    .line 57
    :cond_14
    invoke-virtual {p0, p1, p2}, Lf/z/g/i;->a(Lf/u;Lf/m;)Z

    move-result p1

    if-nez p1, :cond_15

    const-string p1, "Authorization"

    .line 58
    invoke-virtual {v0, p1}, Lf/s$a;->a(Ljava/lang/String;)Lf/s$a;

    .line 59
    :cond_15
    invoke-virtual {v0, p2}, Lf/s$a;->a(Lf/m;)Lf/s$a;

    invoke-virtual {v0}, Lf/s$a;->a()Lf/s;

    move-result-object p1

    return-object p1

    .line 60
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/z/g/i;->d:Z

    .line 2
    iget-object v0, p0, Lf/z/g/i;->b:Lf/z/f/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lf/z/f/g;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lf/z/g/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public final a(Lf/u;Lf/m;)Z
    .locals 2

    .line 64
    invoke-virtual {p1}, Lf/u;->k()Lf/s;

    move-result-object p1

    invoke-virtual {p1}, Lf/s;->g()Lf/m;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lf/m;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lf/m;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lf/m;->k()I

    move-result v0

    invoke-virtual {p2}, Lf/m;->k()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p1}, Lf/m;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lf/m;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Ljava/io/IOException;Lf/z/f/g;ZLf/s;)Z
    .locals 2

    .line 12
    invoke-virtual {p2, p1}, Lf/z/f/g;->a(Ljava/io/IOException;)V

    .line 13
    iget-object v0, p0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v0}, Lf/p;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    .line 14
    invoke-virtual {p4}, Lf/s;->a()Lf/t;

    move-result-object p4

    instance-of p4, p4, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz p4, :cond_1

    return v1

    .line 15
    :cond_1
    invoke-virtual {p0, p1, p3}, Lf/z/g/i;->a(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 16
    :cond_2
    invoke-virtual {p2}, Lf/z/f/g;->d()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/io/IOException;Z)Z
    .locals 3

    .line 17
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 18
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 19
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 20
    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    .line 21
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    .line 22
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/z/g/i;->d:Z

    return v0
.end method

.method public c()Lf/z/f/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/g/i;->b:Lf/z/f/g;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lf/u;
    .locals 14

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lf/s;

    move-result-object v0

    .line 2
    check-cast p1, Lf/z/g/f;

    .line 3
    invoke-virtual {p1}, Lf/z/g/f;->call()Lokhttp3/Call;

    move-result-object v7

    .line 4
    invoke-virtual {p1}, Lf/z/g/f;->a()Lokhttp3/EventListener;

    move-result-object v8

    .line 5
    new-instance v9, Lf/z/f/g;

    iget-object v1, p0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v1}, Lf/p;->e()Lf/f;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lf/s;->g()Lf/m;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf/z/g/i;->a(Lf/m;)Lf/a;

    move-result-object v3

    iget-object v6, p0, Lf/z/g/i;->c:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lf/z/f/g;-><init>(Lf/f;Lf/a;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V

    .line 7
    iput-object v9, p0, Lf/z/g/i;->b:Lf/z/f/g;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v2, v10

    move-object v1, v11

    .line 8
    :goto_0
    iget-boolean v3, p0, Lf/z/g/i;->d:Z

    if-nez v3, :cond_9

    .line 9
    :try_start_0
    invoke-virtual {p1, v0, v9, v11, v11}, Lf/z/g/f;->a(Lf/s;Lf/z/f/g;Lokhttp3/internal/http/HttpCodec;Lf/z/f/c;)Lf/u;

    move-result-object v0
    :try_end_0
    .catch Lf/z/f/e; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lf/u;->h()Lf/u$a;

    move-result-object v0

    .line 11
    invoke-virtual {v1}, Lf/u;->h()Lf/u$a;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v11}, Lf/u$a;->a(Lf/v;)Lf/u$a;

    .line 13
    invoke-virtual {v1}, Lf/u$a;->a()Lf/u;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lf/u$a;->d(Lf/u;)Lf/u$a;

    .line 15
    invoke-virtual {v0}, Lf/u$a;->a()Lf/u;

    move-result-object v0

    .line 16
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Lf/z/f/g;->h()Lf/w;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lf/z/g/i;->a(Lf/u;Lf/w;)Lf/s;

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v12, :cond_1

    .line 17
    invoke-virtual {v9}, Lf/z/f/g;->f()V

    return-object v0

    .line 18
    :cond_1
    invoke-virtual {v0}, Lf/u;->a()Lf/v;

    move-result-object v1

    invoke-static {v1}, Lf/z/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v13, v2, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_5

    .line 19
    invoke-virtual {v12}, Lf/s;->a()Lf/t;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_4

    .line 20
    invoke-virtual {v12}, Lf/s;->g()Lf/m;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lf/z/g/i;->a(Lf/u;Lf/m;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 21
    invoke-virtual {v9}, Lf/z/f/g;->f()V

    .line 22
    new-instance v9, Lf/z/f/g;

    iget-object v1, p0, Lf/z/g/i;->a:Lf/p;

    invoke-virtual {v1}, Lf/p;->e()Lf/f;

    move-result-object v2

    .line 23
    invoke-virtual {v12}, Lf/s;->g()Lf/m;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf/z/g/i;->a(Lf/m;)Lf/a;

    move-result-object v3

    iget-object v6, p0, Lf/z/g/i;->c:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lf/z/f/g;-><init>(Lf/f;Lf/a;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V

    .line 24
    iput-object v9, p0, Lf/z/g/i;->b:Lf/z/f/g;

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {v9}, Lf/z/f/g;->b()Lokhttp3/internal/http/HttpCodec;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    move-object v1, v0

    move-object v0, v12

    move v2, v13

    goto :goto_0

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    invoke-virtual {v9}, Lf/z/f/g;->f()V

    .line 28
    new-instance p1, Ljava/net/HttpRetryException;

    invoke-virtual {v0}, Lf/u;->c()I

    move-result v0

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-direct {p1, v1, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 29
    :cond_5
    invoke-virtual {v9}, Lf/z/f/g;->f()V

    .line 30
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {v9}, Lf/z/f/g;->f()V

    .line 32
    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 33
    :try_start_2
    instance-of v4, v3, Lf/z/i/a;

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    move v4, v10

    .line 34
    :goto_2
    invoke-virtual {p0, v3, v9, v4, v0}, Lf/z/g/i;->a(Ljava/io/IOException;Lf/z/f/g;ZLf/s;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    :cond_7
    throw v3

    :catch_2
    move-exception v3

    .line 35
    invoke-virtual {v3}, Lf/z/f/e;->b()Ljava/io/IOException;

    move-result-object v4

    invoke-virtual {p0, v4, v9, v10, v0}, Lf/z/g/i;->a(Ljava/io/IOException;Lf/z/f/g;ZLf/s;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_0

    .line 36
    :cond_8
    invoke-virtual {v3}, Lf/z/f/e;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :goto_3
    invoke-virtual {v9, v11}, Lf/z/f/g;->a(Ljava/io/IOException;)V

    .line 38
    invoke-virtual {v9}, Lf/z/f/g;->f()V

    throw p1

    .line 39
    :cond_9
    invoke-virtual {v9}, Lf/z/f/g;->f()V

    .line 40
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
