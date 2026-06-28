.class public Lcom/android/settingslib/RestrictedLockUtils;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/RestrictedLockUtils$Proxy;,
        Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;,
        Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;
    }
.end annotation


# static fields
.field static sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 793
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    invoke-direct {v0}, Lcom/android/settingslib/RestrictedLockUtils$Proxy;-><init>()V

    sput-object v0, Lcom/android/settingslib/RestrictedLockUtils;->sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForLockSetting(Landroid/content/Context;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 8

    const-string v0, "device_policy"

    .line 472
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 477
    :cond_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 481
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    .line 482
    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 486
    :cond_2
    sget-object v4, Lcom/android/settingslib/RestrictedLockUtils;->sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 487
    invoke-virtual {v4, v2, v5}, Lcom/android/settingslib/RestrictedLockUtils$Proxy;->isSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v4

    .line 488
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    if-nez v4, :cond_5

    .line 490
    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2, v0, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_4

    .line 492
    new-instance v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 494
    :cond_4
    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    .line 503
    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 506
    sget-object v6, Lcom/android/settingslib/RestrictedLockUtils;->sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    invoke-virtual {v6, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils$Proxy;->getParentProfileInstance(Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    .line 507
    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2, v6, v5, v7}, Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v1, :cond_6

    .line 509
    new-instance v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 511
    :cond_6
    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    :cond_7
    return-object v1
.end method

.method public static checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 5

    const-string v0, "device_policy"

    .line 291
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 296
    :cond_0
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 299
    iget-object v4, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v4, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    .line 302
    :goto_0
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getManagedProfileId(Landroid/content/Context;I)I

    move-result p2

    .line 303
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 306
    iget-object v3, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    :cond_2
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 310
    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    :cond_3
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    if-nez v3, :cond_5

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "device_policy"

    .line 346
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.device_admin"

    .line 349
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_1

    goto :goto_2

    .line 353
    :cond_1
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v1

    .line 354
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 355
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    return-object v0

    .line 363
    :cond_4
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 225
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 227
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    const-string v0, "device_policy"

    .line 394
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_1

    .line 396
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object p0

    .line 400
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 5

    const-string v0, "device_policy"

    .line 238
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 243
    :cond_0
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 246
    iget-object v4, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v4, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    .line 249
    :goto_0
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getManagedProfileId(Landroid/content/Context;I)I

    move-result p2

    .line 250
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 253
    iget-object v3, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    :cond_2
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 257
    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    :cond_3
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    if-nez v3, :cond_5

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 146
    new-instance v0, Lcom/android/settingslib/-$$Lambda$RestrictedLockUtils$r6A4RGcQdg8eQ1PGvcQ0UANBzNk;

    invoke-direct {v0, p2, p1}, Lcom/android/settingslib/-$$Lambda$RestrictedLockUtils$r6A4RGcQdg8eQ1PGvcQ0UANBzNk;-><init>(II)V

    .line 153
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "device_policy"

    .line 155
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 156
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0, p2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->findEnforcedAdmin(Ljava/util/List;Landroid/app/admin/DevicePolicyManager;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0

    .line 158
    :cond_0
    invoke-static {p0, p2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkForLockSetting(Landroid/content/Context;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public static checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    .line 455
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sget-object v1, Lcom/android/settingslib/-$$Lambda$RestrictedLockUtils$sbYwAwFLTMW969YNG1W7ojc-r04;->INSTANCE:Lcom/android/settingslib/-$$Lambda$RestrictedLockUtils$sbYwAwFLTMW969YNG1W7ojc-r04;

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkForLockSetting(Landroid/content/Context;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public static checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 375
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "device_policy"

    .line 380
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 382
    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, v2, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 5

    .line 412
    sget-object v0, Lcom/android/settingslib/-$$Lambda$RestrictedLockUtils$ZGpdJ-Goya42TrXyPazgpDXw5os;->INSTANCE:Lcom/android/settingslib/-$$Lambda$RestrictedLockUtils$ZGpdJ-Goya42TrXyPazgpDXw5os;

    const-string v1, "device_policy"

    .line 417
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 423
    :cond_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 424
    sget-object v4, Lcom/android/settingslib/RestrictedLockUtils;->sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/settingslib/RestrictedLockUtils$Proxy;->isSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 427
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    .line 432
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 433
    invoke-interface {v0, v1, v3, p1}, Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_3

    .line 435
    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, v3, p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 437
    :cond_3
    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    :cond_4
    return-object v2

    .line 443
    :cond_5
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkForLockSetting(Landroid/content/Context;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public static checkIfRemoteContactSearchDisallowed(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    const-string v0, "device_policy"

    .line 272
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 277
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 281
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 282
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 5

    const-string v0, "device_policy"

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 86
    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 88
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/UserManager;->getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 93
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 94
    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->createDefaultEnforcedAdminWithRestriction(Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x0

    .line 97
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v4}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v4

    .line 98
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v2}, Landroid/os/UserManager$EnforcingUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x4

    if-ne v4, v3, :cond_5

    if-ne v2, p2, :cond_3

    .line 102
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0

    .line 106
    :cond_3
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 107
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, p2, :cond_4

    .line 108
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_4
    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->createDefaultEnforcedAdminWithRestriction(Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_5
    const/4 v0, 0x2

    if-ne v4, v0, :cond_7

    if-ne v2, p2, :cond_6

    .line 115
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    goto :goto_1

    .line 116
    :cond_6
    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->createDefaultEnforcedAdminWithRestriction(Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_7
    return-object v1
.end method

.method public static checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    const-string v0, "no_control_apps"

    .line 196
    invoke-static {p0, v0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "no_uninstall_apps"

    .line 201
    invoke-static {p0, v0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 206
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 208
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 209
    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findEnforcedAdmin(Ljava/util/List;Landroid/app/admin/DevicePolicyManager;ILcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            "I",
            "Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;",
            ")",
            "Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 182
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 183
    invoke-interface {p3, p1, v1, p2}, Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;->isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 185
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v0, v1, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 187
    :cond_2
    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    const/4 v0, 0x0

    .line 548
    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method private static getDeviceOwner(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    const-string v0, "device_policy"

    .line 552
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 557
    :cond_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 559
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 560
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result p0

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method private static getManagedProfileId(Landroid/content/Context;I)I
    .locals 2

    const-string v0, "user"

    .line 320
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 321
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 322
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 323
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_2
    const/16 p0, -0x2710

    return p0
.end method

.method public static getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    const/4 v0, 0x0

    .line 521
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public static getProfileOrDeviceOwner(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p2, v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "device_policy"

    .line 529
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_1

    return-object v0

    .line 534
    :cond_1
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 536
    new-instance p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;I)V

    return-object p0

    .line 538
    :cond_2
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v1

    if-ne v1, p2, :cond_3

    .line 539
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 541
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;I)V

    :cond_3
    return-object v0
.end method

.method private static getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    const/4 v0, 0x0

    .line 566
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method private static getProfileOwner(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p2, v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "device_policy"

    .line 574
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_1

    return-object v0

    .line 579
    :cond_1
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 581
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method public static getRestrictedPadlock(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 60
    sget v0, Lcom/android/settingslib/R$drawable;->ic_info:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settingslib/R$dimen;->restricted_icon_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method

.method public static getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;
    .locals 3

    .line 649
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 651
    iget-object v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 654
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 655
    iget v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 656
    iget v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    :cond_1
    const-string p1, "android.intent.extra.USER_ID"

    .line 658
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    return-object p0
.end method

.method public static hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "user"

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 126
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2

    const-string v0, "device_policy"

    .line 674
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 676
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 677
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 678
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isCurrentUserOrProfile(Landroid/content/Context;I)Z
    .locals 1

    .line 664
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 665
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 666
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$checkIfKeyguardFeaturesDisabled$0(IILandroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 0

    .line 147
    invoke-virtual {p2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p2

    if-eq p4, p0, :cond_0

    and-int/lit16 p2, p2, 0x1b0

    :cond_0
    and-int p0, p2, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$checkIfMaximumTimeToLockIsSet$2(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 2

    .line 457
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$checkIfPasswordQualityIsSet$1(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 0

    .line 414
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V
    .locals 8

    .line 619
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 620
    const-class v2, Lcom/android/settingslib/RestrictedLockImageSpan;

    invoke-virtual {p0, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/settingslib/RestrictedLockImageSpan;

    .line 622
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 623
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 624
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 625
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 626
    invoke-virtual {p0, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 628
    :cond_0
    const-class v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 629
    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 630
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4

    .line 638
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v0

    .line 639
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz p1, :cond_0

    .line 640
    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 641
    invoke-static {p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    iget v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 644
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    const-string v2, "android.app.extra.RESTRICTION"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 5

    .line 595
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 596
    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V

    if-eqz p2, :cond_0

    .line 599
    sget v1, Lcom/android/settingslib/R$color;->disabled_text_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 600
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 602
    new-instance v1, Lcom/android/settingslib/RestrictedLockImageSpan;

    invoke-direct {v1, p0}, Lcom/android/settingslib/RestrictedLockImageSpan;-><init>(Landroid/content/Context;)V

    const-string v2, " "

    .line 603
    invoke-virtual {v0, v2, v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 605
    new-instance v1, Lcom/android/settingslib/RestrictedLockUtils$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settingslib/RestrictedLockUtils$1;-><init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 613
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 615
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public static setTextViewAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 5

    .line 703
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 704
    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 706
    sget p2, Lcom/android/settingslib/R$color;->disabled_text_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 707
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, p2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 709
    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtils;->getRestrictedPadlock(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, v1, v1, p2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 710
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settingslib/R$dimen;->restricted_icon_padding:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 713
    :cond_0
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 715
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setTextViewPadlock(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 2

    .line 687
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 688
    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->removeExistingRestrictedSpans(Landroid/text/SpannableStringBuilder;)V

    if-eqz p2, :cond_0

    .line 690
    new-instance p2, Lcom/android/settingslib/RestrictedLockImageSpan;

    invoke-direct {p2, p0}, Lcom/android/settingslib/RestrictedLockImageSpan;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x21

    const-string v1, " "

    .line 691
    invoke-virtual {v0, v1, p2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 693
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
