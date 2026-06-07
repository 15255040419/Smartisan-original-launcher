.class public abstract Lf/v;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/v$b;
    }
.end annotation


# instance fields
.field public a:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lf/n;JLokio/BufferedSource;)Lf/v;
    .locals 1

    if-eqz p3, :cond_0

    .line 5
    new-instance v0, Lf/v$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lf/v$a;-><init>(Lf/n;JLokio/BufferedSource;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lf/n;[B)Lf/v;
    .locals 3

    .line 3
    new-instance v0, Lg/c;

    invoke-direct {v0}, Lg/c;-><init>()V

    invoke-virtual {v0, p1}, Lg/c;->write([B)Lg/c;

    .line 4
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lf/v;->a(Lf/n;JLokio/BufferedSource;)Lf/v;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/io/Reader;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/v;->a:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lf/v$b;

    invoke-virtual {p0}, Lf/v;->e()Lokio/BufferedSource;

    move-result-object v1

    invoke-virtual {p0}, Lf/v;->b()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lf/v$b;-><init>(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lf/v;->a:Ljava/io/Reader;

    :goto_0
    return-object v0
.end method

.method public final b()Ljava/nio/charset/Charset;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/v;->d()Lf/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lf/z/c;->i:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lf/n;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lf/z/c;->i:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method

.method public abstract c()J
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/v;->e()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lf/z/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract d()Lf/n;
.end method

.method public abstract e()Lokio/BufferedSource;
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/v;->e()Lokio/BufferedSource;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lf/v;->b()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lf/z/c;->a(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Lf/z/c;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lf/z/c;->a(Ljava/io/Closeable;)V

    throw v1
.end method
