.class public interface abstract Lokhttp3/internal/http/HttpCodec;
.super Ljava/lang/Object;
.source "HttpCodec.java"


# static fields
.field public static final DISCARD_STREAM_TIMEOUT_MILLIS:I = 0x64


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract createRequestBody(Lf/s;J)Lokio/Sink;
.end method

.method public abstract finishRequest()V
.end method

.method public abstract flushRequest()V
.end method

.method public abstract openResponseBody(Lf/u;)Lf/v;
.end method

.method public abstract readResponseHeaders(Z)Lf/u$a;
.end method

.method public abstract writeRequestHeaders(Lf/s;)V
.end method
