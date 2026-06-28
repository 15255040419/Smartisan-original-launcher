.class public Lcom/amap/api/mapcore2d/dg;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dg;->c(Ljava/lang/String;)[B

    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dj;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dg;->b([B)[B

    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dj;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 1

    const-string v0, "MD5"

    .line 83
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 84
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 85
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string p1, "getMd5Bytes1"

    .line 90
    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "getMd5Bytes"

    .line 88
    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dg;->d(Ljava/lang/String;)[B

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dj;->d([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b([B)[B
    .locals 1

    const-string v0, "MD5"

    .line 97
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/dg;->a([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 2

    const-string v0, "getMd5Bytes"

    const-string v1, "MD5"

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dg;->e(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 110
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 105
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 0

    .line 117
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dg;->e(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private static e(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "MD5"

    .line 139
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 141
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method
