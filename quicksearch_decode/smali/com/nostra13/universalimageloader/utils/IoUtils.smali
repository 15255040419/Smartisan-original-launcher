.class public final Lcom/nostra13/universalimageloader/utils/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 0

    .line 14
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 4

    const v0, 0x8000

    new-array v1, v0, [B

    :cond_0
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 12
    throw v0

    .line 13
    :catch_0
    :goto_0
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, p1, p2}, Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;->onBytesCopied(II)Z

    move-result p0

    if-nez p0, :cond_0

    mul-int/lit8 p1, p1, 0x64

    .line 9
    div-int/2addr p1, p2

    const/16 p0, 0x4b

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 2
    new-array v1, p3, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {p2, v2, v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    move v3, v2

    .line 4
    :cond_1
    invoke-virtual {p0, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_2
    invoke-virtual {p1, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v3, v4

    .line 7
    invoke-static {p2, v3, v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2
.end method
