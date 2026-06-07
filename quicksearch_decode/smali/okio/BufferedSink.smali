.class public interface abstract Lokio/BufferedSink;
.super Ljava/lang/Object;
.source "BufferedSink.java"

# interfaces
.implements Lokio/Sink;
.implements Ljava/nio/channels/WritableByteChannel;


# virtual methods
.method public abstract buffer()Lg/c;
.end method

.method public abstract emit()Lokio/BufferedSink;
.end method

.method public abstract emitCompleteSegments()Lokio/BufferedSink;
.end method

.method public abstract flush()V
.end method

.method public abstract outputStream()Ljava/io/OutputStream;
.end method

.method public abstract write(Lg/d;)Lokio/BufferedSink;
.end method

.method public abstract write(Lokio/Source;J)Lokio/BufferedSink;
.end method

.method public abstract write([B)Lokio/BufferedSink;
.end method

.method public abstract write([BII)Lokio/BufferedSink;
.end method

.method public abstract writeAll(Lokio/Source;)J
.end method

.method public abstract writeByte(I)Lokio/BufferedSink;
.end method

.method public abstract writeDecimalLong(J)Lokio/BufferedSink;
.end method

.method public abstract writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
.end method

.method public abstract writeInt(I)Lokio/BufferedSink;
.end method

.method public abstract writeIntLe(I)Lokio/BufferedSink;
.end method

.method public abstract writeLong(J)Lokio/BufferedSink;
.end method

.method public abstract writeLongLe(J)Lokio/BufferedSink;
.end method

.method public abstract writeShort(I)Lokio/BufferedSink;
.end method

.method public abstract writeShortLe(I)Lokio/BufferedSink;
.end method

.method public abstract writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
.end method

.method public abstract writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
.end method

.method public abstract writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
.end method

.method public abstract writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
.end method

.method public abstract writeUtf8CodePoint(I)Lokio/BufferedSink;
.end method
