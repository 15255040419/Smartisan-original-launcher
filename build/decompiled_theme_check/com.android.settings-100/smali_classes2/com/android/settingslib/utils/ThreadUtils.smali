.class public Lcom/android/settingslib/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static volatile sMainThread:Ljava/lang/Thread;

.field private static volatile sMainThreadHandler:Landroid/os/Handler;

.field private static volatile sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureMainThread()V
    .locals 2

    .line 55
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUiThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 44
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 34
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThread:Ljava/lang/Thread;

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/utils/ThreadUtils;->sMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static postOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 64
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 67
    :cond_0
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
