.class public Lb/d/a/b/j/c;
.super Ljava/io/FilterInputStream;
.source "FlushedInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 7

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, p1

    if-ltz v4, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v4, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    sub-long v5, p1, v2

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v4

    if-gez v4, :cond_1

    :goto_1
    return-wide v2

    :cond_1
    const-wide/16 v4, 0x1

    :cond_2
    add-long/2addr v2, v4

    goto :goto_0
.end method
