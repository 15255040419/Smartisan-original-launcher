.class public final Lg/l;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lokio/BufferedSink;


# instance fields
.field public final a:Lg/c;

.field public final b:Lokio/Sink;

.field public c:Z


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/c;

    invoke-direct {v0}, Lg/c;-><init>()V

    iput-object v0, p0, Lg/l;->a:Lg/c;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lg/l;->b:Lokio/Sink;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public buffer()Lg/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/l;->a:Lg/c;

    return-object v0
.end method

.method public close()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lg/l;->a:Lg/c;

    iget-wide v1, v1, Lg/c;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 3
    iget-object v1, p0, Lg/l;->b:Lokio/Sink;

    iget-object v2, p0, Lg/l;->a:Lg/c;

    iget-object v3, p0, Lg/l;->a:Lg/c;

    iget-wide v3, v3, Lg/c;->b:J

    invoke-interface {v1, v2, v3, v4}, Lokio/Sink;->write(Lg/c;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    :goto_0
    :try_start_1
    iget-object v2, p0, Lg/l;->b:Lokio/Sink;

    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lg/l;->c:Z

    if-nez v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {v1}, Lg/r;->a(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public emit()Lokio/BufferedSink;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0}, Lg/c;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3
    iget-object v2, p0, Lg/l;->b:Lokio/Sink;

    iget-object v3, p0, Lg/l;->a:Lg/c;

    invoke-interface {v2, v3, v0, v1}, Lokio/Sink;->write(Lg/c;J)V

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitCompleteSegments()Lokio/BufferedSink;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0}, Lg/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3
    iget-object v2, p0, Lg/l;->b:Lokio/Sink;

    iget-object v3, p0, Lg/l;->a:Lg/c;

    invoke-interface {v2, v3, v0, v1}, Lokio/Sink;->write(Lg/c;J)V

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    iget-wide v1, v0, Lg/c;->b:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 3
    iget-object v3, p0, Lg/l;->b:Lokio/Sink;

    invoke-interface {v3, v0, v1, v2}, Lokio/Sink;->write(Lg/c;J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lg/l;->b:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->flush()V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lg/l$a;

    invoke-direct {v0, p0}, Lg/l$a;-><init>(Lg/l;)V

    return-object v0
.end method

.method public timeout()Lg/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/l;->b:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lg/q;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/l;->b:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 17
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 19
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lg/d;)Lokio/BufferedSink;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->write(Lg/d;)Lg/c;

    .line 7
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 4

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 21
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-interface {p1, v0, p2, p3}, Lokio/Source;->read(Lg/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sub-long/2addr p2, v0

    .line 22
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p0
.end method

.method public write([B)Lokio/BufferedSink;
    .locals 1

    .line 9
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->write([B)Lg/c;

    .line 11
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lokio/BufferedSink;
    .locals 1

    .line 13
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1, p2, p3}, Lg/c;->write([BII)Lg/c;

    .line 15
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lg/c;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1, p2, p3}, Lg/c;->write(Lg/c;J)V

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Lokio/Source;)J
    .locals 6

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lg/l;->a:Lg/c;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lokio/Source;->read(Lg/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    goto :goto_0

    :cond_0
    return-wide v0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->writeByte(I)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDecimalLong(J)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1, p2}, Lg/c;->writeDecimalLong(J)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1, p2}, Lg/c;->writeHexadecimalUnsignedLong(J)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->writeInt(I)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeIntLe(I)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->writeIntLe(I)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLong(J)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1, p2}, Lg/c;->writeLong(J)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLongLe(J)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1, p2}, Lg/c;->writeLongLe(J)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->writeShort(I)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShortLe(I)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->writeShortLe(I)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lg/c;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lg/c;

    .line 7
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1, p2}, Lg/c;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->writeUtf8(Ljava/lang/String;)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1, p2, p3}, Lg/c;->writeUtf8(Ljava/lang/String;II)Lg/c;

    .line 7
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/l;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/l;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->writeUtf8CodePoint(I)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/l;->emitCompleteSegments()Lokio/BufferedSink;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
