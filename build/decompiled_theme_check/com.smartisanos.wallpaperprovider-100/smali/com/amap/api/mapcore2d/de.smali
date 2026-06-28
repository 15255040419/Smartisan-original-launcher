.class public Lcom/amap/api/mapcore2d/de;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/de$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Z = false

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 54
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    sput-object p0, Lcom/amap/api/mapcore2d/de;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 654
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v3, v0, v1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 658
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v4, v5, :cond_0

    .line 659
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 660
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-interface {p0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static a()V
    .locals 8

    const-string v0, "setTraficTag"

    const-string v1, "DeviceInfo"

    .line 119
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_0

    .line 120
    const-class v2, Landroid/net/TrafficStats;

    const-string v3, "setThreadStatsTag"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0xa004

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 137
    invoke-static {v2, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    .line 134
    invoke-static {v2, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 131
    invoke-static {v2, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    .line 128
    invoke-static {v2, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v2

    .line 125
    invoke-static {v2, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 39
    sput-boolean p0, Lcom/amap/api/mapcore2d/de;->b:Z

    return p0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method static synthetic b()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/amap/api/mapcore2d/de;->b:Z

    return v0
.end method

.method static c(Landroid/content/Context;)I
    .locals 0

    .line 76
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->x(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method static d(Landroid/content/Context;)I
    .locals 0

    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->v(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 107
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 172
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/de;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore2d/de;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    sget-object p0, Lcom/amap/api/mapcore2d/de;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mqBRboGZkQPcAkyk"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/de;->a:Ljava/lang/String;

    .line 181
    :cond_1
    sget-object p0, Lcom/amap/api/mapcore2d/de;->a:Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/amap/api/mapcore2d/de;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 182
    sget-object p0, Lcom/amap/api/mapcore2d/de;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :try_start_2
    const-string p0, "mounted"

    .line 193
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 195
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 201
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    .line 203
    new-instance v1, Lcom/amap/api/mapcore2d/de$a;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/de$a;-><init>()V

    .line 204
    invoke-virtual {p0, v0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 214
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 212
    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 218
    :cond_3
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore2d/de;->a:Ljava/lang/String;

    return-object p0
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 224
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "wifi"

    .line 229
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 231
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "DeviceInfo"

    const-string v2, "getWifiMacs"

    .line 237
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_4

    :try_start_0
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 245
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "wifi"

    .line 250
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 252
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 253
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 254
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 257
    :cond_1
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    move v2, v1

    .line 259
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    const/4 v4, 0x7

    if-ge v2, v4, :cond_5

    .line 260
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    const-string v5, ";"

    .line 264
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :goto_1
    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 247
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v1, "DeviceInfo"

    const-string v2, "getWifiMacs"

    .line 270
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 280
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/de;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/mapcore2d/de;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    sget-object p0, Lcom/amap/api/mapcore2d/de;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 283
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    sget-object p0, Lcom/amap/api/mapcore2d/de;->c:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "wifi"

    .line 286
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 289
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/de;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getDeviceMac"

    .line 291
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore2d/de;->c:Ljava/lang/String;

    return-object p0
.end method

.method static j(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8

    const-string v0, ""

    :try_start_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 299
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "phone"

    .line 303
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 305
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .line 306
    instance-of v1, p0, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "||"

    if-eqz v1, :cond_1

    .line 307
    :try_start_1
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 308
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 309
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0

    new-array v4, v4, [Ljava/lang/String;

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    const-string p0, "gsm"

    aput-object p0, v4, v2

    return-object v4

    .line 313
    :cond_1
    instance-of v1, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_3

    .line 314
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 315
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 316
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    .line 317
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    new-array v4, v4, [Ljava/lang/String;

    .line 322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    const-string p0, "cdma"

    aput-object p0, v4, v2

    return-object v4

    .line 301
    :cond_2
    :goto_0
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v1, "DeviceInfo"

    const-string v2, "cellInfo"

    .line 330
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_3
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 370
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "phone"

    .line 374
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 376
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    .line 377
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    return-object v0

    .line 381
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 383
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "DeviceInfo"

    const-string v2, "getMNC"

    .line 384
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static l(Landroid/content/Context;)I
    .locals 2

    .line 395
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->x(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getNetWorkType"

    .line 399
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static m(Landroid/content/Context;)I
    .locals 2

    .line 408
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->v(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getActiveNetWorkType"

    .line 411
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static n(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 422
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "connectivity"

    .line 425
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return-object v1

    .line 430
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 436
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->n(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "DeviceInfo"

    const-string v2, "getNetworkExtraInfo"

    .line 444
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 454
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/de;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/mapcore2d/de;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    sget-object p0, Lcom/amap/api/mapcore2d/de;->d:Ljava/lang/String;

    return-object p0

    .line 457
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 458
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 460
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 461
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 462
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "*"

    if-le v0, p0, :cond_1

    .line 463
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    sput-object p0, Lcom/amap/api/mapcore2d/de;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getReslution"

    .line 467
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :goto_2
    sget-object p0, Lcom/amap/api/mapcore2d/de;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 507
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/de;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore2d/de;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    sget-object p0, Lcom/amap/api/mapcore2d/de;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 510
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    sget-object p0, Lcom/amap/api/mapcore2d/de;->e:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "phone"

    .line 513
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 515
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/de;->e:Ljava/lang/String;

    .line 516
    sget-object p0, Lcom/amap/api/mapcore2d/de;->e:Ljava/lang/String;

    if-nez p0, :cond_2

    .line 517
    sput-object v1, Lcom/amap/api/mapcore2d/de;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getDeviceID"

    .line 520
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_2
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore2d/de;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 528
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getSubscriberId"

    .line 531
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 538
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getNetworkOperatorName"

    .line 540
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 553
    sget-object v0, Lcom/amap/api/mapcore2d/de;->f:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    sget-object p0, Lcom/amap/api/mapcore2d/de;->f:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 557
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    sget-object p0, Lcom/amap/api/mapcore2d/de;->f:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "phone"

    .line 560
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 562
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/de;->f:Ljava/lang/String;

    .line 563
    sget-object p0, Lcom/amap/api/mapcore2d/de;->f:Ljava/lang/String;

    if-nez p0, :cond_2

    .line 564
    sput-object v1, Lcom/amap/api/mapcore2d/de;->f:Ljava/lang/String;

    .line 566
    :cond_2
    sget-object p0, Lcom/amap/api/mapcore2d/de;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 572
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "phone"

    .line 575
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 577
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static v(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 606
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "connectivity"

    .line 610
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return v0

    .line 616
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 621
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 629
    invoke-static {p0}, Lcom/amap/api/mapcore2d/de;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 630
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 633
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static x(Landroid/content/Context;)I
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 640
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "phone"

    .line 643
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 645
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    return p0
.end method
