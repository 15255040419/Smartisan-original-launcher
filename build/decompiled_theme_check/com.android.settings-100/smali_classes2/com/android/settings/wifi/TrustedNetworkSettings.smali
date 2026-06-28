.class public Lcom/android/settings/wifi/TrustedNetworkSettings;
.super Landroid/app/Fragment;
.source "TrustedNetworkSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PREF_SHOW_TRUSTED_NETWORK_SETTINGS:Ljava/lang/String; = "show_trusted_network_settings"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessPointName:Landroid/widget/TextView;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mDescription:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNoNotify:Landroid/view/View;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSet:Lcom/android/settings/widget/SettingItemButton;

.field private mUnset:Lcom/android/settings/widget/SettingItemButton;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/android/settings/wifi/TrustedNetworkSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/TrustedNetworkSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 122
    new-instance v0, Lcom/android/settings/wifi/TrustedNetworkSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/TrustedNetworkSettings$2;-><init>(Lcom/android/settings/wifi/TrustedNetworkSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->wifiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/TrustedNetworkSettings;Landroid/content/Intent;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkSettings;->handleWifiEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public static gotoSetTrustedNetworkIfNeeded(Landroid/app/Activity;)V
    .locals 3

    .line 185
    invoke-static {p0}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object v0

    const-string v1, "show_trusted_network_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/PreferenceMgr;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    invoke-static {p0}, Lcom/android/settings/Utils;->isUseStrictLockScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->isCurrentApCanBeTrusted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    .line 189
    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private handleWifiEvent(Landroid/content/Intent;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "networkInfo"

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->initCurrentWifiConfig()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->setupUI()V

    goto :goto_0

    .line 139
    :cond_0
    sget-object p1, Lcom/android/settings/wifi/TrustedNetworkSettings;->TAG:Ljava/lang/String;

    const-string v0, "wifi disconnected, finish"

    invoke-static {p1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initCurrentWifiConfig()V
    .locals 4

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v0, 0x0

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 95
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v1, :cond_0

    .line 96
    iput-object v2, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_1
    return-void
.end method

.method private initFilter()V
    .locals 1

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 119
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private static isCurrentApCanBeTrusted(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "wifi"

    .line 194
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 200
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v1, v0

    .line 202
    :goto_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p0

    .line 205
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 206
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p0, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 212
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsmartisanos/api/WifiConfigurationSmt;->get_isTrustedAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 213
    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private setTrusted(Z)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 105
    sget-object p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->TAG:Ljava/lang/String;

    const-string p1, "invalid network , failed to set trusted"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 110
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, p1}, Lsmartisanos/api/WifiConfigurationSmt;->set_isTrustedAp(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.wifi.TRUST_AP_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setupUI()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mAccessPointName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f121551

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mSet:Lcom/android/settings/widget/SettingItemButton;

    const v2, 0x7f12155d

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingItemButton;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mUnset:Lcom/android/settings/widget/SettingItemButton;

    const v2, 0x7f121561

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SettingItemButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mSet:Lcom/android/settings/widget/SettingItemButton;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 219
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkSettings;->setTrusted(Z)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mUnset:Lcom/android/settings/widget/SettingItemButton;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 221
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/TrustedNetworkSettings;->setTrusted(Z)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mNoNotify:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object p1

    const-string v0, "show_trusted_network_settings"

    .line 224
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/PreferenceMgr;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lcom/android/settings/wifi/TrustedNetworkSettings;->TAG:Ljava/lang/String;

    const-string v0, "current is not wifi network, finish"

    invoke-static {p1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->initFilter()V

    .line 67
    new-instance p1, Lcom/android/settings/wifi/TrustedNetworkSettings$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/TrustedNetworkSettings$1;-><init>(Lcom/android/settings/wifi/TrustedNetworkSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0318

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0010

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mAccessPointName:Landroid/widget/TextView;

    const p2, 0x7f0a0234

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mDescription:Landroid/widget/TextView;

    const p2, 0x7f0a014f

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/SettingItemButton;

    iput-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mSet:Lcom/android/settings/widget/SettingItemButton;

    .line 151
    iget-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mSet:Lcom/android/settings/widget/SettingItemButton;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SettingItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0155

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/SettingItemButton;

    iput-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mUnset:Lcom/android/settings/widget/SettingItemButton;

    .line 153
    iget-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mUnset:Lcom/android/settings/widget/SettingItemButton;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SettingItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a06a0

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mNoNotify:Landroid/view/View;

    .line 155
    iget-object p2, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mNoNotify:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->setupUI()V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 180
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 174
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->wifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
