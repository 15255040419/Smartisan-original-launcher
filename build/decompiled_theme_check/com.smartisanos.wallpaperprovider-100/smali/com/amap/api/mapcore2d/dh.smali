.class public Lcom/amap/api/mapcore2d/dh;
.super Ljava/lang/Object;
.source "ProxyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .line 185
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ProxyUtil"

    const-string v2, "getDefHost"

    .line 187
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 4

    const-string v0, "getProxy"

    const-string v1, "ProxyUtil"

    .line 31
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 32
    new-instance v2, Ljava/net/URI;

    const-string v3, "http://restapi.amap.com"

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {p0, v2}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;

    move-result-object p0

    goto :goto_1

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dh;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 42
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 39
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;
    .locals 2

    .line 203
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->m(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 205
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p0

    .line 208
    invoke-virtual {p0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 209
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 210
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/Proxy;

    if-eqz p0, :cond_1

    .line 211
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    const-string p1, "ProxyUtil"

    const-string v1, "getProxySelectorCfg"

    .line 219
    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b()I
    .locals 3

    .line 229
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ProxyUtil"

    const-string v2, "getDefPort"

    .line 231
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 17

    const-string v1, "wap"

    const-string v2, "ctwap"

    const-string v3, "10.0.0.200"

    const-string v4, "null"

    const-string v5, "getHostProxy2"

    const-string v6, "ProxyUtil"

    .line 51
    invoke-static/range {p0 .. p0}, Lcom/amap/api/mapcore2d/de;->m(Landroid/content/Context;)I

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_13

    const-string v0, "content://telephony/carriers/preferapn"

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x50

    const/4 v14, -0x1

    .line 56
    :try_start_0
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v8, :cond_8

    .line 57
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "apn"

    .line 58
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 59
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_4

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 64
    invoke-static {}, Lcom/amap/api/mapcore2d/dh;->a()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/amap/api/mapcore2d/dh;->b()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 67
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v7

    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_2

    move-object v0, v3

    :cond_2
    if-ne v9, v14, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v16, v9

    :goto_1
    move-object v1, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v7

    move/from16 v16, v9

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v10, v7

    goto/16 :goto_a

    :cond_4
    if-eqz v0, :cond_8

    .line 79
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 80
    invoke-static {}, Lcom/amap/api/mapcore2d/dh;->a()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/amap/api/mapcore2d/dh;->b()I

    move-result v9
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 84
    :try_start_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v10, :cond_5

    move-object v10, v0

    move v0, v15

    goto :goto_2

    :cond_5
    move-object v10, v7

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    :try_start_5
    const-string v0, "10.0.0.172"
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v16, v9

    move-object v1, v10

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_6
    move-object v0, v10

    :goto_3
    if-ne v9, v14, :cond_7

    goto :goto_1

    :cond_7
    move-object v1, v0

    move/from16 v16, v9

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v7

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v10, v7

    goto :goto_9

    :cond_8
    move-object v1, v7

    move/from16 v16, v14

    :goto_4
    if-eqz v8, :cond_9

    .line 140
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 143
    :goto_5
    invoke-static {v2, v6, v5}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_6
    move/from16 v0, v16

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    move-object v1, v7

    move-object v8, v1

    :goto_7
    move/from16 v16, v14

    :goto_8
    :try_start_7
    const-string v2, "getHostProxy1"

    .line 134
    invoke-static {v0, v6, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-eqz v8, :cond_9

    .line 140
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v8, v7

    move-object v10, v8

    :goto_9
    move v9, v14

    :goto_a
    :try_start_9
    const-string v11, "getHostProxy"

    .line 99
    invoke-static {v0, v6, v11}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static/range {p0 .. p0}, Lcom/amap/api/mapcore2d/de;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 102
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/amap/api/mapcore2d/dh;->a()Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-static {}, Lcom/amap/api/mapcore2d/dh;->b()I

    move-result v11

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v14, :cond_d

    .line 108
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 109
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    move-object v9, v10

    const/4 v15, 0x0

    :goto_b
    if-nez v15, :cond_b

    goto :goto_c

    :cond_b
    move-object v3, v9

    :goto_c
    if-ne v11, v14, :cond_c

    :goto_d
    move-object v1, v3

    goto :goto_10

    :cond_c
    move-object v1, v3

    goto :goto_f

    .line 120
    :cond_d
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v14, :cond_10

    .line 121
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 122
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-nez v0, :cond_e

    goto :goto_e

    :cond_e
    move-object v9, v10

    const/4 v15, 0x0

    :goto_e
    if-nez v15, :cond_f

    goto :goto_d

    :cond_f
    move-object v3, v9

    goto :goto_d

    :cond_10
    move-object v1, v10

    :goto_f
    move/from16 v16, v11

    goto :goto_10

    :cond_11
    move/from16 v16, v9

    move-object v1, v10

    :goto_10
    if-eqz v8, :cond_9

    .line 140
    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    goto/16 :goto_5

    .line 150
    :goto_11
    :try_start_b
    invoke-static {v1, v0}, Lcom/amap/api/mapcore2d/dh;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 151
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    return-object v2

    :catchall_7
    move-exception v0

    .line 156
    invoke-static {v0, v6, v5}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13

    :catchall_8
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_12

    .line 140
    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 143
    invoke-static {v2, v6, v5}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    :cond_12
    :goto_12
    throw v1

    :cond_13
    :goto_13
    return-object v7
.end method
