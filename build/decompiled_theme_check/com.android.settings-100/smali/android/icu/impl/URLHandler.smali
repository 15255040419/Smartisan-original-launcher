.class public abstract Landroid/icu/impl/URLHandler;
.super Ljava/lang/Object;
.source "URLHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/URLHandler$URLVisitor;,
        Landroid/icu/impl/URLHandler$JarURLHandler;,
        Landroid/icu/impl/URLHandler$FileURLHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final PROPNAME:Ljava/lang/String; = "urlhandler.props"

.field private static final handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "URLHandler"

    .line 37
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/URLHandler;->DEBUG:Z

    const/4 v0, 0x0

    .line 45
    :try_start_0
    const-class v1, Landroid/icu/impl/URLHandler;

    invoke-static {v1}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "urlhandler.props"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 49
    const-class v3, Ljava/net/URL;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 50
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x3d

    .line 59
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 62
    sget-boolean v2, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad urlhandler line: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "get"

    .line 71
    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v0, :cond_3

    .line 74
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    .line 77
    :cond_3
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 86
    :try_start_3
    sget-boolean v5, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 83
    sget-boolean v5, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 80
    sget-boolean v5, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 89
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_2
    if-eqz v0, :cond_6

    .line 96
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_6
    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v3, v0

    .line 92
    :goto_3
    :try_start_5
    sget-boolean v2, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v2, :cond_7

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_7
    if-eqz v3, :cond_8

    .line 96
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 102
    :catch_4
    :cond_8
    :goto_4
    sput-object v0, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    return-void

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_9

    .line 96
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 98
    :catch_5
    :cond_9
    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 32
    sget-boolean v0, Landroid/icu/impl/URLHandler;->DEBUG:Z

    return v0
.end method

.method public static get(Ljava/net/URL;)Landroid/icu/impl/URLHandler;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 112
    sget-object v2, Landroid/icu/impl/URLHandler;->handlers:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 113
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 117
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/URLHandler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    sget-boolean v1, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 127
    sget-boolean v1, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 124
    sget-boolean v1, Landroid/icu/impl/URLHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 135
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/icu/impl/URLHandler;->getDefault(Ljava/net/URL;)Landroid/icu/impl/URLHandler;

    move-result-object p0

    return-object p0
.end method

.method protected static getDefault(Ljava/net/URL;)Landroid/icu/impl/URLHandler;
    .locals 3

    .line 141
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "file"

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    new-instance v0, Landroid/icu/impl/URLHandler$FileURLHandler;

    invoke-direct {v0, p0}, Landroid/icu/impl/URLHandler$FileURLHandler;-><init>(Ljava/net/URL;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const-string v2, "jar"

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "wsjar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    :cond_1
    new-instance v0, Landroid/icu/impl/URLHandler$JarURLHandler;

    invoke-direct {v0, p0}, Landroid/icu/impl/URLHandler$JarURLHandler;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public guide(Landroid/icu/impl/URLHandler$URLVisitor;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/URLHandler;->guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V

    return-void
.end method

.method public abstract guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V
.end method
