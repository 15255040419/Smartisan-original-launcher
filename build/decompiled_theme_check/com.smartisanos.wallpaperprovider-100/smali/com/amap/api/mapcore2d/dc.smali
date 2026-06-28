.class public Lcom/amap/api/mapcore2d/dc;
.super Ljava/lang/Object;
.source "AuthManager.java"


# static fields
.field public static a:I = -0x1

.field public static b:Ljava/lang/String; = ""

.field private static c:Lcom/amap/api/mapcore2d/di; = null

.field private static d:Ljava/lang/String; = "http://apiinit.amap.com/v3/log/init"

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .line 135
    sget-object v0, Lcom/amap/api/mapcore2d/dc;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "resType"

    const-string v2, "json"

    .line 195
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "encode"

    const-string v2, "UTF-8"

    .line 196
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {}, Lcom/amap/api/mapcore2d/dd;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    .line 199
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key"

    .line 200
    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resType=json&encode=UTF-8&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v2}, Lcom/amap/api/mapcore2d/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "scode"

    .line 211
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Auth"

    const-string v2, "gParams"

    .line 214
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;)Z
    .locals 2

    const-class v0, Lcom/amap/api/mapcore2d/dc;

    monitor-enter v0

    const/4 v1, 0x0

    .line 118
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore2d/dc;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Z)Z
    .locals 6

    .line 33
    sput-object p1, Lcom/amap/api/mapcore2d/dc;->c:Lcom/amap/api/mapcore2d/di;

    const/4 p1, 0x1

    .line 39
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/dc;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    .line 41
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    .line 42
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    .line 43
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "User-Agent"

    .line 44
    sget-object v3, Lcom/amap/api/mapcore2d/dc;->c:Lcom/amap/api/mapcore2d/di;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/di;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X-INFO"

    .line 56
    sget-object v3, Lcom/amap/api/mapcore2d/dc;->c:Lcom/amap/api/mapcore2d/di;

    const/4 v4, 0x0

    invoke-static {p0, v3, v4, p2}, Lcom/amap/api/mapcore2d/dd;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "logversion"

    const-string v2, "2.1"

    .line 58
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "platinfo"

    const-string v2, "platform=Android&sdkversion=%s&product=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 60
    sget-object v5, Lcom/amap/api/mapcore2d/dc;->c:Lcom/amap/api/mapcore2d/di;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/di;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    sget-object v4, Lcom/amap/api/mapcore2d/dc;->c:Lcom/amap/api/mapcore2d/di;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/di;->c:Ljava/lang/String;

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/amap/api/mapcore2d/ex;->a()Lcom/amap/api/mapcore2d/ex;

    move-result-object p2

    .line 74
    new-instance v2, Lcom/amap/api/mapcore2d/dk;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/dk;-><init>()V

    .line 75
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/dk;->a(Ljava/net/Proxy;)V

    .line 76
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/dk;->a(Ljava/util/Map;)V

    .line 77
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dc;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 78
    invoke-virtual {v2, p0}, Lcom/amap/api/mapcore2d/dk;->b(Ljava/util/Map;)V

    .line 79
    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/dk;->a(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2, v2}, Lcom/amap/api/mapcore2d/ex;->a(Lcom/amap/api/mapcore2d/fb;)[B

    move-result-object p0

    .line 97
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dc;->a([B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p2, "Auth"

    const-string v0, "getAuth"

    .line 100
    invoke-static {p0, p2, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p1
.end method

.method private static a([B)Z
    .locals 8

    const-string v0, "info"

    const-string v1, "status"

    const-string v2, "lData"

    const-string v3, "Auth"

    const/4 v4, 0x1

    if-nez p0, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x0

    .line 145
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, p0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    .line 148
    :catch_1
    :try_start_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0}, Ljava/lang/String;-><init>([B)V

    .line 150
    :goto_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 154
    sput v4, Lcom/amap/api/mapcore2d/dc;->a:I

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 156
    sput v5, Lcom/amap/api/mapcore2d/dc;->a:I

    .line 159
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/dc;->b:Ljava/lang/String;

    .line 162
    :cond_3
    sget p0, Lcom/amap/api/mapcore2d/dc;->a:I

    if-nez p0, :cond_4

    const-string p0, "AuthFailure"

    .line 163
    sget-object v0, Lcom/amap/api/mapcore2d/dc;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_4
    sget p0, Lcom/amap/api/mapcore2d/dc;->a:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v4, :cond_5

    return v4

    :cond_5
    return v5

    .line 186
    :goto_2
    invoke-static {p0, v3, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 182
    :goto_3
    invoke-static {p0, v3, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return v5
.end method
