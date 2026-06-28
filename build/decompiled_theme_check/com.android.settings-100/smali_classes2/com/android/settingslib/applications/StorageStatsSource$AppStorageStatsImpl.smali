.class public Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;
.super Ljava/lang/Object;
.source "StorageStatsSource.java"

# interfaces
.implements Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/StorageStatsSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppStorageStatsImpl"
.end annotation


# instance fields
.field private mStats:Landroid/app/usage/StorageStats;


# direct methods
.method public constructor <init>(Landroid/app/usage/StorageStats;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    return-void
.end method


# virtual methods
.method public getCacheBytes()J
    .locals 2

    .line 130
    iget-object p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCodeBytes()J
    .locals 2

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataBytes()J
    .locals 2

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
