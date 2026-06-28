.class public abstract Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractIpAddressPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"


# instance fields
.field private final mCM:Landroid/net/ConnectivityManager;

.field private mIpAddress:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 42
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 53
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->mCM:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 103
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wifi_ip_address"

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->mIpAddress:Landroidx/preference/Preference;

    .line 70
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->updateConnectivity()V

    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 0

    .line 75
    sget-object p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_ip_address"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected updateConnectivity()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->mIpAddress:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->mIpAddress:Landroidx/preference/Preference;

    sget v0, Lcom/android/settingslib/R$string;->status_unavailable:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
