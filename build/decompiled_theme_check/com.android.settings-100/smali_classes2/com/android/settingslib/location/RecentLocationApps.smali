.class public Lcom/android/settingslib/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationApps$Request;
    }
.end annotation


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field static final LOCATION_OPS:[I

.field private static final RECENT_TIME_INTERVAL_MILLIS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 50
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 62
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    return-void
.end method

.method private getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;
    .locals 15

    move-object v0, p0

    const-string v1, ", userId "

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    const-wide/32 v3, 0x5265c00

    sub-long v3, p1, v3

    .line 131
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-wide v9, v6

    move v7, v5

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 132
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    const/4 v11, 0x1

    if-nez v8, :cond_1

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v13

    cmp-long v8, v13, v3

    if-ltz v8, :cond_0

    .line 133
    :cond_1
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v10

    int-to-long v13, v10

    add-long v9, v8, v13

    .line 134
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    const/16 v8, 0x29

    if-eq v6, v8, :cond_3

    const/16 v8, 0x2a

    if-eq v6, v8, :cond_2

    goto :goto_0

    :cond_2
    move v7, v11

    goto :goto_0

    :cond_3
    move v5, v11

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    if-nez v7, :cond_6

    if-nez v5, :cond_6

    .line 148
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hadn\'t used location within the time interval."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v13

    .line 155
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    .line 156
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 160
    :try_start_0
    iget-object v2, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v12, v3, v14}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_7

    .line 163
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null application info retrieved for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    .line 168
    :cond_7
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 169
    iget-object v3, v0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v3, v2, v14}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 170
    iget-object v3, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 171
    iget-object v0, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v8, v13

    goto :goto_1

    :cond_8
    move-object v8, v0

    .line 177
    :goto_1
    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps$Request;

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, v12

    invoke-direct/range {v2 .. v11}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;JLcom/android/settingslib/location/RecentLocationApps$1;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    goto :goto_2

    .line 180
    :catch_0
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package name not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v13
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 73
    sget-object v1, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_OPS:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 78
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 80
    iget-object v6, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 81
    invoke-virtual {v6}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    move v7, v1

    :goto_1
    if-ge v7, v2, :cond_4

    .line 84
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    .line 87
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    .line 89
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v10, v12, :cond_1

    const-string v10, "android"

    .line 91
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    move v9, v1

    :goto_2
    if-nez v9, :cond_3

    .line 92
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_3

    .line 95
    :cond_2
    invoke-direct {p0, v4, v5, v8}, Lcom/android/settingslib/location/RecentLocationApps;->getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 97
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method public getAppListSorted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/android/settingslib/location/RecentLocationApps$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/location/RecentLocationApps$1;-><init>(Lcom/android/settingslib/location/RecentLocationApps;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
