.class public Landroid/icu/impl/ClassLoaderUtil;
.super Ljava/lang/Object;
.source "ClassLoaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;
    }
.end annotation


# static fields
.field private static volatile BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBootstrapClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 53
    sget-object v0, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    if-nez v0, :cond_2

    .line 54
    const-class v0, Landroid/icu/impl/ClassLoaderUtil;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    if-nez v1, :cond_1

    .line 57
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Landroid/icu/impl/ClassLoaderUtil$1;

    invoke-direct {v1}, Landroid/icu/impl/ClassLoaderUtil$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    invoke-direct {v1}, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;-><init>()V

    .line 67
    :goto_0
    sput-object v1, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    .line 69
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_2
    :goto_1
    sget-object v0, Landroid/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getBootstrapClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-nez p0, :cond_0

    .line 83
    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :cond_0
    return-object p0
.end method
