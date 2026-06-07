.class public final Lf/z/i/e;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lokhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/z/i/e$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lokhttp3/Interceptor$Chain;

.field public final b:Lf/z/f/g;

.field public final c:Lf/z/i/f;

.field public d:Lf/z/i/g;

.field public final e:Lf/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/z/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf/z/i/e;->f:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/z/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf/z/i/e;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lf/p;Lokhttp3/Interceptor$Chain;Lf/z/f/g;Lf/z/i/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/z/i/e;->a:Lokhttp3/Interceptor$Chain;

    .line 3
    iput-object p3, p0, Lf/z/i/e;->b:Lf/z/f/g;

    .line 4
    iput-object p4, p0, Lf/z/i/e;->c:Lf/z/i/f;

    .line 5
    invoke-virtual {p1}, Lf/p;->s()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lf/q;->f:Lf/q;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lf/q;->f:Lf/q;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lf/q;->e:Lf/q;

    :goto_0
    iput-object p1, p0, Lf/z/i/e;->e:Lf/q;

    return-void
.end method

.method public static a(Lf/l;Lf/q;)Lf/u$a;
    .locals 7

    .line 12
    new-instance v0, Lf/l$a;

    invoke-direct {v0}, Lf/l$a;-><init>()V

    .line 13
    invoke-virtual {p0}, Lf/l;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 14
    invoke-virtual {p0, v3}, Lf/l;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p0, v3}, Lf/l;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    .line 16
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf/z/g/j;->a(Ljava/lang/String;)Lf/z/g/j;

    move-result-object v2

    goto :goto_1

    .line 18
    :cond_0
    sget-object v6, Lf/z/i/e;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 19
    sget-object v6, Lf/z/a;->a:Lf/z/a;

    invoke-virtual {v6, v0, v4, v5}, Lf/z/a;->a(Lf/l$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 20
    new-instance p0, Lf/u$a;

    invoke-direct {p0}, Lf/u$a;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lf/u$a;->a(Lf/q;)Lf/u$a;

    iget p1, v2, Lf/z/g/j;->b:I

    .line 22
    invoke-virtual {p0, p1}, Lf/u$a;->a(I)Lf/u$a;

    iget-object p1, v2, Lf/z/g/j;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Lf/u$a;->a(Ljava/lang/String;)Lf/u$a;

    .line 24
    invoke-virtual {v0}, Lf/l$a;->a()Lf/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/u$a;->a(Lf/l;)Lf/u$a;

    return-object p0

    .line 25
    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lf/s;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/s;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/s;->c()Lf/l;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lf/l;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->f:Lg/d;

    invoke-virtual {p0}, Lf/s;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lg/d;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->g:Lg/d;

    invoke-virtual {p0}, Lf/s;->g()Lf/m;

    move-result-object v4

    invoke-static {v4}, Lf/z/g/h;->a(Lf/m;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lg/d;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 5
    invoke-virtual {p0, v2}, Lf/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lokhttp3/internal/http2/Header;

    sget-object v4, Lokhttp3/internal/http2/Header;->i:Lg/d;

    invoke-direct {v3, v4, v2}, Lokhttp3/internal/http2/Header;-><init>(Lg/d;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v3, Lokhttp3/internal/http2/Header;->h:Lg/d;

    invoke-virtual {p0}, Lf/s;->g()Lf/m;

    move-result-object p0

    invoke-virtual {p0}, Lf/m;->n()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lokhttp3/internal/http2/Header;-><init>(Lg/d;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v0}, Lf/l;->b()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    .line 9
    invoke-virtual {v0, p0}, Lf/l;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg/d;->c(Ljava/lang/String;)Lg/d;

    move-result-object v3

    .line 10
    sget-object v4, Lf/z/i/e;->f:Ljava/util/List;

    invoke-virtual {v3}, Lg/d;->i()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    new-instance v4, Lokhttp3/internal/http2/Header;

    invoke-virtual {v0, p0}, Lf/l;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lg/d;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/z/i/e;->d:Lf/z/i/g;

    if-eqz v0, :cond_0

    sget-object v1, Lf/z/i/b;->g:Lf/z/i/b;

    invoke-virtual {v0, v1}, Lf/z/i/g;->c(Lf/z/i/b;)V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lf/s;J)Lokio/Sink;
    .locals 0

    .line 1
    iget-object p1, p0, Lf/z/i/e;->d:Lf/z/i/g;

    invoke-virtual {p1}, Lf/z/i/g;->d()Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/i/e;->d:Lf/z/i/g;

    invoke-virtual {v0}, Lf/z/i/g;->d()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    return-void
.end method

.method public flushRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/i/e;->c:Lf/z/i/f;

    invoke-virtual {v0}, Lf/z/i/f;->flush()V

    return-void
.end method

.method public openResponseBody(Lf/u;)Lf/v;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/z/i/e;->b:Lf/z/f/g;

    iget-object v1, v0, Lf/z/f/g;->f:Lokhttp3/EventListener;

    iget-object v0, v0, Lf/z/f/g;->e:Lokhttp3/Call;

    invoke-virtual {v1, v0}, Lokhttp3/EventListener;->e(Lokhttp3/Call;)V

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p1, v0}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lf/z/g/d;->a(Lf/u;)J

    move-result-wide v1

    .line 4
    new-instance p1, Lf/z/i/e$a;

    iget-object v3, p0, Lf/z/i/e;->d:Lf/z/i/g;

    invoke-virtual {v3}, Lf/z/i/g;->e()Lokio/Source;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lf/z/i/e$a;-><init>(Lf/z/i/e;Lokio/Source;)V

    .line 5
    new-instance v3, Lf/z/g/g;

    invoke-static {p1}, Lg/j;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lf/z/g/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object v3
.end method

.method public readResponseHeaders(Z)Lf/u$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/z/i/e;->d:Lf/z/i/g;

    invoke-virtual {v0}, Lf/z/i/g;->j()Lf/l;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/z/i/e;->e:Lf/q;

    invoke-static {v0, v1}, Lf/z/i/e;->a(Lf/l;Lf/q;)Lf/u$a;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lf/z/a;->a:Lf/z/a;

    invoke-virtual {p1, v0}, Lf/z/a;->a(Lf/u$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public writeRequestHeaders(Lf/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/z/i/e;->d:Lf/z/i/g;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lf/s;->a()Lf/t;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lf/z/i/e;->a(Lf/s;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lf/z/i/e;->c:Lf/z/i/f;

    invoke-virtual {v1, p1, v0}, Lf/z/i/f;->a(Ljava/util/List;Z)Lf/z/i/g;

    move-result-object p1

    iput-object p1, p0, Lf/z/i/e;->d:Lf/z/i/g;

    .line 5
    iget-object p1, p0, Lf/z/i/e;->d:Lf/z/i/g;

    invoke-virtual {p1}, Lf/z/i/g;->h()Lg/q;

    move-result-object p1

    iget-object v0, p0, Lf/z/i/e;->a:Lokhttp3/Interceptor$Chain;

    invoke-interface {v0}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lg/q;->a(JLjava/util/concurrent/TimeUnit;)Lg/q;

    .line 6
    iget-object p1, p0, Lf/z/i/e;->d:Lf/z/i/g;

    invoke-virtual {p1}, Lf/z/i/g;->l()Lg/q;

    move-result-object p1

    iget-object v0, p0, Lf/z/i/e;->a:Lokhttp3/Interceptor$Chain;

    invoke-interface {v0}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lg/q;->a(JLjava/util/concurrent/TimeUnit;)Lg/q;

    return-void
.end method
