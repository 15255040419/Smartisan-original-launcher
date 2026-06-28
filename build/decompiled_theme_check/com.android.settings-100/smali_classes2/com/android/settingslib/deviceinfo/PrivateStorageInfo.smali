.class public Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
.super Ljava/lang/Object;
.source "PrivateStorageInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivateStorageInfo"


# instance fields
.field public final freeBytes:J

.field public final totalBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    .line 38
    iput-wide p3, p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    return-void
.end method

.method public static getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 9

    .line 42
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 43
    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 47
    invoke-interface {p0}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 48
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 50
    :try_start_0
    invoke-interface {p0, v0, v6}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getTotalBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v7

    add-long/2addr v4, v7

    .line 51
    invoke-interface {p0, v0, v6}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getFreeBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v6

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "PrivateStorageInfo"

    .line 53
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    :cond_1
    new-instance p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object p0
.end method

.method public static getTotalSize(Landroid/os/storage/VolumeInfo;J)J
    .locals 0

    .line 61
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    .line 62
    const-class p2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "PrivateStorageInfo"

    .line 66
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method
