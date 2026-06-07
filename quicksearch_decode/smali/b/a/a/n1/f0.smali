.class public Lb/a/a/n1/f0;
.super Ljava/lang/Object;
.source "SmartisanApi.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/IntentSmt;->get_EXTRA_SMARTISAN_ANIM_RESOURCE_ID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/n1/f0;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_THUMB_PUSH_DOWN()Ljava/lang/String;

    .line 3
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_DATA_USAGE_WARNING()Ljava/lang/String;

    .line 4
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_STATUS_BAR_BATTERY()Ljava/lang/String;

    .line 5
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_LAUNCHER_HIDE_BADGE()Ljava/lang/String;

    .line 6
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_LAUNCHER_HIDE_LABLE()Ljava/lang/String;

    .line 7
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_DISABLE_NOTIFICATION()Ljava/lang/String;

    .line 8
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_LAUNCHER_BADGE_SWIPE_CLEAN()Ljava/lang/String;

    .line 9
    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->getInstance()Lsmartisanos/api/PackageManagerSmt;

    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->get_ACTION_SM_PACKAGES_LOCKED()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/n1/f0;->b:Ljava/lang/String;

    .line 10
    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->getInstance()Lsmartisanos/api/PackageManagerSmt;

    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->get_ACTION_SM_PACKAGES_UNLOCKED()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/n1/f0;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->getInstance()Lsmartisanos/api/PackageManagerSmt;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Lsmartisanos/api/PackageManagerSmt;->isPackageAlreadyLocked(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 1

    .line 3
    invoke-static {}, Lsmartisanos/api/ConfigureRescourceSmt;->getInstance()Lsmartisanos/api/ConfigureRescourceSmt;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0, p1}, Lsmartisanos/api/ConfigureRescourceSmt;->isSameCustomTheme(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method
