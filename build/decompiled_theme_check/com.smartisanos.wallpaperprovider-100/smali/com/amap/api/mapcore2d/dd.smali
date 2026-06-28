.class public Lcom/amap/api/mapcore2d/dd;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 690
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 692
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "CInfo"

    const-string v3, "getTS"

    .line 697
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;)Ljava/lang/String;
    .locals 3

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"sim\":\""

    .line 521
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"sdkversion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/amap/api/mapcore2d/di;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"product\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/amap/api/mapcore2d/di;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"ed\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/di;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"nt\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->c(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"np\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"mnc\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"ant\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->d(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 542
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 545
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore2d/di;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, ""

    .line 70
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 80
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 87
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 91
    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {p2, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 101
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 107
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 113
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 120
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 125
    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {p2, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 134
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 139
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 146
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 152
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 157
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 162
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 166
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 171
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 176
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 185
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 187
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/amap/api/mapcore2d/dj;->a([B)[B

    move-result-object p1

    .line 194
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dj;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object p0

    .line 196
    array-length p2, p1

    const/16 v0, 0x75

    if-le p2, v0, :cond_0

    new-array p2, v0, [B

    const/4 v1, 0x0

    .line 199
    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    invoke-static {p2, p0}, Lcom/amap/api/mapcore2d/df;->a([BLjava/security/Key;)[B

    move-result-object p0

    .line 204
    array-length p2, p1

    const/16 v2, 0x80

    add-int/2addr p2, v2

    sub-int/2addr p2, v0

    new-array p2, p2, [B

    .line 206
    invoke-static {p0, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    array-length p0, p1

    sub-int/2addr p0, v0

    invoke-static {p1, v0, p2, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/df;->a([BLjava/security/Key;)[B

    move-result-object p2

    .line 215
    :goto_0
    invoke-static {p2}, Lcom/amap/api/mapcore2d/df;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "CInfo"

    const-string p2, "InitXInfo"

    .line 222
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore2d/di;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 240
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 241
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 249
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 250
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 253
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    .line 260
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 264
    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 272
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 274
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 278
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 280
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 284
    sget-object p2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 286
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 293
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 298
    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 300
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 305
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 307
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 309
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 312
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 317
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 319
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->m(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 327
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->l(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 333
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 335
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 339
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 342
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 343
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 348
    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    .line 356
    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 359
    :cond_2
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    :goto_1
    const/4 p2, 0x0

    if-eqz p3, :cond_3

    .line 368
    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 370
    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 374
    :cond_3
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p3

    .line 376
    aget-object v0, p3, p2

    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 378
    aget-object p3, p3, v0

    invoke-static {p1, p3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 380
    :goto_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 382
    invoke-static {p1}, Lcom/amap/api/mapcore2d/dj;->a([B)[B

    move-result-object p1

    .line 385
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dj;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object p0

    .line 387
    array-length p3, p1

    const/16 v0, 0x75

    if-le p3, v0, :cond_4

    new-array p3, v0, [B

    .line 390
    invoke-static {p1, p2, p3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    invoke-static {p3, p0}, Lcom/amap/api/mapcore2d/df;->a([BLjava/security/Key;)[B

    move-result-object p0

    .line 395
    array-length p3, p1

    const/16 v1, 0x80

    add-int/2addr p3, v1

    sub-int/2addr p3, v0

    new-array p3, p3, [B

    .line 397
    invoke-static {p0, p2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    array-length p0, p1

    sub-int/2addr p0, v0

    invoke-static {p1, v0, p3, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 404
    :cond_4
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/df;->a([BLjava/security/Key;)[B

    move-result-object p3

    .line 406
    :goto_3
    invoke-static {p3}, Lcom/amap/api/mapcore2d/df;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "CInfo"

    const-string p2, "InitXInfo"

    .line 413
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ":"

    .line 705
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/dg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "CInfo"

    const-string p2, "Scode"

    .line 713
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static a(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "AES"

    .line 424
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0x100

    .line 432
    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 433
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 434
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 442
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dj;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 451
    :cond_1
    invoke-static {v0, p0}, Lcom/amap/api/mapcore2d/df;->a([BLjava/security/Key;)[B

    move-result-object p0

    .line 453
    invoke-static {v0, p1}, Lcom/amap/api/mapcore2d/df;->a([B[B)[B

    move-result-object p1

    .line 455
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 457
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    invoke-static {v0}, Lcom/amap/api/mapcore2d/dj;->a([B)[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 466
    invoke-static {p0}, Lcom/amap/api/mapcore2d/df;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;B[B)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 673
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-lez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v3, 0xff

    and-int/2addr p1, v3

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 675
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    :cond_2
    if-ne p1, v3, :cond_3

    .line 677
    invoke-virtual {p0, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "CInfo"

    const-string p2, "writeField"

    .line 680
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    .line 648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    :goto_0
    :try_start_0
    const-string v1, "UTF-8"

    .line 659
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 661
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    new-array v0, p1, [B

    .line 665
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    :goto_1
    return-void
.end method

.method public static b(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 2

    const-string v0, "AESData"

    const-string v1, "CInfo"

    .line 485
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/dd;->a(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 512
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 509
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 506
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 503
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 500
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 497
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_5
    move-exception p0

    .line 494
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_6
    move-exception p0

    .line 491
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_7
    move-exception p0

    .line 488
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, ""

    return-object p0
.end method
