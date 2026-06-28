.class public Lcom/android/settings/wifi/SoftApControllerFragment;
.super Lcom/android/settings/SettingsPreferenceFragment23;
.source "SoftApControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SoftApControllerFragment$Updater;,
        Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SoftApControllerFragment"

.field private static final UPDATE_DATA_USAGE:I = 0x1

.field private static final UPDATE_DATA_USAGE_INTERVAL_MS:I = 0x1388

.field private static final UPDATE_WIFIDEVICE_STATUS:I = 0x0

.field private static final UPDATE_WIFIDEVICE_STATUS_INTERVAL_MS:I = 0x3e8


# instance fields
.field private dataUsagePref:Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedDevicesCount:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataEnabled:Z

.field private mIsAccessibilityEnable:Z

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdater:Lcom/android/settings/wifi/SoftApControllerFragment$Updater;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private wifiApState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment23;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mPreferences:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mDataEnabled:Z

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mIsAccessibilityEnable:Z

    .line 234
    new-instance v0, Lcom/android/settings/wifi/SoftApControllerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SoftApControllerFragment$1;-><init>(Lcom/android/settings/wifi/SoftApControllerFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/SoftApControllerFragment;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mConnectedDevicesCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/SoftApControllerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mPreferences:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/SoftApControllerFragment;Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->constructWifiDevicePreference(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/SoftApControllerFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->wifiApState:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/SoftApControllerFragment;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->wifiApState:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/SoftApControllerFragment;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mDataEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/SoftApControllerFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->setDataUsageSummary()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/SoftApControllerFragment;ILandroid/net/wifi/WifiDevice;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/SoftApControllerFragment;->wifiTetherStateToString(ILandroid/net/wifi/WifiDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/SoftApControllerFragment;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mIsAccessibilityEnable:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/SoftApControllerFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->updateWifiDeviceSummary()V

    return-void
.end method

.method private constructWifiDevicePreference(Landroid/content/Context;)V
    .locals 9

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v2, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->dataUsagePref:Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    if-nez v2, :cond_0

    .line 145
    new-instance v2, Landroid/net/wifi/WifiDevice;

    invoke-direct {v2}, Landroid/net/wifi/WifiDevice;-><init>()V

    const v3, 0x7f1218e2

    .line 147
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    .line 148
    new-instance v3, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;-><init>(Lcom/android/settings/wifi/SoftApControllerFragment;Landroid/content/Context;Landroid/net/wifi/WifiDevice;)V

    iput-object v3, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->dataUsagePref:Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    .line 152
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MultiSDKAdapter;->getConfiguredStations(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v4, v3

    .line 156
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 157
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiDevice;

    .line 161
    new-instance v6, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    invoke-direct {v6, p0, p1, v5}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;-><init>(Lcom/android/settings/wifi/SoftApControllerFragment;Landroid/content/Context;Landroid/net/wifi/WifiDevice;)V

    .line 162
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MultiSDKAdapter;->getConnectedStations(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 169
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiDevice;

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    .line 175
    invoke-virtual {v6}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->getWifiDevice()Landroid/net/wifi/WifiDevice;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v8, v4, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    .line 176
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    invoke-virtual {v6, v4}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->update(Landroid/net/wifi/WifiDevice;)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    if-nez v5, :cond_2

    .line 183
    new-instance v5, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;-><init>(Lcom/android/settings/wifi/SoftApControllerFragment;Landroid/content/Context;Landroid/net/wifi/WifiDevice;)V

    .line 184
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SoftApControllerFragment"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 196
    iget-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->dataUsagePref:Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_6
    iput-object v1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mPreferences:Ljava/util/ArrayList;

    .line 202
    iget-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mPreferences:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->setWifiDevicePreferenceBackground(Ljava/util/ArrayList;)V

    .line 204
    iget-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_7
    return-void
.end method

.method private formatTimeShown(J)Ljava/lang/String;
    .locals 8

    .line 385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v0, 0xe10

    .line 387
    div-long v0, p1, v0

    const-wide/16 v2, 0x3c

    .line 388
    div-long v4, p1, v2

    rem-long/2addr v4, v2

    .line 389
    rem-long/2addr p1, v2

    const-wide/16 v2, 0xa

    cmp-long v6, v0, v2

    const-string v7, "0"

    if-ltz v6, :cond_0

    .line 391
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v1, v4, v2

    if-ltz v1, :cond_1

    .line 392
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    .line 393
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->wifiApState:I

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MultiSDKAdapter;->getConnectedStations(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mConnectedDevicesCount:I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 135
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mDataEnabled:Z

    :cond_2
    return-void
.end method

.method private registerStickyReceiver()V
    .locals 2

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setDataUsageSummary()V
    .locals 5

    .line 418
    iget v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->wifiApState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/Utils;->getStartUpDataUsage(Landroid/content/Context;)J

    move-result-wide v0

    .line 420
    iget-boolean v2, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mDataEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mConnectedDevicesCount:I

    if-eqz v2, :cond_0

    .line 421
    invoke-static {}, Lcom/android/settings/wifi/Utils;->getDataUsage()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    sub-long/2addr v2, v0

    .line 423
    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/SoftApControllerFragment;->updateDataUsageView(J)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wifi/Utils;->getLastDataUsage(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    sub-long/2addr v2, v0

    .line 430
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/SoftApControllerFragment;->updateDataUsageView(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setWifiDevicePreferenceBackground(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;",
            ">;)V"
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 271
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    if-nez v0, :cond_0

    const/4 v2, 0x2

    .line 273
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->setBackgroundId(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, p0, -0x1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x4

    .line 275
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->setBackgroundId(I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    .line 277
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->setBackgroundId(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private unregisterStickyReceiver()V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateDataUsageView(J)V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->dataUsagePref:Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1218d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 411
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateWifiDeviceSummary()V
    .locals 6

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 401
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    .line 402
    iget-object v4, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->dataUsagePref:Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 403
    invoke-virtual {v3}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->getWifiDevice()Landroid/net/wifi/WifiDevice;

    move-result-object v4

    .line 404
    iget v5, v4, Landroid/net/wifi/WifiDevice;->deviceState:I

    invoke-direct {p0, v5, v4}, Lcom/android/settings/wifi/SoftApControllerFragment;->wifiTetherStateToString(ILandroid/net/wifi/WifiDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private wifiTetherStateToString(ILandroid/net/wifi/WifiDevice;)Ljava/lang/String;
    .locals 7

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "blacklist"

    goto :goto_0

    :cond_1
    const p1, 0x7f1218de

    .line 365
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 366
    iget-wide v2, p2, Landroid/net/wifi/WifiDevice;->deviceSetupTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mIsAccessibilityEnable:Z

    if-nez v0, :cond_2

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p2, Landroid/net/wifi/WifiDevice;->deviceSetupTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    new-array p2, v1, [Ljava/lang/Object;

    .line 368
    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/SoftApControllerFragment;->formatTimeShown(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 370
    :cond_2
    iget-boolean p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mIsAccessibilityEnable:Z

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const-string p0, ":"

    .line 371
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 372
    aget-object p0, p0, v2

    goto :goto_0

    :cond_3
    move-object p0, p1

    goto :goto_0

    :cond_4
    const p0, 0x7f1218df

    .line 362
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mContext:Landroid/content/Context;

    const-string p1, "connectivity"

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string p1, "wifi"

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p1, "accessibility"

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2070032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x106000d

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 82
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 83
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setClipChildren(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f1217bb

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setHeight(I)V

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150056

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->addPreferencesFromResource(I)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->registerStickyReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 219
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onDestroy()V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->unregisterStickyReceiver()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onPause()V

    .line 212
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mUpdater:Lcom/android/settings/wifi/SoftApControllerFragment$Updater;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mIsAccessibilityEnable:Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/wifi/SoftApControllerFragment;->init()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SoftApControllerFragment;->constructWifiDevicePreference(Landroid/content/Context;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mUpdater:Lcom/android/settings/wifi/SoftApControllerFragment$Updater;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;-><init>(Lcom/android/settings/wifi/SoftApControllerFragment;Lcom/android/settings/wifi/SoftApControllerFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mUpdater:Lcom/android/settings/wifi/SoftApControllerFragment$Updater;

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment;->mUpdater:Lcom/android/settings/wifi/SoftApControllerFragment$Updater;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->resume()V

    return-void
.end method
