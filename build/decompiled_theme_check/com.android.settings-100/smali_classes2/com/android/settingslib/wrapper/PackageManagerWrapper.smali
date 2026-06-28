.class public Lcom/android/settingslib/wrapper/PackageManagerWrapper;
.super Ljava/lang/Object;
.source "PackageManagerWrapper.java"


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    return-void
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 236
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    return p0
.end method

.method public getInstalledApplicationsAsUser(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackagesAsUser(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public getPackageUidAsUser(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 207
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUserBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 166
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p1}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 167
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 166
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
