.class public Lcom/android/settingslib/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;,
        Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageMeasurement"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStats:Landroid/app/usage/StorageStatsManager;

.field private final mUser:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    .line 107
    iget-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mUser:Landroid/os/UserManager;

    .line 108
    iget-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    .line 110
    iput-object p2, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 111
    iput-object p3, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->measureExactStorage()Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2

    .line 232
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method private measureExactStorage()Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .locals 14

    const-string v0, "StorageMeasurement"

    .line 148
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mUser:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 152
    new-instance v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v4}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 153
    iget-object v5, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v5, :cond_0

    return-object v4

    .line 155
    :cond_0
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 157
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    return-object v4

    .line 162
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v6, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v6, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 163
    iget-object v5, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v6, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v6, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Measured total storage in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v5, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 175
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 176
    iget-object v9, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    :try_start_1
    iget-object v9, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v10, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    iget-object v10, v10, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    .line 181
    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 180
    invoke-virtual {v9, v10, v11}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    iget-object v10, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 190
    sget-object v10, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/usage/ExternalStorageStats;->getAudioBytes()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v10, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/usage/ExternalStorageStats;->getVideoBytes()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v10, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/usage/ExternalStorageStats;->getImageBytes()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v9}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v10

    invoke-virtual {v9}, Landroid/app/usage/ExternalStorageStats;->getAudioBytes()J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 195
    invoke-virtual {v9}, Landroid/app/usage/ExternalStorageStats;->getVideoBytes()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v9}, Landroid/app/usage/ExternalStorageStats;->getImageBytes()J

    move-result-wide v8

    sub-long/2addr v10, v8

    .line 196
    iget-object v8, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8, v7, v10, v11}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto :goto_0

    :catch_0
    move-exception v7

    .line 183
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 200
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Measured shared storage in "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v7, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v3, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 207
    :try_start_2
    iget-object v5, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v6, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v6, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/app/usage/StorageStatsManager;->queryStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-ne v6, v9, :cond_3

    .line 215
    iget-object v6, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v10

    invoke-static {v6, v9, v10, v11}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 218
    :cond_3
    iget-object v6, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v10

    invoke-static {v6, v9, v10, v11}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 219
    iget-object v6, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v9

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v6, v3, v9, v10}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 221
    iget-wide v9, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v5

    add-long/2addr v9, v5

    iput-wide v9, v4, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    goto :goto_1

    :catch_1
    move-exception v3

    .line 209
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 225
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Measured private storage in "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :catch_2
    move-exception p0

    .line 166
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method


# virtual methods
.method public forceMeasure()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->measure()V

    return-void
.end method

.method public measure()V
    .locals 2

    .line 125
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;-><init>(Lcom/android/settingslib/deviceinfo/StorageMeasurement;Lcom/android/settingslib/deviceinfo/StorageMeasurement$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setReceiver(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method
