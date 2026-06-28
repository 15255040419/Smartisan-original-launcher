.class public Lcom/amap/api/mapcore2d/db;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 31
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore2d/db;->d:Ljava/lang/String;

    return-object p0
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .line 145
    sput-object p0, Lcom/amap/api/mapcore2d/db;->d:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "getApplicationName"

    const-string v1, "AppInfo"

    :try_start_0
    const-string v2, ""

    .line 40
    sget-object v3, Lcom/amap/api/mapcore2d/db;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    sget-object p0, Lcom/amap/api/mapcore2d/db;->a:Ljava/lang/String;

    return-object p0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 46
    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/amap/api/mapcore2d/db;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 51
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore2d/db;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 61
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/db;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/mapcore2d/db;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    sget-object p0, Lcom/amap/api/mapcore2d/db;->b:Ljava/lang/String;

    return-object p0

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/db;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "AppInfo"

    const-string v1, "getPackageName"

    .line 67
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore2d/db;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "getApplicationVersion"

    const-string v1, "AppInfo"

    :try_start_0
    const-string v2, ""

    .line 80
    sget-object v3, Lcom/amap/api/mapcore2d/db;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    sget-object p0, Lcom/amap/api/mapcore2d/db;->c:Ljava/lang/String;

    return-object p0

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 86
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/amap/api/mapcore2d/db;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 93
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore2d/db;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, "getSHA1AndPackage"

    const-string v1, "AppInfo"

    .line 103
    :try_start_0
    sget-object v2, Lcom/amap/api/mapcore2d/db;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    sget-object v3, Lcom/amap/api/mapcore2d/db;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    sget-object p0, Lcom/amap/api/mapcore2d/db;->e:Ljava/lang/String;

    return-object p0

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x40

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 109
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    const-string v4, "SHA1"

    .line 110
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 111
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 112
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_2

    .line 114
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const-string v6, "0"

    .line 117
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ":"

    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/db;->e:Ljava/lang/String;

    .line 128
    sget-object p0, Lcom/amap/api/mapcore2d/db;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 137
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    .line 134
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 131
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_1
    sget-object p0, Lcom/amap/api/mapcore2d/db;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "getKey"

    const-string v1, "AppInfo"

    .line 166
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 170
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore2d/db;->d:Ljava/lang/String;

    return-object p0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/amap/api/mapcore2d/db;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 154
    sget-object p0, Lcom/amap/api/mapcore2d/db;->d:Ljava/lang/String;

    return-object p0

    .line 156
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.amap.api.v2.apikey"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/db;->d:Ljava/lang/String;

    .line 159
    :cond_2
    sget-object p0, Lcom/amap/api/mapcore2d/db;->d:Ljava/lang/String;

    return-object p0
.end method
