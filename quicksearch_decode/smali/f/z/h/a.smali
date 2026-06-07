.class public final Lf/z/h/a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/z/h/a$g;,
        Lf/z/h/a$d;,
        Lf/z/h/a$f;,
        Lf/z/h/a$b;,
        Lf/z/h/a$c;,
        Lf/z/h/a$e;
    }
.end annotation


# instance fields
.field public final a:Lf/p;

.field public final b:Lf/z/f/g;

.field public final c:Lokio/BufferedSource;

.field public final d:Lokio/BufferedSink;

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Lf/p;Lf/z/f/g;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/z/h/a;->e:I

    const-wide/32 v0, 0x40000

    .line 3
    iput-wide v0, p0, Lf/z/h/a;->f:J

    .line 4
    iput-object p1, p0, Lf/z/h/a;->a:Lf/p;

    .line 5
    iput-object p2, p0, Lf/z/h/a;->b:Lf/z/f/g;

    .line 6
    iput-object p3, p0, Lf/z/h/a;->c:Lokio/BufferedSource;

    .line 7
    iput-object p4, p0, Lf/z/h/a;->d:Lokio/BufferedSink;

    return-void
.end method


# virtual methods
.method public a()Lokio/Sink;
    .locals 3

    .line 11
    iget v0, p0, Lf/z/h/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lf/z/h/a;->e:I

    .line 13
    new-instance v0, Lf/z/h/a$c;

    invoke-direct {v0, p0}, Lf/z/h/a$c;-><init>(Lf/z/h/a;)V

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf/z/h/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(J)Lokio/Sink;
    .locals 2

    .line 15
    iget v0, p0, Lf/z/h/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lf/z/h/a;->e:I

    .line 17
    new-instance v0, Lf/z/h/a$e;

    invoke-direct {v0, p0, p1, p2}, Lf/z/h/a$e;-><init>(Lf/z/h/a;J)V

    return-object v0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf/z/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lf/m;)Lokio/Source;
    .locals 2

    .line 19
    iget v0, p0, Lf/z/h/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 20
    iput v0, p0, Lf/z/h/a;->e:I

    .line 21
    new-instance v0, Lf/z/h/a$d;

    invoke-direct {v0, p0, p1}, Lf/z/h/a$d;-><init>(Lf/z/h/a;Lf/m;)V

    return-object v0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/z/h/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lf/l;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lf/z/h/a;->e:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/z/h/a;->d:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Lf/l;->b()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 4
    iget-object v2, p0, Lf/z/h/a;->d:Lokio/BufferedSink;

    invoke-virtual {p1, p2}, Lf/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    .line 5
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 6
    invoke-virtual {p1, p2}, Lf/l;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 7
    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lf/z/h/a;->d:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lf/z/h/a;->e:I

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf/z/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lg/g;)V
    .locals 2

    .line 23
    invoke-virtual {p1}, Lg/g;->g()Lg/q;

    move-result-object v0

    .line 24
    sget-object v1, Lg/q;->d:Lg/q;

    invoke-virtual {p1, v1}, Lg/g;->a(Lg/q;)Lg/g;

    .line 25
    invoke-virtual {v0}, Lg/q;->a()Lg/q;

    .line 26
    invoke-virtual {v0}, Lg/q;->b()Lg/q;

    return-void
.end method

.method public b()Lokio/Source;
    .locals 3

    .line 5
    iget v0, p0, Lf/z/h/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lf/z/h/a;->b:Lf/z/f/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 7
    iput v1, p0, Lf/z/h/a;->e:I

    .line 8
    invoke-virtual {v0}, Lf/z/f/g;->e()V

    .line 9
    new-instance v0, Lf/z/h/a$g;

    invoke-direct {v0, p0}, Lf/z/h/a$g;-><init>(Lf/z/h/a;)V

    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf/z/h/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(J)Lokio/Source;
    .locals 2

    .line 1
    iget v0, p0, Lf/z/h/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lf/z/h/a;->e:I

    .line 3
    new-instance v0, Lf/z/h/a$f;

    invoke-direct {v0, p0, p1, p2}, Lf/z/h/a$f;-><init>(Lf/z/h/a;J)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf/z/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lf/z/h/a;->c:Lokio/BufferedSource;

    iget-wide v1, p0, Lf/z/h/a;->f:J

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lf/z/h/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lf/z/h/a;->f:J

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/h/a;->b:Lf/z/f/g;

    invoke-virtual {v0}, Lf/z/f/g;->c()Lf/z/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/z/f/c;->a()V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lf/s;J)Lokio/Sink;
    .locals 2

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lf/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/z/h/a;->a()Lokio/Sink;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p2, p3}, Lf/z/h/a;->a(J)Lokio/Sink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Lf/l;
    .locals 3

    .line 1
    new-instance v0, Lf/l$a;

    invoke-direct {v0}, Lf/l$a;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lf/z/h/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lf/z/a;->a:Lf/z/a;

    invoke-virtual {v2, v0, v1}, Lf/z/a;->a(Lf/l$a;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lf/l$a;->a()Lf/l;

    move-result-object v0

    return-object v0
.end method

.method public finishRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/h/a;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public flushRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/h/a;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public openResponseBody(Lf/u;)Lf/v;
    .locals 6

    .line 1
    iget-object v0, p0, Lf/z/h/a;->b:Lf/z/f/g;

    iget-object v1, v0, Lf/z/f/g;->f:Lokhttp3/EventListener;

    iget-object v0, v0, Lf/z/f/g;->e:Lokhttp3/Call;

    invoke-virtual {v1, v0}, Lokhttp3/EventListener;->e(Lokhttp3/Call;)V

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p1, v0}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lf/z/g/d;->b(Lf/u;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Lf/z/h/a;->b(J)Lokio/Source;

    move-result-object p1

    .line 5
    new-instance v3, Lf/z/g/g;

    invoke-static {p1}, Lg/j;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lf/z/g/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    .line 6
    invoke-virtual {p1, v1}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lf/u;->k()Lf/s;

    move-result-object p1

    invoke-virtual {p1}, Lf/s;->g()Lf/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/z/h/a;->a(Lf/m;)Lokio/Source;

    move-result-object p1

    .line 8
    new-instance v1, Lf/z/g/g;

    invoke-static {p1}, Lg/j;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lf/z/g/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object v1

    .line 9
    :cond_1
    invoke-static {p1}, Lf/z/g/d;->a(Lf/u;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0, v4, v5}, Lf/z/h/a;->b(J)Lokio/Source;

    move-result-object p1

    .line 11
    new-instance v1, Lf/z/g/g;

    invoke-static {p1}, Lg/j;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lf/z/g/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object v1

    .line 12
    :cond_2
    new-instance p1, Lf/z/g/g;

    invoke-virtual {p0}, Lf/z/h/a;->b()Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lg/j;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lf/z/g/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object p1
.end method

.method public readResponseHeaders(Z)Lf/u$a;
    .locals 4

    .line 1
    iget v0, p0, Lf/z/h/a;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/z/h/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lf/z/h/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/z/g/j;->a(Ljava/lang/String;)Lf/z/g/j;

    move-result-object v0

    .line 4
    new-instance v2, Lf/u$a;

    invoke-direct {v2}, Lf/u$a;-><init>()V

    iget-object v3, v0, Lf/z/g/j;->a:Lf/q;

    .line 5
    invoke-virtual {v2, v3}, Lf/u$a;->a(Lf/q;)Lf/u$a;

    iget v3, v0, Lf/z/g/j;->b:I

    .line 6
    invoke-virtual {v2, v3}, Lf/u$a;->a(I)Lf/u$a;

    iget-object v3, v0, Lf/z/g/j;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v3}, Lf/u$a;->a(Ljava/lang/String;)Lf/u$a;

    .line 8
    invoke-virtual {p0}, Lf/z/h/a;->d()Lf/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/u$a;->a(Lf/l;)Lf/u$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 9
    iget p1, v0, Lf/z/g/j;->b:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_2
    iget p1, v0, Lf/z/g/j;->b:I

    if-ne p1, v3, :cond_3

    .line 11
    iput v1, p0, Lf/z/h/a;->e:I

    return-object v2

    :cond_3
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lf/z/h/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf/z/h/a;->b:Lf/z/f/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    throw v0
.end method

.method public writeRequestHeaders(Lf/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/h/a;->b:Lf/z/f/g;

    .line 2
    invoke-virtual {v0}, Lf/z/f/g;->c()Lf/z/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lf/z/f/c;->route()Lf/w;

    move-result-object v0

    invoke-virtual {v0}, Lf/w;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lf/z/g/h;->a(Lf/s;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lf/s;->c()Lf/l;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lf/z/h/a;->a(Lf/l;Ljava/lang/String;)V

    return-void
.end method
