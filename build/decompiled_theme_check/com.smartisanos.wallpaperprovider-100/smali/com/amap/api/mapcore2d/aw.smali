.class Lcom/amap/api/mapcore2d/aw;
.super Lcom/amap/api/mapcore2d/fb;
.source "ManifestManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fb;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amap/api/mapcore2d/aw;->a:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/amap/api/mapcore2d/db;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/aw;->e:Ljava/lang/String;

    return-void
.end method

.method private a([B)Lcom/amap/api/mapcore2d/ax;
    .locals 5

    const-string v0, "ManifestManager"

    const-string v1, "loadData"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 73
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 74
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    .line 75
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    .line 76
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    :cond_1
    const-string v4, "1"

    .line 79
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "result"

    .line 80
    invoke-direct {p0, p1, v3}, Lcom/amap/api/mapcore2d/aw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "exception"

    .line 82
    invoke-direct {p0, p1, v3}, Lcom/amap/api/mapcore2d/aw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "exceptinfo"

    .line 84
    invoke-direct {p0, v3, v4}, Lcom/amap/api/mapcore2d/aw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ex_isupload"

    .line 86
    invoke-direct {p0, v3, v4}, Lcom/amap/api/mapcore2d/aw;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore2d/aw;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "common"

    .line 89
    invoke-direct {p0, p1, v4}, Lcom/amap/api/mapcore2d/aw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "commoninfo"

    .line 91
    invoke-direct {p0, p1, v4}, Lcom/amap/api/mapcore2d/aw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "com_isupload"

    .line 93
    invoke-direct {p0, p1, v4}, Lcom/amap/api/mapcore2d/aw;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/aw;->a(Ljava/lang/String;)Z

    move-result p0

    .line 96
    new-instance p1, Lcom/amap/api/mapcore2d/ax;

    invoke-direct {p1, p0, v3}, Lcom/amap/api/mapcore2d/ax;-><init>(ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 101
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 99
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v2
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string v0, "1"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore2d/ax;
    .locals 2

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-static {v0}, Lcom/amap/api/mapcore2d/fa;->a(Z)Lcom/amap/api/mapcore2d/fa;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aw;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/aw;->a(Ljava/net/Proxy;)V

    .line 33
    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/fa;->a(Lcom/amap/api/mapcore2d/fb;)[B

    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/aw;->a([B)Lcom/amap/api/mapcore2d/ax;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "feachManifest"

    const-string v1, "ManifestManager"

    .line 36
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "User-Agent"

    const-string v1, "AMAP_SDK_Android_2DMap_2.8.0"

    .line 110
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "2.8.0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2dmap"

    aput-object v2, v0, v1

    const-string v1, "platform=Android&sdkversion=%s&product=%s"

    .line 111
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "platinfo"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "logversion"

    const-string v1, "2.0"

    .line 112
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public c()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aw;->e:Ljava/lang/String;

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "opertype"

    const-string v2, "common;exception"

    .line 121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plattype"

    const-string v2, "android"

    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2dmap"

    const-string v2, "product"

    .line 123
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "2.8.0"

    const-string v3, "version"

    .line 124
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ext"

    const-string v4, "standard"

    .line 125
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "output"

    const-string v4, "json"

    .line 126
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "key="

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/aw;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&opertype=common;exception"

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&plattype=android"

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&product="

    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&version="

    .line 133
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&ext=standard"

    .line 134
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&output=json"

    .line 135
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/amap/api/mapcore2d/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {}, Lcom/amap/api/mapcore2d/dd;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ts"

    .line 139
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object p0, p0, Lcom/amap/api/mapcore2d/aw;->a:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/amap/api/mapcore2d/dd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "scode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "http://restapi.amap.com/v3/config/resource"

    return-object p0
.end method
