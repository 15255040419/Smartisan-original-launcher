.class public Lcom/android/settingslib/TetherUtil;
.super Ljava/lang/Object;
.source "TetherUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isEntitlementCheckRequired(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "carrier_config"

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "require_entitlement_checks_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 3

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "net.tethering.noprovisioning"

    .line 42
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isEntitlementCheckRequired(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 50
    :cond_1
    array-length p0, v0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
