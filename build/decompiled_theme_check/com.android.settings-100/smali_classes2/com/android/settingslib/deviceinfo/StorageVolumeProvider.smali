.class public interface abstract Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;
.super Ljava/lang/Object;
.source "StorageVolumeProvider.java"


# virtual methods
.method public abstract findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
.end method

.method public abstract getFreeBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPrimaryStorageSize()J
.end method

.method public abstract getTotalBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getVolumes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method
