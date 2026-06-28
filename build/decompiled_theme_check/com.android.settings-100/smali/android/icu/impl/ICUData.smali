.class public final Landroid/icu/impl/ICUData;
.super Ljava/lang/Object;
.source "ICUData.java"


# static fields
.field public static final ICU_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt60b"

.field public static final ICU_BRKITR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt60b/brkitr"

.field public static final ICU_BRKITR_NAME:Ljava/lang/String; = "brkitr"

.field public static final ICU_BUNDLE:Ljava/lang/String; = "data/icudt60b"

.field public static final ICU_COLLATION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt60b/coll"

.field public static final ICU_CURR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt60b/curr"

.field static final ICU_DATA_PATH:Ljava/lang/String; = "android/icu/impl/"

.field public static final ICU_LANG_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt60b/lang"

.field public static final ICU_RBNF_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt60b/rbnf"

.field public static final ICU_REGION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt60b/region"

.field public static final ICU_TRANSLIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt60b/translit"

.field public static final ICU_UNIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt60b/unit"

.field public static final ICU_ZONE_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt60b/zone"

.field static final PACKAGE_NAME:Ljava/lang/String; = "icudt60b"

.field private static final logBinaryDataFromInputStream:Z = false

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    .line 96
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Landroid/icu/impl/ICUData$1;

    invoke-direct {v0, p0}, Landroid/icu/impl/ICUData$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URL;

    goto :goto_0

    .line 104
    :cond_0
    const-class v0, Landroid/icu/impl/ICUData;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 210
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getRequiredStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 194
    const-class v0, Landroid/icu/impl/ICUData;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 111
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Landroid/icu/impl/ICUData$2;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/ICUData$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not locate data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 125
    :cond_2
    :goto_1
    invoke-static {v0, p1}, Landroid/icu/impl/ICUData;->checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 1

    .line 134
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Landroid/icu/impl/ICUData$3;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/ICUData$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    new-instance p2, Ljava/util/MissingResourceException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "could not locate data"

    invoke-direct {p2, v0, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 147
    :cond_2
    :goto_1
    invoke-static {v0, p1}, Landroid/icu/impl/ICUData;->checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 186
    const-class v0, Landroid/icu/impl/ICUData;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
