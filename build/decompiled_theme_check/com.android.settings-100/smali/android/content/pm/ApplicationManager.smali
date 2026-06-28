.class public Landroid/content/pm/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ApplicationManager$PackageDeleteObserver;
    }
.end annotation


# static fields
.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ApplicationManager"

.field public static final UNINSTALL_COMPLETE:I = 0x2


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mObserverdelete:Landroid/content/pm/ApplicationManager$PackageDeleteObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUninstallmethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ApplicationManager;->mLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Landroid/content/pm/ApplicationManager$PackageDeleteObserver;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationManager$PackageDeleteObserver;-><init>(Landroid/content/pm/ApplicationManager;)V

    iput-object v0, p0, Landroid/content/pm/ApplicationManager;->mObserverdelete:Landroid/content/pm/ApplicationManager$PackageDeleteObserver;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 29
    iput-object p2, p0, Landroid/content/pm/ApplicationManager;->mHandler:Landroid/os/Handler;

    .line 30
    invoke-direct {p0}, Landroid/content/pm/ApplicationManager;->initUninstallMethod()V

    return-void
.end method

.method private initUninstallMethod()V
    .locals 4

    const-string v0, "ApplicationManager"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    .line 34
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/content/pm/IPackageDeleteObserver;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 39
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "deletePackage"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationManager;->mUninstallmethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendResultMessage(Ljava/lang/String;I)V
    .locals 2

    .line 77
    iget-object v0, p0, Landroid/content/pm/ApplicationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 78
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 79
    new-instance p2, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    iget-object p0, p0, Landroid/content/pm/ApplicationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public unInstallPackage(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 53
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationManager;->mUninstallmethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Landroid/content/pm/ApplicationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ApplicationManager;->mUninstallmethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    iget-object p0, p0, Landroid/content/pm/ApplicationManager;->mObserverdelete:Landroid/content/pm/ApplicationManager$PackageDeleteObserver;

    aput-object p0, v3, p1

    const/4 p0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "ApplicationManager"

    .line 62
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "ApplicationManager"

    .line 60
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p0

    const-string p1, "ApplicationManager"

    .line 58
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string p0, "ApplicationManager"

    const-string p1, "UninstallMethod is null"

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method
